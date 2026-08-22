package org.apache.http.impl.auth;

import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.security.Key;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Locale;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;
import org.apache.http.Consts;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.util.CharsetUtils;
import org.apache.http.util.EncodingUtils;

@NotThreadSafe
/* loaded from: classes.dex */
final class NTLMEngineImpl implements NTLMEngine {
    protected static final int FLAG_DOMAIN_PRESENT = 4096;
    protected static final int FLAG_REQUEST_128BIT_KEY_EXCH = 536870912;
    protected static final int FLAG_REQUEST_56BIT_ENCRYPTION = Integer.MIN_VALUE;
    protected static final int FLAG_REQUEST_ALWAYS_SIGN = 32768;
    protected static final int FLAG_REQUEST_EXPLICIT_KEY_EXCH = 1073741824;
    protected static final int FLAG_REQUEST_LAN_MANAGER_KEY = 128;
    protected static final int FLAG_REQUEST_NTLM2_SESSION = 524288;
    protected static final int FLAG_REQUEST_NTLMv1 = 512;
    protected static final int FLAG_REQUEST_SEAL = 32;
    protected static final int FLAG_REQUEST_SIGN = 16;
    protected static final int FLAG_REQUEST_TARGET = 4;
    protected static final int FLAG_REQUEST_UNICODE_ENCODING = 1;
    protected static final int FLAG_REQUEST_VERSION = 33554432;
    protected static final int FLAG_TARGETINFO_PRESENT = 8388608;
    protected static final int FLAG_WORKSTATION_PRESENT = 8192;
    private static final SecureRandom RND_GEN;
    private static final byte[] SIGNATURE;
    private static final Type1Message TYPE_1_MESSAGE;
    private static final Charset UNICODE_LITTLE_UNMARKED = CharsetUtils.lookup("UnicodeLittleUnmarked");
    private static final Charset DEFAULT_CHARSET = Consts.ASCII;

    protected static class CipherGen {
        protected final byte[] challenge;
        protected byte[] clientChallenge;
        protected byte[] clientChallenge2;
        protected final String domain;
        protected byte[] lanManagerSessionKey;
        protected byte[] lm2SessionResponse;
        protected byte[] lmHash;
        protected byte[] lmResponse;
        protected byte[] lmUserSessionKey;
        protected byte[] lmv2Hash;
        protected byte[] lmv2Response;
        protected byte[] ntlm2SessionResponse;
        protected byte[] ntlm2SessionResponseUserSessionKey;
        protected byte[] ntlmHash;
        protected byte[] ntlmResponse;
        protected byte[] ntlmUserSessionKey;
        protected byte[] ntlmv2Blob;
        protected byte[] ntlmv2Hash;
        protected byte[] ntlmv2Response;
        protected byte[] ntlmv2UserSessionKey;
        protected final String password;
        protected byte[] secondaryKey;
        protected final String target;
        protected final byte[] targetInformation;
        protected byte[] timestamp;
        protected final String user;

        public CipherGen(String str, String str2, String str3, byte[] bArr, String str4, byte[] bArr2) {
            this(str, str2, str3, bArr, str4, bArr2, null, null, null, null);
        }

        public CipherGen(String str, String str2, String str3, byte[] bArr, String str4, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6) {
            this.lmHash = null;
            this.lmResponse = null;
            this.ntlmHash = null;
            this.ntlmResponse = null;
            this.ntlmv2Hash = null;
            this.lmv2Hash = null;
            this.lmv2Response = null;
            this.ntlmv2Blob = null;
            this.ntlmv2Response = null;
            this.ntlm2SessionResponse = null;
            this.lm2SessionResponse = null;
            this.lmUserSessionKey = null;
            this.ntlmUserSessionKey = null;
            this.ntlmv2UserSessionKey = null;
            this.ntlm2SessionResponseUserSessionKey = null;
            this.lanManagerSessionKey = null;
            this.domain = str;
            this.target = str4;
            this.user = str2;
            this.password = str3;
            this.challenge = bArr;
            this.targetInformation = bArr2;
            this.clientChallenge = bArr3;
            this.clientChallenge2 = bArr4;
            this.secondaryKey = bArr5;
            this.timestamp = bArr6;
        }

        public byte[] getClientChallenge() throws NTLMEngineException {
            if (this.clientChallenge == null) {
                this.clientChallenge = NTLMEngineImpl.makeRandomChallenge();
            }
            return this.clientChallenge;
        }

        public byte[] getClientChallenge2() throws NTLMEngineException {
            if (this.clientChallenge2 == null) {
                this.clientChallenge2 = NTLMEngineImpl.makeRandomChallenge();
            }
            return this.clientChallenge2;
        }

        public byte[] getLM2SessionResponse() throws NTLMEngineException {
            if (this.lm2SessionResponse == null) {
                byte[] clientChallenge = getClientChallenge();
                this.lm2SessionResponse = new byte[24];
                System.arraycopy(clientChallenge, 0, this.lm2SessionResponse, 0, clientChallenge.length);
                byte[] bArr = this.lm2SessionResponse;
                Arrays.fill(bArr, clientChallenge.length, bArr.length, (byte) 0);
            }
            return this.lm2SessionResponse;
        }

        public byte[] getLMHash() throws NTLMEngineException {
            if (this.lmHash == null) {
                this.lmHash = NTLMEngineImpl.lmHash(this.password);
            }
            return this.lmHash;
        }

        public byte[] getLMResponse() throws NTLMEngineException {
            if (this.lmResponse == null) {
                this.lmResponse = NTLMEngineImpl.lmResponse(getLMHash(), this.challenge);
            }
            return this.lmResponse;
        }

        public byte[] getLMUserSessionKey() throws NTLMEngineException {
            if (this.lmUserSessionKey == null) {
                this.lmUserSessionKey = new byte[NTLMEngineImpl.FLAG_REQUEST_SIGN];
                System.arraycopy(getLMHash(), 0, this.lmUserSessionKey, 0, 8);
                Arrays.fill(this.lmUserSessionKey, 8, NTLMEngineImpl.FLAG_REQUEST_SIGN, (byte) 0);
            }
            return this.lmUserSessionKey;
        }

        public byte[] getLMv2Hash() throws NTLMEngineException {
            if (this.lmv2Hash == null) {
                this.lmv2Hash = NTLMEngineImpl.lmv2Hash(this.domain, this.user, getNTLMHash());
            }
            return this.lmv2Hash;
        }

        public byte[] getLMv2Response() throws NTLMEngineException {
            if (this.lmv2Response == null) {
                this.lmv2Response = NTLMEngineImpl.lmv2Response(getLMv2Hash(), this.challenge, getClientChallenge());
            }
            return this.lmv2Response;
        }

