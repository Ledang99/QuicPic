package org.apache.commons.codec.digest;

import java.security.MessageDigest;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.codec.Charsets;

/* loaded from: classes.dex */
public class Sha2Crypt {
    private static final int ROUNDS_DEFAULT = 5000;
    private static final int ROUNDS_MAX = 999999999;
    private static final int ROUNDS_MIN = 1000;
    private static final String ROUNDS_PREFIX = "rounds=";
    private static final Pattern SALT_PATTERN = Pattern.compile("^\\$([56])\\$(rounds=(\\d+)\\$)?([\\.\\/a-zA-Z0-9]{1,16}).*");
    private static final int SHA256_BLOCKSIZE = 32;
    static final String SHA256_PREFIX = "$5$";
    private static final int SHA512_BLOCKSIZE = 64;
    static final String SHA512_PREFIX = "$6$";

    public static String sha256Crypt(byte[] bArr) {
        return sha256Crypt(bArr, null);
    }

    public static String sha256Crypt(byte[] bArr, String str) {
        if (str == null) {
            str = SHA256_PREFIX + B64.getRandomSalt(8);
        }
        return sha2Crypt(bArr, str, SHA256_PREFIX, 32, MessageDigestAlgorithms.SHA_256);
    }

    private static String sha2Crypt(byte[] bArr, String str, String str2, int i, String str3) {
        MessageDigest messageDigest;
        byte[] bArr2;
        byte b2;
        int i2;
        int length = bArr.length;
        int i3 = ROUNDS_DEFAULT;
        boolean z = false;
        if (str == null) {
            throw new IllegalArgumentException("Salt must not be null");
        }
        Matcher matcher = SALT_PATTERN.matcher(str);
        if (matcher == null || !matcher.find()) {
            throw new IllegalArgumentException("Invalid salt value: " + str);
        }
        if (matcher.group(3) != null) {
            i3 = Math.max(ROUNDS_MIN, Math.min(ROUNDS_MAX, Integer.parseInt(matcher.group(3))));
            z = true;
        }
        String group = matcher.group(4);
        byte[] bytes = group.getBytes(Charsets.UTF_8);
        int length2 = bytes.length;
        MessageDigest digest = DigestUtils.getDigest(str3);
        digest.update(bArr);
        digest.update(bytes);
        MessageDigest digest2 = DigestUtils.getDigest(str3);
        digest2.update(bArr);
        digest2.update(bytes);
        digest2.update(bArr);
        byte[] digest3 = digest2.digest();
        int length3 = bArr.length;
        while (length3 > i) {
            digest.update(digest3, 0, i);
            length3 -= i;
        }
        digest.update(digest3, 0, length3);
        for (int length4 = bArr.length; length4 > 0; length4 >>= 1) {
            if ((length4 & 1) != 0) {
                digest.update(digest3, 0, i);
            } else {
                digest.update(bArr);
            }
        }
        byte[] digest4 = digest.digest();
        MessageDigest digest5 = DigestUtils.getDigest(str3);
        for (int i4 = 1; i4 <= length; i4++) {
            digest5.update(bArr);
        }
        byte[] digest6 = digest5.digest();
        byte[] bArr3 = new byte[length];
        int i5 = 0;
        while (true) {
            messageDigest = digest;
            if (i5 >= length - i) {
                break;
            }
            System.arraycopy(digest6, 0, bArr3, i5, i);
            i5 += i;
            digest = messageDigest;
        }
        char c = 0;
        System.arraycopy(digest6, 0, bArr3, i5, length - i5);
        MessageDigest digest7 = DigestUtils.getDigest(str3);
        int i6 = 1;
        while (true) {
            byte[] bArr4 = digest6;
            if (i6 > (digest4[c] & 255) + 16) {
                break;
            }
            digest7.update(bytes);
            i6++;
            digest6 = bArr4;
            c = 0;
        }
        byte[] digest8 = digest7.digest();
        byte[] bArr5 = new byte[length2];
        int i7 = 0;
        while (true) {
            bArr2 = digest4;
            if (i7 >= length2 - i) {
                break;
            }
            System.arraycopy(digest8, 0, bArr5, i7, i);
            i7 += i;
            digest4 = bArr2;
        }
        System.arraycopy(digest8, 0, bArr5, i7, length2 - i7);
        int i8 = 0;
        byte[] bArr6 = bArr2;
        while (true) {
            int i9 = i7;
            if (i8 > i3 - 1) {
                break;
            }
            MessageDigest digest9 = DigestUtils.getDigest(str3);
            if ((i8 & 1) != 0) {
                i2 = 0;
                digest9.update(bArr3, 0, length);
            } else {
                i2 = 0;
                digest9.update(bArr6, 0, i);
            }
            if (i8 % 3 != 0) {
                digest9.update(bArr5, i2, length2);
            }
            if (i8 % 7 != 0) {
                digest9.update(bArr3, i2, length);
            }
            if ((i8 & 1) != 0) {
                digest9.update(bArr6, i2, i);
            } else {
                digest9.update(bArr3, i2, length);
            }
            bArr6 = digest9.digest();
            i8++;
            messageDigest = digest9;
            i7 = i9;
        }
        StringBuilder sb = new StringBuilder(str2);
        if (z) {
            sb.append(ROUNDS_PREFIX);
            sb.append(i3);
            sb.append("$");
        }
        sb.append(group);
        sb.append("$");
        if (i == 32) {
            B64.b64from24bit(bArr6[0], bArr6[10], bArr6[20], 4, sb);
            B64.b64from24bit(bArr6[21], bArr6[1], bArr6[11], 4, sb);
            B64.b64from24bit(bArr6[12], bArr6[22], bArr6[2], 4, sb);
            B64.b64from24bit(bArr6[3], bArr6[13], bArr6[23], 4, sb);
            B64.b64from24bit(bArr6[24], bArr6[4], bArr6[14], 4, sb);
            B64.b64from24bit(bArr6[15], bArr6[25], bArr6[5], 4, sb);
            B64.b64from24bit(bArr6[6], bArr6[16], bArr6[26], 4, sb);
            B64.b64from24bit(bArr6[27], bArr6[7], bArr6[17], 4, sb);
            B64.b64from24bit(bArr6[18], bArr6[28], bArr6[8], 4, sb);
            B64.b64from24bit(bArr6[9], bArr6[19], bArr6[29], 4, sb);
            B64.b64from24bit((byte) 0, bArr6[31], bArr6[30], 3, sb);
            b2 = 0;
        } else {
            B64.b64from24bit(bArr6[0], bArr6[21], bArr6[42], 4, sb);
            B64.b64from24bit(bArr6[22], bArr6[43], bArr6[1], 4, sb);
            B64.b64from24bit(bArr6[44], bArr6[2], bArr6[23], 4, sb);
            B64.b64from24bit(bArr6[3], bArr6[24], bArr6[45], 4, sb);
            B64.b64from24bit(bArr6[25], bArr6[46], bArr6[4], 4, sb);
            B64.b64from24bit(bArr6[47], bArr6[5], bArr6[26], 4, sb);
            B64.b64from24bit(bArr6[6], bArr6[27], bArr6[48], 4, sb);
            B64.b64from24bit(bArr6[28], bArr6[49], bArr6[7], 4, sb);
            B64.b64from24bit(bArr6[50], bArr6[8], bArr6[29], 4, sb);
            B64.b64from24bit(bArr6[9], bArr6[30], bArr6[51], 4, sb);
            B64.b64from24bit(bArr6[31], bArr6[52], bArr6[10], 4, sb);
            B64.b64from24bit(bArr6[53], bArr6[11], bArr6[32], 4, sb);
            B64.b64from24bit(bArr6[12], bArr6[33], bArr6[54], 4, sb);
            B64.b64from24bit(bArr6[34], bArr6[55], bArr6[13], 4, sb);
            B64.b64from24bit(bArr6[56], bArr6[14], bArr6[35], 4, sb);
            B64.b64from24bit(bArr6[15], bArr6[36], bArr6[57], 4, sb);
            B64.b64from24bit(bArr6[37], bArr6[58], bArr6[16], 4, sb);
            B64.b64from24bit(bArr6[59], bArr6[17], bArr6[38], 4, sb);
            B64.b64from24bit(bArr6[18], bArr6[39], bArr6[60], 4, sb);
            B64.b64from24bit(bArr6[40], bArr6[61], bArr6[19], 4, sb);
            B64.b64from24bit(bArr6[62], bArr6[20], bArr6[41], 4, sb);
            b2 = 0;
            B64.b64from24bit((byte) 0, (byte) 0, bArr6[63], 2, sb);
        }
        Arrays.fill(digest8, b2);
        Arrays.fill(bArr3, b2);
        Arrays.fill(bArr5, b2);
        messageDigest.reset();
        digest7.reset();
        Arrays.fill(bArr, b2);
        Arrays.fill(bytes, b2);
        return sb.toString();
    }

    public static String sha512Crypt(byte[] bArr) {
        return sha512Crypt(bArr, null);
    }

    public static String sha512Crypt(byte[] bArr, String str) {
        if (str == null) {
            str = SHA512_PREFIX + B64.getRandomSalt(8);
        }
        return sha2Crypt(bArr, str, SHA512_PREFIX, 64, MessageDigestAlgorithms.SHA_512);
    }
}
