package com.p045c.p046a;

import java.security.MessageDigest;
import java.util.Locale;
import java.util.Random;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;
import p012b.p013a.C0382ge;

/* renamed from: com.c.a.l */
/* loaded from: classes.dex */
public class C1412l {

    /* renamed from: a */
    private static final byte[] f4986a = {10, 1, 11, 5, 4, 15, 7, 9, 23, 3, 1, 6, 8, 12, 13, 91};

    /* renamed from: a */
    public static int m4583a(int i, String str) {
        if (new Random().nextFloat() < 0.001d) {
            if (str == null) {
                C0382ge.m1281b("--->", "null signature..");
            }
            int i2 = 0;
            try {
                i2 = Integer.parseInt(str.substring(9, 11), 16);
            } catch (Exception e) {
            }
            return (i2 | 128) * 1000;
        }
        int nextInt = new Random().nextInt(i);
        if (nextInt > 255000 || nextInt < 128000) {
            return nextInt;
        }
        return 127000;
    }

    /* renamed from: a */
    public static String m4584a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b2 : bArr) {
            stringBuffer.append(String.format("%02X", Byte.valueOf(b2)));
        }
        return stringBuffer.toString().toLowerCase(Locale.US);
    }

    /* renamed from: a */
    public static byte[] m4585a(String str) {
        byte[] bArr = null;
        if (str != null) {
            int length = str.length();
            if (length % 2 == 0) {
                bArr = new byte[length / 2];
                for (int i = 0; i < length; i += 2) {
                    bArr[i / 2] = (byte) Integer.valueOf(str.substring(i, i + 2), 16).intValue();
                }
            }
        }
        return bArr;
    }

    /* renamed from: a */
    public static byte[] m4586a(byte[] bArr, byte[] bArr2) {
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
        cipher.init(1, new SecretKeySpec(bArr2, "AES"), new IvParameterSpec(f4986a));
        return cipher.doFinal(bArr);
    }

    /* renamed from: b */
    public static byte[] m4587b(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(MessageDigestAlgorithms.MD5);
            messageDigest.reset();
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