        public byte[] getLanManagerSessionKey() throws NTLMEngineException {
            if (this.lanManagerSessionKey == null) {
                try {
                    byte[] bArr = new byte[14];
                    System.arraycopy(getLMHash(), 0, bArr, 0, 8);
                    Arrays.fill(bArr, 8, bArr.length, (byte) -67);
                    Key createDESKey = NTLMEngineImpl.createDESKey(bArr, 0);
                    Key createDESKey2 = NTLMEngineImpl.createDESKey(bArr, 7);
                    byte[] bArr2 = new byte[8];
                    System.arraycopy(getLMResponse(), 0, bArr2, 0, bArr2.length);
                    Cipher cipher = Cipher.getInstance("DES/ECB/NoPadding");
                    cipher.init(1, createDESKey);
                    byte[] doFinal = cipher.doFinal(bArr2);
                    Cipher cipher2 = Cipher.getInstance("DES/ECB/NoPadding");
                    cipher2.init(1, createDESKey2);
                    byte[] doFinal2 = cipher2.doFinal(bArr2);
                    this.lanManagerSessionKey = new byte[NTLMEngineImpl.FLAG_REQUEST_SIGN];
                    System.arraycopy(doFinal, 0, this.lanManagerSessionKey, 0, doFinal.length);
                    System.arraycopy(doFinal2, 0, this.lanManagerSessionKey, doFinal.length, doFinal2.length);
                } catch (Exception e) {
                    throw new NTLMEngineException(e.getMessage(), e);
                }
            }
            return this.lanManagerSessionKey;
        }

        public byte[] getNTLM2SessionResponse() throws NTLMEngineException {
            if (this.ntlm2SessionResponse == null) {
                this.ntlm2SessionResponse = NTLMEngineImpl.ntlm2SessionResponse(getNTLMHash(), this.challenge, getClientChallenge());
            }
            return this.ntlm2SessionResponse;
        }

        public byte[] getNTLM2SessionResponseUserSessionKey() throws NTLMEngineException {
            if (this.ntlm2SessionResponseUserSessionKey == null) {
                byte[] lM2SessionResponse = getLM2SessionResponse();
                byte[] bArr = this.challenge;
                byte[] bArr2 = new byte[bArr.length + lM2SessionResponse.length];
                System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                System.arraycopy(lM2SessionResponse, 0, bArr2, this.challenge.length, lM2SessionResponse.length);
                this.ntlm2SessionResponseUserSessionKey = NTLMEngineImpl.hmacMD5(bArr2, getNTLMUserSessionKey());
            }
            return this.ntlm2SessionResponseUserSessionKey;
        }

        public byte[] getNTLMHash() throws NTLMEngineException {
            if (this.ntlmHash == null) {
                this.ntlmHash = NTLMEngineImpl.ntlmHash(this.password);
            }
            return this.ntlmHash;
        }

        public byte[] getNTLMResponse() throws NTLMEngineException {
            if (this.ntlmResponse == null) {
                this.ntlmResponse = NTLMEngineImpl.lmResponse(getNTLMHash(), this.challenge);
            }
            return this.ntlmResponse;
        }

        public byte[] getNTLMUserSessionKey() throws NTLMEngineException {
            if (this.ntlmUserSessionKey == null) {
                MD4 md4 = new MD4();
                md4.update(getNTLMHash());
                this.ntlmUserSessionKey = md4.getOutput();
            }
            return this.ntlmUserSessionKey;
        }

        public byte[] getNTLMv2Blob() throws NTLMEngineException {
            if (this.ntlmv2Blob == null) {
                this.ntlmv2Blob = NTLMEngineImpl.createBlob(getClientChallenge2(), this.targetInformation, getTimestamp());
            }
            return this.ntlmv2Blob;
        }

        public byte[] getNTLMv2Hash() throws NTLMEngineException {
            if (this.ntlmv2Hash == null) {
                this.ntlmv2Hash = NTLMEngineImpl.ntlmv2Hash(this.domain, this.user, getNTLMHash());
            }
            return this.ntlmv2Hash;
        }

        public byte[] getNTLMv2Response() throws NTLMEngineException {
            if (this.ntlmv2Response == null) {
                this.ntlmv2Response = NTLMEngineImpl.lmv2Response(getNTLMv2Hash(), this.challenge, getNTLMv2Blob());
            }
            return this.ntlmv2Response;
        }

        public byte[] getNTLMv2UserSessionKey() throws NTLMEngineException {
            if (this.ntlmv2UserSessionKey == null) {
                byte[] nTLMv2Hash = getNTLMv2Hash();
                byte[] bArr = new byte[NTLMEngineImpl.FLAG_REQUEST_SIGN];
                System.arraycopy(getNTLMv2Response(), 0, bArr, 0, NTLMEngineImpl.FLAG_REQUEST_SIGN);
                this.ntlmv2UserSessionKey = NTLMEngineImpl.hmacMD5(bArr, nTLMv2Hash);
            }
            return this.ntlmv2UserSessionKey;
        }

        public byte[] getSecondaryKey() throws NTLMEngineException {
            if (this.secondaryKey == null) {
                this.secondaryKey = NTLMEngineImpl.makeSecondaryKey();
            }
            return this.secondaryKey;
        }

        public byte[] getTimestamp() {
            if (this.timestamp == null) {
                long currentTimeMillis = (System.currentTimeMillis() + 11644473600000L) * 10000;
                this.timestamp = new byte[8];
                for (int i = 0; i < 8; i++) {
                    this.timestamp[i] = (byte) currentTimeMillis;
                    currentTimeMillis >>>= 8;
                }
            }
            return this.timestamp;
        }
    }

    static class HMACMD5 {
        protected byte[] ipad;
        protected MessageDigest md5;
        protected byte[] opad;

        HMACMD5(byte[] bArr) throws NTLMEngineException {
            byte[] bArr2 = bArr;
            try {
                this.md5 = MessageDigest.getInstance(MessageDigestAlgorithms.MD5);
                this.ipad = new byte[64];
                this.opad = new byte[64];
                int length = bArr2.length;
                if (length > 64) {
                    this.md5.update(bArr2);
                    bArr2 = this.md5.digest();
                    length = bArr2.length;
                }
                int i = 0;
                while (i < length) {
                    this.ipad[i] = (byte) (54 ^ bArr2[i]);
                    this.opad[i] = (byte) (92 ^ bArr2[i]);
                    i++;
                }
                while (i < 64) {
                    this.ipad[i] = 54;
                    this.opad[i] = 92;
                    i++;
                }
                this.md5.reset();
                this.md5.update(this.ipad);
            } catch (Exception e) {
                throw new NTLMEngineException("Error getting md5 message digest implementation: " + e.getMessage(), e);
            }
        }

