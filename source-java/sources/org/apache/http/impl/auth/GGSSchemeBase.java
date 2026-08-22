package org.apache.http.impl.auth;

import java.net.InetAddress;
import java.net.UnknownHostException;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.InvalidCredentialsException;
import org.apache.http.auth.KerberosCredentials;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.message.BufferedHeader;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;
import org.ietf.jgss.GSSContext;
import org.ietf.jgss.GSSException;
import org.ietf.jgss.GSSManager;
import org.ietf.jgss.GSSName;
import org.ietf.jgss.Oid;

@NotThreadSafe
/* loaded from: classes.dex */
public abstract class GGSSchemeBase extends AuthSchemeBase {
    private final Base64 base64codec;
    private final Log log;
    private State state;
    private final boolean stripPort;
    private byte[] token;
    private final boolean useCanonicalHostname;

    /* renamed from: org.apache.http.impl.auth.GGSSchemeBase$1 */
    static /* synthetic */ class C14661 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$http$impl$auth$GGSSchemeBase$State = new int[State.values().length];

        static {
            try {
                $SwitchMap$org$apache$http$impl$auth$GGSSchemeBase$State[State.UNINITIATED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$apache$http$impl$auth$GGSSchemeBase$State[State.FAILED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$org$apache$http$impl$auth$GGSSchemeBase$State[State.CHALLENGE_RECEIVED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$org$apache$http$impl$auth$GGSSchemeBase$State[State.TOKEN_GENERATED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    enum State {
        UNINITIATED,
        CHALLENGE_RECEIVED,
        TOKEN_GENERATED,
        FAILED
    }

    GGSSchemeBase() {
        this(true, true);
    }

    GGSSchemeBase(boolean z) {
        this(z, true);
    }

    GGSSchemeBase(boolean z, boolean z2) {
        this.log = LogFactory.getLog(getClass());
        this.base64codec = new Base64(0);
        this.stripPort = z;
        this.useCanonicalHostname = z2;
        this.state = State.UNINITIATED;
    }

    private String resolveCanonicalHostname(String str) throws UnknownHostException {
        InetAddress byName = InetAddress.getByName(str);
        String canonicalHostName = byName.getCanonicalHostName();
        return byName.getHostAddress().contentEquals(canonicalHostName) ? str : canonicalHostName;
    }

    @Override // org.apache.http.auth.AuthScheme
    @Deprecated
    public Header authenticate(Credentials credentials, HttpRequest httpRequest) throws AuthenticationException {
        return authenticate(credentials, httpRequest, null);
    }

    @Override // org.apache.http.impl.auth.AuthSchemeBase, org.apache.http.auth.ContextAwareAuthScheme
    public Header authenticate(Credentials credentials, HttpRequest httpRequest, HttpContext httpContext) throws AuthenticationException {
        HttpHost targetHost;
        String str;
        Args.notNull(httpRequest, "HTTP request");
        int i = C14661.$SwitchMap$org$apache$http$impl$auth$GGSSchemeBase$State[this.state.ordinal()];
        if (i == 1) {
            throw new AuthenticationException(getSchemeName() + " authentication has not been initiated");
        }
        if (i == 2) {
            throw new AuthenticationException(getSchemeName() + " authentication has failed");
        }
        if (i == 3) {
            try {
                HttpRoute httpRoute = (HttpRoute) httpContext.getAttribute("http.route");
                if (httpRoute == null) {
                    throw new AuthenticationException("Connection route is not available");
                }
                if (isProxy()) {
                    targetHost = httpRoute.getProxyHost();
                    if (targetHost == null) {
                        targetHost = httpRoute.getTargetHost();
                    }
                } else {
                    targetHost = httpRoute.getTargetHost();
                }
                String hostName = targetHost.getHostName();
                if (this.useCanonicalHostname) {
                    try {
                        hostName = resolveCanonicalHostname(hostName);
                    } catch (UnknownHostException e) {
                    }
                }
                if (this.stripPort) {
                    str = hostName;
                } else {
                    str = hostName + ":" + targetHost.getPort();
                }
                if (this.log.isDebugEnabled()) {
                    this.log.debug("init " + str);
                }
                this.token = generateToken(this.token, str, credentials);
                this.state = State.TOKEN_GENERATED;
            } catch (GSSException e2) {
                this.state = State.FAILED;
                if (e2.getMajor() == 9 || e2.getMajor() == 8) {
                    throw new InvalidCredentialsException(e2.getMessage(), e2);
                }
                if (e2.getMajor() == 13) {
                    throw new InvalidCredentialsException(e2.getMessage(), e2);
                }
                if (e2.getMajor() == 10 || e2.getMajor() == 19 || e2.getMajor() == 20) {
                    throw new AuthenticationException(e2.getMessage(), e2);
                }
                throw new AuthenticationException(e2.getMessage());
            }
        } else if (i != 4) {
            throw new IllegalStateException("Illegal state: " + this.state);
        }
        String str2 = new String(this.base64codec.encode(this.token));
        if (this.log.isDebugEnabled()) {
            this.log.debug("Sending response '" + str2 + "' back to the auth server");
        }
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(32);
        if (isProxy()) {
            charArrayBuffer.append("Proxy-Authorization");
        } else {
            charArrayBuffer.append("Authorization");
        }
        charArrayBuffer.append(": Negotiate ");
        charArrayBuffer.append(str2);
        return new BufferedHeader(charArrayBuffer);
    }

    protected byte[] generateGSSToken(byte[] bArr, Oid oid, String str) throws GSSException {
        return generateGSSToken(bArr, oid, str, null);
    }

    protected byte[] generateGSSToken(byte[] bArr, Oid oid, String str, Credentials credentials) throws GSSException {
        byte[] bArr2 = bArr;
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        GSSManager manager = getManager();
        GSSContext createContext = manager.createContext(manager.createName("HTTP@" + str, GSSName.NT_HOSTBASED_SERVICE).canonicalize(oid), oid, credentials instanceof KerberosCredentials ? ((KerberosCredentials) credentials).getGSSCredential() : null, 0);
        createContext.requestMutualAuth(true);
        createContext.requestCredDeleg(true);
        return createContext.initSecContext(bArr2, 0, bArr2.length);
    }

    @Deprecated
    protected byte[] generateToken(byte[] bArr, String str) throws GSSException {
        return null;
    }

    protected byte[] generateToken(byte[] bArr, String str, Credentials credentials) throws GSSException {
        return generateToken(bArr, str);
    }

    protected GSSManager getManager() {
        return GSSManager.getInstance();
    }

    @Override // org.apache.http.auth.AuthScheme
    public boolean isComplete() {
        return this.state == State.TOKEN_GENERATED || this.state == State.FAILED;
    }

    @Override // org.apache.http.impl.auth.AuthSchemeBase
    protected void parseChallenge(CharArrayBuffer charArrayBuffer, int i, int i2) throws MalformedChallengeException {
        String substringTrimmed = charArrayBuffer.substringTrimmed(i, i2);
        if (this.log.isDebugEnabled()) {
            this.log.debug("Received challenge '" + substringTrimmed + "' from the auth server");
        }
        if (this.state == State.UNINITIATED) {
            this.token = Base64.decodeBase64(substringTrimmed.getBytes());
            this.state = State.CHALLENGE_RECEIVED;
        } else {
            this.log.debug("Authentication already attempted");
            this.state = State.FAILED;
        }
    }
}
