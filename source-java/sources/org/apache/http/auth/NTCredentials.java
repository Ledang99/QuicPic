package org.apache.http.auth;

import java.io.Serializable;
import java.security.Principal;
import java.util.Locale;
import org.apache.http.annotation.Immutable;
import org.apache.http.util.Args;
import org.apache.http.util.LangUtils;

@Immutable
/* loaded from: classes.dex */
public class NTCredentials implements Credentials, Serializable {
    private static final long serialVersionUID = -7385699315228907265L;
    private final String password;
    private final NTUserPrincipal principal;
    private final String workstation;

    public NTCredentials(String str) {
        String str2;
        Args.notNull(str, "Username:password string");
        int indexOf = str.indexOf(58);
        if (indexOf >= 0) {
            str2 = str.substring(0, indexOf);
            this.password = str.substring(indexOf + 1);
        } else {
            str2 = str;
            this.password = null;
        }
        int indexOf2 = str2.indexOf(47);
        if (indexOf2 >= 0) {
            this.principal = new NTUserPrincipal(str2.substring(0, indexOf2).toUpperCase(Locale.ROOT), str2.substring(indexOf2 + 1));
        } else {
            this.principal = new NTUserPrincipal(null, str2.substring(indexOf2 + 1));
        }
        this.workstation = null;
    }

    public NTCredentials(String str, String str2, String str3, String str4) {
        Args.notNull(str, "User name");
        this.principal = new NTUserPrincipal(str4, str);
        this.password = str2;
        if (str3 != null) {
            this.workstation = str3.toUpperCase(Locale.ROOT);
        } else {
            this.workstation = null;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NTCredentials)) {
            return false;
        }
        NTCredentials nTCredentials = (NTCredentials) obj;
        return LangUtils.equals(this.principal, nTCredentials.principal) && LangUtils.equals(this.workstation, nTCredentials.workstation);
    }

    public String getDomain() {
        return this.principal.getDomain();
    }

    @Override // org.apache.http.auth.Credentials
    public String getPassword() {
        return this.password;
    }

    public String getUserName() {
        return this.principal.getUsername();
    }

    @Override // org.apache.http.auth.Credentials
    public Principal getUserPrincipal() {
        return this.principal;
    }

    public String getWorkstation() {
        return this.workstation;
    }

    public int hashCode() {
        return LangUtils.hashCode(LangUtils.hashCode(17, this.principal), this.workstation);
    }

    public String toString() {
        return "[principal: " + this.principal + "][workstation: " + this.workstation + "]";
    }
}