        byte[] getOutput() {
            byte[] digest = this.md5.digest();
            this.md5.update(this.opad);
            return this.md5.digest(digest);
        }

        void update(byte[] bArr) {
            this.md5.update(bArr);
        }

        void update(byte[] bArr, int i, int i2) {
            this.md5.update(bArr, i, i2);
        }
    }

    static class MD4 {

        /* renamed from: A */
        protected int f5027A = 1732584193;

        /* renamed from: B */
        protected int f5028B = -271733879;

        /* renamed from: C */
        protected int f5029C = -1732584194;

        /* renamed from: D */
        protected int f5030D = 271733878;
        protected long count = 0;
        protected byte[] dataBuffer = new byte[64];

        MD4() {
        }

        byte[] getOutput() {
            int i = (int) (this.count & 63);
            int i2 = i < 56 ? 56 - i : 120 - i;
            byte[] bArr = new byte[i2 + 8];
            bArr[0] = Byte.MIN_VALUE;
            for (int i3 = 0; i3 < 8; i3++) {
                bArr[i2 + i3] = (byte) ((this.count * 8) >>> (i3 * 8));
            }
            update(bArr);
            byte[] bArr2 = new byte[NTLMEngineImpl.FLAG_REQUEST_SIGN];
            NTLMEngineImpl.writeULong(bArr2, this.f5027A, 0);
            NTLMEngineImpl.writeULong(bArr2, this.f5028B, 4);
            NTLMEngineImpl.writeULong(bArr2, this.f5029C, 8);
            NTLMEngineImpl.writeULong(bArr2, this.f5030D, 12);
            return bArr2;
        }

        protected void processBuffer() {
            int[] iArr = new int[NTLMEngineImpl.FLAG_REQUEST_SIGN];
            for (int i = 0; i < NTLMEngineImpl.FLAG_REQUEST_SIGN; i++) {
                byte[] bArr = this.dataBuffer;
                iArr[i] = (bArr[i * 4] & 255) + ((bArr[(i * 4) + 1] & 255) << 8) + ((bArr[(i * 4) + 2] & 255) << NTLMEngineImpl.FLAG_REQUEST_SIGN) + ((bArr[(i * 4) + 3] & 255) << 24);
            }
            int i2 = this.f5027A;
            int i3 = this.f5028B;
            int i4 = this.f5029C;
            int i5 = this.f5030D;
            round1(iArr);
            round2(iArr);
            round3(iArr);
            this.f5027A += i2;
            this.f5028B += i3;
            this.f5029C += i4;
            this.f5030D += i5;
        }

        protected void round1(int[] iArr) {
            this.f5027A = NTLMEngineImpl.rotintlft(this.f5027A + NTLMEngineImpl.m4629F(this.f5028B, this.f5029C, this.f5030D) + iArr[0], 3);
            this.f5030D = NTLMEngineImpl.rotintlft(this.f5030D + NTLMEngineImpl.m4629F(this.f5027A, this.f5028B, this.f5029C) + iArr[1], 7);
            this.f5029C = NTLMEngineImpl.rotintlft(this.f5029C + NTLMEngineImpl.m4629F(this.f5030D, this.f5027A, this.f5028B) + iArr[2], 11);
            this.f5028B = NTLMEngineImpl.rotintlft(this.f5028B + NTLMEngineImpl.m4629F(this.f5029C, this.f5030D, this.f5027A) + iArr[3], 19);
            this.f5027A = NTLMEngineImpl.rotintlft(this.f5027A + NTLMEngineImpl.m4629F(this.f5028B, this.f5029C, this.f5030D) + iArr[4], 3);
            this.f5030D = NTLMEngineImpl.rotintlft(this.f5030D + NTLMEngineImpl.m4629F(this.f5027A, this.f5028B, this.f5029C) + iArr[5], 7);
            this.f5029C = NTLMEngineImpl.rotintlft(this.f5029C + NTLMEngineImpl.m4629F(this.f5030D, this.f5027A, this.f5028B) + iArr[6], 11);
            this.f5028B = NTLMEngineImpl.rotintlft(this.f5028B + NTLMEngineImpl.m4629F(this.f5029C, this.f5030D, this.f5027A) + iArr[7], 19);
            this.f5027A = NTLMEngineImpl.rotintlft(this.f5027A + NTLMEngineImpl.m4629F(this.f5028B, this.f5029C, this.f5030D) + iArr[8], 3);
            this.f5030D = NTLMEngineImpl.rotintlft(this.f5030D + NTLMEngineImpl.m4629F(this.f5027A, this.f5028B, this.f5029C) + iArr[9], 7);
            this.f5029C = NTLMEngineImpl.rotintlft(this.f5029C + NTLMEngineImpl.m4629F(this.f5030D, this.f5027A, this.f5028B) + iArr[10], 11);
            this.f5028B = NTLMEngineImpl.rotintlft(this.f5028B + NTLMEngineImpl.m4629F(this.f5029C, this.f5030D, this.f5027A) + iArr[11], 19);
            this.f5027A = NTLMEngineImpl.rotintlft(this.f5027A + NTLMEngineImpl.m4629F(this.f5028B, this.f5029C, this.f5030D) + iArr[12], 3);
            this.f5030D = NTLMEngineImpl.rotintlft(this.f5030D + NTLMEngineImpl.m4629F(this.f5027A, this.f5028B, this.f5029C) + iArr[13], 7);
            this.f5029C = NTLMEngineImpl.rotintlft(this.f5029C + NTLMEngineImpl.m4629F(this.f5030D, this.f5027A, this.f5028B) + iArr[14], 11);
            this.f5028B = NTLMEngineImpl.rotintlft(this.f5028B + NTLMEngineImpl.m4629F(this.f5029C, this.f5030D, this.f5027A) + iArr[15], 19);
        }

        protected void round2(int[] iArr) {
            this.f5027A = NTLMEngineImpl.rotintlft(this.f5027A + NTLMEngineImpl.m4630G(this.f5028B, this.f5029C, this.f5030D) + iArr[0] + 1518500249, 3);
            this.f5030D = NTLMEngineImpl.rotintlft(this.f5030D + NTLMEngineImpl.m4630G(this.f5027A, this.f5028B, this.f5029C) + iArr[4] + 1518500249, 5);
            this.f5029C = NTLMEngineImpl.rotintlft(this.f5029C + NTLMEngineImpl.m4630G(this.f5030D, this.f5027A, this.f5028B) + iArr[8] + 1518500249, 9);
            this.f5028B = NTLMEngineImpl.rotintlft(this.f5028B + NTLMEngineImpl.m4630G(this.f5029C, this.f5030D, this.f5027A) + iArr[12] + 1518500249, 13);
            this.f5027A = NTLMEngineImpl.rotintlft(this.f5027A + NTLMEngineImpl.m4630G(this.f5028B, this.f5029C, this.f5030D) + iArr[1] + 1518500249, 3);
            this.f5030D = NTLMEngineImpl.rotintlft(this.f5030D + NTLMEngineImpl.m4630G(this.f5027A, this.f5028B, this.f5029C) + iArr[5] + 1518500249, 5);
            this.f5029C = NTLMEngineImpl.rotintlft(this.f5029C + NTLMEngineImpl.m4630G(this.f5030D, this.f5027A, this.f5028B) + iArr[9] + 1518500249, 9);
            this.f5028B = NTLMEngineImpl.rotintlft(this.f5028B + NTLMEngineImpl.m4630G(this.f5029C, this.f5030D, this.f5027A) + iArr[13] + 1518500249, 13);
            this.f5027A = NTLMEngineImpl.rotintlft(this.f5027A + NTLMEngineImpl.m4630G(this.f5028B, this.f5029C, this.f5030D) + iArr[2] + 1518500249, 3);
            this.f5030D = NTLMEngineImpl.rotintlft(this.f5030D + NTLMEngineImpl.m4630G(this.f5027A, this.f5028B, this.f5029C) + iArr[6] + 1518500249, 5);
            this.f5029C = NTLMEngineImpl.rotintlft(this.f5029C + NTLMEngineImpl.m4630G(this.f5030D, this.f5027A, this.f5028B) + iArr[10] + 1518500249, 9);
            this.f5028B = NTLMEngineImpl.rotintlft(this.f5028B + NTLMEngineImpl.m4630G(this.f5029C, this.f5030D, this.f5027A) + iArr[14] + 1518500249, 13);
            this.f5027A = NTLMEngineImpl.rotintlft(this.f5027A + NTLMEngineImpl.m4630G(this.f5028B, this.f5029C, this.f5030D) + iArr[3] + 1518500249, 3);
            this.f5030D = NTLMEngineImpl.rotintlft(this.f5030D + NTLMEngineImpl.m4630G(this.f5027A, this.f5028B, this.f5029C) + iArr[7] + 1518500249, 5);
            this.f5029C = NTLMEngineImpl.rotintlft(this.f5029C + NTLMEngineImpl.m4630G(this.f5030D, this.f5027A, this.f5028B) + iArr[11] + 1518500249, 9);
            this.f5028B = NTLMEngineImpl.rotintlft(this.f5028B + NTLMEngineImpl.m4630G(this.f5029C, this.f5030D, this.f5027A) + iArr[15] + 1518500249, 13);
        }

        protected void round3(int[] iArr) {
            this.f5027A = NTLMEngineImpl.rotintlft(this.f5027A + NTLMEngineImpl.m4631H(this.f5028B, this.f5029C, this.f5030D) + iArr[0] + 1859775393, 3);
            this.f5030D = NTLMEngineImpl.rotintlft(this.f5030D + NTLMEngineImpl.m4631H(this.f5027A, this.f5028B, this.f5029C) + iArr[8] + 1859775393, 9);
            this.f5029C = NTLMEngineImpl.rotintlft(this.f5029C + NTLMEngineImpl.m4631H(this.f5030D, this.f5027A, this.f5028B) + iArr[4] + 1859775393, 11);
            this.f5028B = NTLMEngineImpl.rotintlft(this.f5028B + NTLMEngineImpl.m4631H(this.f5029C, this.f5030D, this.f5027A) + iArr[12] + 1859775393, 15);
            this.f5027A = NTLMEngineImpl.rotintlft(this.f5027A + NTLMEngineImpl.m4631H(this.f5028B, this.f5029C, this.f5030D) + iArr[2] + 1859775393, 3);
            this.f5030D = NTLMEngineImpl.rotintlft(this.f5030D + NTLMEngineImpl.m4631H(this.f5027A, this.f5028B, this.f5029C) + iArr[10] + 1859775393, 9);
            this.f5029C = NTLMEngineImpl.rotintlft(this.f5029C + NTLMEngineImpl.m4631H(this.f5030D, this.f5027A, this.f5028B) + iArr[6] + 1859775393, 11);
            this.f5028B = NTLMEngineImpl.rotintlft(this.f5028B + NTLMEngineImpl.m4631H(this.f5029C, this.f5030D, this.f5027A) + iArr[14] + 1859775393, 15);
            this.f5027A = NTLMEngineImpl.rotintlft(this.f5027A + NTLMEngineImpl.m4631H(this.f5028B, this.f5029C, this.f5030D) + iArr[1] + 1859775393, 3);
            this.f5030D = NTLMEngineImpl.rotintlft(this.f5030D + NTLMEngineImpl.m4631H(this.f5027A, this.f5028B, this.f5029C) + iArr[9] + 1859775393, 9);
            this.f5029C = NTLMEngineImpl.rotintlft(this.f5029C + NTLMEngineImpl.m4631H(this.f5030D, this.f5027A, this.f5028B) + iArr[5] + 1859775393, 11);
            this.f5028B = NTLMEngineImpl.rotintlft(this.f5028B + NTLMEngineImpl.m4631H(this.f5029C, this.f5030D, this.f5027A) + iArr[13] + 1859775393, 15);
            this.f5027A = NTLMEngineImpl.rotintlft(this.f5027A + NTLMEngineImpl.m4631H(this.f5028B, this.f5029C, this.f5030D) + iArr[3] + 1859775393, 3);
            this.f5030D = NTLMEngineImpl.rotintlft(this.f5030D + NTLMEngineImpl.m4631H(this.f5027A, this.f5028B, this.f5029C) + iArr[11] + 1859775393, 9);
            this.f5029C = NTLMEngineImpl.rotintlft(this.f5029C + NTLMEngineImpl.m4631H(this.f5030D, this.f5027A, this.f5028B) + iArr[7] + 1859775393, 11);
            this.f5028B = NTLMEngineImpl.rotintlft(this.f5028B + NTLMEngineImpl.m4631H(this.f5029C, this.f5030D, this.f5027A) + iArr[15] + 1859775393, 15);
        }

        void update(byte[] bArr) {
            byte[] bArr2;
            int i = (int) (this.count & 63);
            int i2 = 0;
            while (true) {
                int length = (bArr.length - i2) + i;
                bArr2 = this.dataBuffer;
                if (length < bArr2.length) {
                    break;
                }
                int length2 = bArr2.length - i;
                System.arraycopy(bArr, i2, bArr2, i, length2);
                this.count += length2;
                i = 0;
                i2 += length2;
                processBuffer();
            }
            if (i2 < bArr.length) {
                int length3 = bArr.length - i2;
                System.arraycopy(bArr, i2, bArr2, i, length3);
                this.count += length3;
                int i3 = i + length3;
            }
        }
    }

    static class NTLMMessage {
        private int currentOutputPosition;
        private byte[] messageContents;

        NTLMMessage() {
            this.messageContents = null;
            this.currentOutputPosition = 0;
        }

        NTLMMessage(String str, int i) throws NTLMEngineException {
            this.messageContents = null;
            this.currentOutputPosition = 0;
            this.messageContents = Base64.decodeBase64(str.getBytes(NTLMEngineImpl.DEFAULT_CHARSET));
            if (this.messageContents.length < NTLMEngineImpl.SIGNATURE.length) {
                throw new NTLMEngineException("NTLM message decoding error - packet too short");
            }
            for (int i2 = 0; i2 < NTLMEngineImpl.SIGNATURE.length; i2++) {
                if (this.messageContents[i2] != NTLMEngineImpl.SIGNATURE[i2]) {
                    throw new NTLMEngineException("NTLM message expected - instead got unrecognized bytes");
                }
            }
            int readULong = readULong(NTLMEngineImpl.SIGNATURE.length);
            if (readULong == i) {
                this.currentOutputPosition = this.messageContents.length;
                return;
            }
            throw new NTLMEngineException("NTLM type " + Integer.toString(i) + " message expected - instead got type " + Integer.toString(readULong));
        }

        protected void addByte(byte b2) {
            byte[] bArr = this.messageContents;
            int i = this.currentOutputPosition;
            bArr[i] = b2;
            this.currentOutputPosition = i + 1;
        }

        protected void addBytes(byte[] bArr) {
            if (bArr == null) {
                return;
            }
            for (byte b2 : bArr) {
                byte[] bArr2 = this.messageContents;
                int i = this.currentOutputPosition;
                bArr2[i] = b2;
                this.currentOutputPosition = i + 1;
            }
        }

        protected void addULong(int i) {
            addByte((byte) (i & 255));
            addByte((byte) ((i >> 8) & 255));
            addByte((byte) ((i >> NTLMEngineImpl.FLAG_REQUEST_SIGN) & 255));
            addByte((byte) ((i >> 24) & 255));
        }

        protected void addUShort(int i) {
            addByte((byte) (i & 255));
            addByte((byte) ((i >> 8) & 255));
        }

        protected int getMessageLength() {
            return this.currentOutputPosition;
        }

        protected int getPreambleLength() {
            return NTLMEngineImpl.SIGNATURE.length + 4;
        }

        String getResponse() {
            byte[] bArr;
            byte[] bArr2 = this.messageContents;
            int length = bArr2.length;
            int i = this.currentOutputPosition;
            if (length > i) {
                byte[] bArr3 = new byte[i];
                System.arraycopy(bArr2, 0, bArr3, 0, i);
                bArr = bArr3;
            } else {
                bArr = this.messageContents;
            }
            return EncodingUtils.getAsciiString(Base64.encodeBase64(bArr));
        }

        protected void prepareResponse(int i, int i2) {
            this.messageContents = new byte[i];
            this.currentOutputPosition = 0;
            addBytes(NTLMEngineImpl.SIGNATURE);
            addULong(i2);
        }

        protected byte readByte(int i) throws NTLMEngineException {
            byte[] bArr = this.messageContents;
            if (bArr.length >= i + 1) {
                return bArr[i];
            }
            throw new NTLMEngineException("NTLM: Message too short");
        }

        protected void readBytes(byte[] bArr, int i) throws NTLMEngineException {
            byte[] bArr2 = this.messageContents;
            if (bArr2.length < bArr.length + i) {
                throw new NTLMEngineException("NTLM: Message too short");
            }
            System.arraycopy(bArr2, i, bArr, 0, bArr.length);
        }

        protected byte[] readSecurityBuffer(int i) throws NTLMEngineException {
            return NTLMEngineImpl.readSecurityBuffer(this.messageContents, i);
        }

        protected int readULong(int i) throws NTLMEngineException {
            return NTLMEngineImpl.readULong(this.messageContents, i);
        }

        protected int readUShort(int i) throws NTLMEngineException {
            return NTLMEngineImpl.readUShort(this.messageContents, i);
        }
    }

    static class Type1Message extends NTLMMessage {
        private final byte[] domainBytes;
        private final byte[] hostBytes;

        Type1Message() {
            this.hostBytes = null;
            this.domainBytes = null;
        }

        Type1Message(String str, String str2) throws NTLMEngineException {
            if (NTLMEngineImpl.UNICODE_LITTLE_UNMARKED == null) {
                throw new NTLMEngineException("Unicode not supported");
            }
            String convertHost = NTLMEngineImpl.convertHost(str2);
            String convertDomain = NTLMEngineImpl.convertDomain(str);
            this.hostBytes = convertHost != null ? convertHost.getBytes(NTLMEngineImpl.UNICODE_LITTLE_UNMARKED) : null;
            this.domainBytes = convertDomain != null ? convertDomain.toUpperCase(Locale.ROOT).getBytes(NTLMEngineImpl.UNICODE_LITTLE_UNMARKED) : null;
        }

        @Override // org.apache.http.impl.auth.NTLMEngineImpl.NTLMMessage
        String getResponse() {
            prepareResponse(40, 1);
            addULong(-1576500735);
            addUShort(0);
            addUShort(0);
            addULong(40);
            addUShort(0);
            addUShort(0);
            addULong(40);
            addUShort(261);
            addULong(2600);
            addUShort(3840);
            byte[] bArr = this.hostBytes;
            if (bArr != null) {
                addBytes(bArr);
            }
            byte[] bArr2 = this.domainBytes;
            if (bArr2 != null) {
                addBytes(bArr2);
            }
            return super.getResponse();
        }
    }

    static class Type2Message extends NTLMMessage {
        protected byte[] challenge;
        protected int flags;
        protected String target;
        protected byte[] targetInfo;

        Type2Message(String str) throws NTLMEngineException {
            super(str, 2);
            this.challenge = new byte[8];
            readBytes(this.challenge, 24);
            this.flags = readULong(20);
            if ((this.flags & 1) == 0) {
                throw new NTLMEngineException("NTLM type 2 message indicates no support for Unicode. Flags are: " + Integer.toString(this.flags));
            }
            this.target = null;
            if (getMessageLength() >= 20) {
                byte[] readSecurityBuffer = readSecurityBuffer(12);
                if (readSecurityBuffer.length != 0) {
                    try {
                        this.target = new String(readSecurityBuffer, "UnicodeLittleUnmarked");
                    } catch (UnsupportedEncodingException e) {
                        throw new NTLMEngineException(e.getMessage(), e);
                    }
                }
            }
            this.targetInfo = null;
            if (getMessageLength() >= 48) {
                byte[] readSecurityBuffer2 = readSecurityBuffer(40);
                if (readSecurityBuffer2.length != 0) {
                    this.targetInfo = readSecurityBuffer2;
                }
            }
        }

        byte[] getChallenge() {
            return this.challenge;
        }

        int getFlags() {
            return this.flags;
        }

        String getTarget() {
            return this.target;
        }

        byte[] getTargetInfo() {
            return this.targetInfo;
        }
    }

    static class Type3Message extends NTLMMessage {
        protected byte[] domainBytes;
        protected byte[] hostBytes;
        protected byte[] lmResp;
        protected byte[] ntResp;
        protected byte[] sessionKey;
        protected int type2Flags;
        protected byte[] userBytes;

        Type3Message(String str, String str2, String str3, String str4, byte[] bArr, int i, String str5, byte[] bArr2) throws NTLMEngineException {
            byte[] lanManagerSessionKey;
            this.type2Flags = i;
            String convertHost = NTLMEngineImpl.convertHost(str2);
            String convertDomain = NTLMEngineImpl.convertDomain(str);
            CipherGen cipherGen = new CipherGen(convertDomain, str3, str4, bArr, str5, bArr2);
            try {
                if ((NTLMEngineImpl.FLAG_TARGETINFO_PRESENT & i) != 0 && bArr2 != null && str5 != null) {
                    this.ntResp = cipherGen.getNTLMv2Response();
                    this.lmResp = cipherGen.getLMv2Response();
                    lanManagerSessionKey = (i & NTLMEngineImpl.FLAG_REQUEST_LAN_MANAGER_KEY) != 0 ? cipherGen.getLanManagerSessionKey() : cipherGen.getNTLMv2UserSessionKey();
                } else if ((NTLMEngineImpl.FLAG_REQUEST_NTLM2_SESSION & i) != 0) {
                    this.ntResp = cipherGen.getNTLM2SessionResponse();
                    this.lmResp = cipherGen.getLM2SessionResponse();
                    lanManagerSessionKey = (i & NTLMEngineImpl.FLAG_REQUEST_LAN_MANAGER_KEY) != 0 ? cipherGen.getLanManagerSessionKey() : cipherGen.getNTLM2SessionResponseUserSessionKey();
                } else {
                    this.ntResp = cipherGen.getNTLMResponse();
                    this.lmResp = cipherGen.getLMResponse();
                    lanManagerSessionKey = (i & NTLMEngineImpl.FLAG_REQUEST_LAN_MANAGER_KEY) != 0 ? cipherGen.getLanManagerSessionKey() : cipherGen.getNTLMUserSessionKey();
                }
            } catch (NTLMEngineException e) {
                this.ntResp = new byte[0];
                this.lmResp = cipherGen.getLMResponse();
                lanManagerSessionKey = (i & NTLMEngineImpl.FLAG_REQUEST_LAN_MANAGER_KEY) != 0 ? cipherGen.getLanManagerSessionKey() : cipherGen.getLMUserSessionKey();
            }
            if ((i & NTLMEngineImpl.FLAG_REQUEST_SIGN) == 0) {
                this.sessionKey = null;
            } else if ((NTLMEngineImpl.FLAG_REQUEST_EXPLICIT_KEY_EXCH & i) != 0) {
                this.sessionKey = NTLMEngineImpl.RC4(cipherGen.getSecondaryKey(), lanManagerSessionKey);
            } else {
                this.sessionKey = lanManagerSessionKey;
            }
            if (NTLMEngineImpl.UNICODE_LITTLE_UNMARKED == null) {
                throw new NTLMEngineException("Unicode not supported");
            }
            this.hostBytes = convertHost != null ? convertHost.getBytes(NTLMEngineImpl.UNICODE_LITTLE_UNMARKED) : null;
            this.domainBytes = convertDomain != null ? convertDomain.toUpperCase(Locale.ROOT).getBytes(NTLMEngineImpl.UNICODE_LITTLE_UNMARKED) : null;
            this.userBytes = str3.getBytes(NTLMEngineImpl.UNICODE_LITTLE_UNMARKED);
        }

        @Override // org.apache.http.impl.auth.NTLMEngineImpl.NTLMMessage
        String getResponse() {
            int length = this.ntResp.length;
            int length2 = this.lmResp.length;
            byte[] bArr = this.domainBytes;
            int length3 = bArr != null ? bArr.length : 0;
            byte[] bArr2 = this.hostBytes;
            int length4 = bArr2 != null ? bArr2.length : 0;
            int length5 = this.userBytes.length;
            byte[] bArr3 = this.sessionKey;
            int length6 = bArr3 != null ? bArr3.length : 0;
            int i = length2 + 72;
            int i2 = i + length;
            int i3 = i2 + length3;
            int i4 = i3 + length5;
            int i5 = i4 + length4;
            prepareResponse(i5 + length6, 3);
            addUShort(length2);
            addUShort(length2);
            addULong(72);
            addUShort(length);
            addUShort(length);
            addULong(i);
            addUShort(length3);
            addUShort(length3);
            addULong(i2);
            addUShort(length5);
            addUShort(length5);
            addULong(i3);
            addUShort(length4);
            addUShort(length4);
            addULong(i4);
            addUShort(length6);
            addUShort(length6);
            addULong(i5);
            int i6 = this.type2Flags;
            addULong((i6 & NTLMEngineImpl.FLAG_REQUEST_NTLMv1) | (i6 & NTLMEngineImpl.FLAG_REQUEST_LAN_MANAGER_KEY) | (NTLMEngineImpl.FLAG_REQUEST_NTLM2_SESSION & i6) | NTLMEngineImpl.FLAG_REQUEST_VERSION | (NTLMEngineImpl.FLAG_REQUEST_ALWAYS_SIGN & i6) | (i6 & 32) | (i6 & NTLMEngineImpl.FLAG_REQUEST_SIGN) | (NTLMEngineImpl.FLAG_REQUEST_128BIT_KEY_EXCH & i6) | (NTLMEngineImpl.FLAG_REQUEST_56BIT_ENCRYPTION & i6) | (NTLMEngineImpl.FLAG_REQUEST_EXPLICIT_KEY_EXCH & i6) | (NTLMEngineImpl.FLAG_TARGETINFO_PRESENT & i6) | (i6 & 1) | (i6 & 4));
            addUShort(261);
            addULong(2600);
            addUShort(3840);
            addBytes(this.lmResp);
            addBytes(this.ntResp);
            addBytes(this.domainBytes);
            addBytes(this.userBytes);
            addBytes(this.hostBytes);
            byte[] bArr4 = this.sessionKey;
            if (bArr4 != null) {
                addBytes(bArr4);
            }
            return super.getResponse();
        }
    }

    static {
        SecureRandom secureRandom = null;
        try {
            secureRandom = SecureRandom.getInstance("SHA1PRNG");
        } catch (Exception e) {
        }
        RND_GEN = secureRandom;
        byte[] bytes = "NTLMSSP".getBytes(Consts.ASCII);
        SIGNATURE = new byte[bytes.length + 1];
        System.arraycopy(bytes, 0, SIGNATURE, 0, bytes.length);
        SIGNATURE[bytes.length] = 0;
        TYPE_1_MESSAGE = new Type1Message();
    }

    NTLMEngineImpl() {
    }

    /* renamed from: F */
    static int m4629F(int i, int i2, int i3) {
        return (i & i2) | ((i ^ (-1)) & i3);
    }

    /* renamed from: G */
    static int m4630G(int i, int i2, int i3) {
        return (i & i2) | (i & i3) | (i2 & i3);
    }

    /* renamed from: H */
    static int m4631H(int i, int i2, int i3) {
        return (i ^ i2) ^ i3;
    }

    static byte[] RC4(byte[] bArr, byte[] bArr2) throws NTLMEngineException {
        try {
            Cipher cipher = Cipher.getInstance("RC4");
            cipher.init(1, new SecretKeySpec(bArr2, "RC4"));
            return cipher.doFinal(bArr);
        } catch (Exception e) {
            throw new NTLMEngineException(e.getMessage(), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String convertDomain(String str) {
        return stripDotSuffix(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String convertHost(String str) {
        return stripDotSuffix(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] createBlob(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArr4 = {1, 1, 0, 0};
        byte[] bArr5 = {0, 0, 0, 0};
        byte[] bArr6 = {0, 0, 0, 0};
        byte[] bArr7 = {0, 0, 0, 0};
        byte[] bArr8 = new byte[bArr4.length + bArr5.length + bArr3.length + 8 + bArr6.length + bArr2.length + bArr7.length];
        System.arraycopy(bArr4, 0, bArr8, 0, bArr4.length);
        int length = 0 + bArr4.length;
        System.arraycopy(bArr5, 0, bArr8, length, bArr5.length);
        int length2 = length + bArr5.length;
        System.arraycopy(bArr3, 0, bArr8, length2, bArr3.length);
        int length3 = length2 + bArr3.length;
        System.arraycopy(bArr, 0, bArr8, length3, 8);
        int i = length3 + 8;
        System.arraycopy(bArr6, 0, bArr8, i, bArr6.length);
        int length4 = i + bArr6.length;
        System.arraycopy(bArr2, 0, bArr8, length4, bArr2.length);
        int length5 = length4 + bArr2.length;
        System.arraycopy(bArr7, 0, bArr8, length5, bArr7.length);
        int length6 = length5 + bArr7.length;
        return bArr8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Key createDESKey(byte[] bArr, int i) {
        byte[] bArr2 = new byte[7];
        System.arraycopy(bArr, i, bArr2, 0, 7);
        byte[] bArr3 = {bArr2[0], (byte) ((bArr2[0] << 7) | ((bArr2[1] & 255) >>> 1)), (byte) ((bArr2[1] << 6) | ((bArr2[2] & 255) >>> 2)), (byte) ((bArr2[2] << 5) | ((bArr2[3] & 255) >>> 3)), (byte) ((bArr2[3] << 4) | ((bArr2[4] & 255) >>> 4)), (byte) ((bArr2[4] << 3) | ((bArr2[5] & 255) >>> 5)), (byte) ((bArr2[5] << 2) | ((bArr2[6] & 255) >>> 6)), (byte) (bArr2[6] << 1)};
        oddParity(bArr3);
        return new SecretKeySpec(bArr3, "DES");
    }

    static String getResponseFor(String str, String str2, String str3, String str4, String str5) throws NTLMEngineException {
        if (str == null || str.trim().equals("")) {
            return getType1Message(str4, str5);
        }
        Type2Message type2Message = new Type2Message(str);
        return getType3Message(str2, str3, str4, str5, type2Message.getChallenge(), type2Message.getFlags(), type2Message.getTarget(), type2Message.getTargetInfo());
    }

    static String getType1Message(String str, String str2) throws NTLMEngineException {
        return TYPE_1_MESSAGE.getResponse();
    }

    static String getType3Message(String str, String str2, String str3, String str4, byte[] bArr, int i, String str5, byte[] bArr2) throws NTLMEngineException {
        return new Type3Message(str4, str3, str, str2, bArr, i, str5, bArr2).getResponse();
    }

    static byte[] hmacMD5(byte[] bArr, byte[] bArr2) throws NTLMEngineException {
        HMACMD5 hmacmd5 = new HMACMD5(bArr2);
        hmacmd5.update(bArr);
        return hmacmd5.getOutput();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] lmHash(String str) throws NTLMEngineException {
        try {
            byte[] bytes = str.toUpperCase(Locale.ROOT).getBytes(Consts.ASCII);
            byte[] bArr = new byte[14];
            System.arraycopy(bytes, 0, bArr, 0, Math.min(bytes.length, 14));
            Key createDESKey = createDESKey(bArr, 0);
            Key createDESKey2 = createDESKey(bArr, 7);
            byte[] bytes2 = "KGS!@#$%".getBytes(Consts.ASCII);
            Cipher cipher = Cipher.getInstance("DES/ECB/NoPadding");
            cipher.init(1, createDESKey);
            byte[] doFinal = cipher.doFinal(bytes2);
            cipher.init(1, createDESKey2);
            byte[] doFinal2 = cipher.doFinal(bytes2);
            byte[] bArr2 = new byte[FLAG_REQUEST_SIGN];
            System.arraycopy(doFinal, 0, bArr2, 0, 8);
            System.arraycopy(doFinal2, 0, bArr2, 8, 8);
            return bArr2;
        } catch (Exception e) {
            throw new NTLMEngineException(e.getMessage(), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] lmResponse(byte[] bArr, byte[] bArr2) throws NTLMEngineException {
        try {
            byte[] bArr3 = new byte[21];
            System.arraycopy(bArr, 0, bArr3, 0, FLAG_REQUEST_SIGN);
            Key createDESKey = createDESKey(bArr3, 0);
            Key createDESKey2 = createDESKey(bArr3, 7);
            Key createDESKey3 = createDESKey(bArr3, 14);
            Cipher cipher = Cipher.getInstance("DES/ECB/NoPadding");
            cipher.init(1, createDESKey);
            byte[] doFinal = cipher.doFinal(bArr2);
            cipher.init(1, createDESKey2);
            byte[] doFinal2 = cipher.doFinal(bArr2);
            cipher.init(1, createDESKey3);
            byte[] doFinal3 = cipher.doFinal(bArr2);
            byte[] bArr4 = new byte[24];
            System.arraycopy(doFinal, 0, bArr4, 0, 8);
            System.arraycopy(doFinal2, 0, bArr4, 8, 8);
            System.arraycopy(doFinal3, 0, bArr4, FLAG_REQUEST_SIGN, 8);
            return bArr4;
        } catch (Exception e) {
            throw new NTLMEngineException(e.getMessage(), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] lmv2Hash(String str, String str2, byte[] bArr) throws NTLMEngineException {
        if (UNICODE_LITTLE_UNMARKED == null) {
            throw new NTLMEngineException("Unicode not supported");
        }
        HMACMD5 hmacmd5 = new HMACMD5(bArr);
        hmacmd5.update(str2.toUpperCase(Locale.ROOT).getBytes(UNICODE_LITTLE_UNMARKED));
        if (str != null) {
            hmacmd5.update(str.toUpperCase(Locale.ROOT).getBytes(UNICODE_LITTLE_UNMARKED));
        }
        return hmacmd5.getOutput();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] lmv2Response(byte[] bArr, byte[] bArr2, byte[] bArr3) throws NTLMEngineException {
        HMACMD5 hmacmd5 = new HMACMD5(bArr);
        hmacmd5.update(bArr2);
        hmacmd5.update(bArr3);
        byte[] output = hmacmd5.getOutput();
        byte[] bArr4 = new byte[output.length + bArr3.length];
        System.arraycopy(output, 0, bArr4, 0, output.length);
        System.arraycopy(bArr3, 0, bArr4, output.length, bArr3.length);
        return bArr4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] makeRandomChallenge() throws NTLMEngineException {
        SecureRandom secureRandom = RND_GEN;
        if (secureRandom == null) {
            throw new NTLMEngineException("Random generator not available");
        }
        byte[] bArr = new byte[8];
        synchronized (secureRandom) {
            RND_GEN.nextBytes(bArr);
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] makeSecondaryKey() throws NTLMEngineException {
        SecureRandom secureRandom = RND_GEN;
        if (secureRandom == null) {
            throw new NTLMEngineException("Random generator not available");
        }
        byte[] bArr = new byte[FLAG_REQUEST_SIGN];
        synchronized (secureRandom) {
            RND_GEN.nextBytes(bArr);
        }
        return bArr;
    }

    static byte[] ntlm2SessionResponse(byte[] bArr, byte[] bArr2, byte[] bArr3) throws NTLMEngineException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(MessageDigestAlgorithms.MD5);
            messageDigest.update(bArr2);
            messageDigest.update(bArr3);
            byte[] bArr4 = new byte[8];
            System.arraycopy(messageDigest.digest(), 0, bArr4, 0, 8);
            return lmResponse(bArr, bArr4);
        } catch (Exception e) {
            if (e instanceof NTLMEngineException) {
                throw ((NTLMEngineException) e);
            }
            throw new NTLMEngineException(e.getMessage(), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] ntlmHash(String str) throws NTLMEngineException {
        Charset charset = UNICODE_LITTLE_UNMARKED;
        if (charset == null) {
            throw new NTLMEngineException("Unicode not supported");
        }
        byte[] bytes = str.getBytes(charset);
        MD4 md4 = new MD4();
        md4.update(bytes);
        return md4.getOutput();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] ntlmv2Hash(String str, String str2, byte[] bArr) throws NTLMEngineException {
        if (UNICODE_LITTLE_UNMARKED == null) {
            throw new NTLMEngineException("Unicode not supported");
        }
        HMACMD5 hmacmd5 = new HMACMD5(bArr);
        hmacmd5.update(str2.toUpperCase(Locale.ROOT).getBytes(UNICODE_LITTLE_UNMARKED));
        if (str != null) {
            hmacmd5.update(str.getBytes(UNICODE_LITTLE_UNMARKED));
        }
        return hmacmd5.getOutput();
    }

    private static void oddParity(byte[] bArr) {
        for (int i = 0; i < bArr.length; i++) {
            byte b2 = bArr[i];
            if (((((((((b2 >>> 7) ^ (b2 >>> 6)) ^ (b2 >>> 5)) ^ (b2 >>> 4)) ^ (b2 >>> 3)) ^ (b2 >>> 2)) ^ (b2 >>> 1)) & 1) == 0) {
                bArr[i] = (byte) (1 | bArr[i]);
            } else {
                bArr[i] = (byte) (bArr[i] & (-2));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] readSecurityBuffer(byte[] bArr, int i) throws NTLMEngineException {
        int readUShort = readUShort(bArr, i);
        int readULong = readULong(bArr, i + 4);
        if (bArr.length < readULong + readUShort) {
            throw new NTLMEngineException("NTLM authentication - buffer too small for data item");
        }
        byte[] bArr2 = new byte[readUShort];
        System.arraycopy(bArr, readULong, bArr2, 0, readUShort);
        return bArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int readULong(byte[] bArr, int i) throws NTLMEngineException {
        if (bArr.length >= i + 4) {
            return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << FLAG_REQUEST_SIGN) | ((bArr[i + 3] & 255) << 24);
        }
        throw new NTLMEngineException("NTLM authentication - buffer too small for DWORD");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int readUShort(byte[] bArr, int i) throws NTLMEngineException {
        if (bArr.length >= i + 2) {
            return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8);
        }
        throw new NTLMEngineException("NTLM authentication - buffer too small for WORD");
    }

    static int rotintlft(int i, int i2) {
        return (i << i2) | (i >>> (32 - i2));
    }

    private static String stripDotSuffix(String str) {
        if (str == null) {
            return null;
        }
        int indexOf = str.indexOf(".");
        return indexOf != -1 ? str.substring(0, indexOf) : str;
    }

    static void writeULong(byte[] bArr, int i, int i2) {
        bArr[i2] = (byte) (i & 255);
        bArr[i2 + 1] = (byte) ((i >> 8) & 255);
        bArr[i2 + 2] = (byte) ((i >> FLAG_REQUEST_SIGN) & 255);
        bArr[i2 + 3] = (byte) ((i >> 24) & 255);
    }

    @Override // org.apache.http.impl.auth.NTLMEngine
    public String generateType1Msg(String str, String str2) throws NTLMEngineException {
        return getType1Message(str2, str);
    }

    @Override // org.apache.http.impl.auth.NTLMEngine
    public String generateType3Msg(String str, String str2, String str3, String str4, String str5) throws NTLMEngineException {
        Type2Message type2Message = new Type2Message(str5);
        return getType3Message(str, str2, str4, str3, type2Message.getChallenge(), type2Message.getFlags(), type2Message.getTarget(), type2Message.getTargetInfo());
    }
}
