.class public Lorg/apache/commons/codec/digest/Md5Crypt;
.super Ljava/lang/Object;
.source "Md5Crypt.java"


# static fields
.field static final APR1_PREFIX:Ljava/lang/String; = "$apr1$"

.field private static final BLOCKSIZE:I = 0x10

.field static final MD5_PREFIX:Ljava/lang/String; = "$1$"

.field private static final ROUNDS:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apr1Crypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/codec/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/digest/Md5Crypt;->apr1Crypt([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static apr1Crypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/codec/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/codec/digest/Md5Crypt;->apr1Crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static apr1Crypt([B)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$apr1$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/apache/commons/codec/digest/B64;->getRandomSalt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/codec/digest/Md5Crypt;->apr1Crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static apr1Crypt([BLjava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "$apr1$"

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p0, p1, v0}, Lorg/apache/commons/codec/digest/Md5Crypt;->md5Crypt([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5Crypt([B)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$1$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/apache/commons/codec/digest/B64;->getRandomSalt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/codec/digest/Md5Crypt;->md5Crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5Crypt([BLjava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "$1$"

    invoke-static {p0, p1, v0}, Lorg/apache/commons/codec/digest/Md5Crypt;->md5Crypt([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5Crypt([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    array-length v3, v0

    const/16 v4, 0x8

    const-string v5, "$"

    const/4 v6, 0x1

    if-nez v1, :cond_0

    invoke-static {v4}, Lorg/apache/commons/codec/digest/B64;->getRandomSalt(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\\$"

    invoke-virtual {v2, v5, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "([\\.\\/a-zA-Z0-9]{1,8}).*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v8, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    :goto_0
    sget-object v8, Lorg/apache/commons/codec/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-static {}, Lorg/apache/commons/codec/digest/DigestUtils;->getMd5Digest()Ljava/security/MessageDigest;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/security/MessageDigest;->update([B)V

    sget-object v10, Lorg/apache/commons/codec/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v9, v8}, Ljava/security/MessageDigest;->update([B)V

    invoke-static {}, Lorg/apache/commons/codec/digest/DigestUtils;->getMd5Digest()Ljava/security/MessageDigest;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v10, v8}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v10, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v11

    move v12, v3

    :goto_1
    const/16 v13, 0x10

    const/4 v14, 0x0

    if-lez v12, :cond_2

    if-le v12, v13, :cond_1

    goto :goto_2

    :cond_1
    move v13, v12

    :goto_2
    invoke-virtual {v9, v11, v14, v13}, Ljava/security/MessageDigest;->update([BII)V

    add-int/lit8 v12, v12, -0x10

    goto :goto_1

    :cond_2
    invoke-static {v11, v14}, Ljava/util/Arrays;->fill([BB)V

    move v12, v3

    const/4 v15, 0x0

    :goto_3
    if-lez v12, :cond_4

    and-int/lit8 v4, v12, 0x1

    if-ne v4, v6, :cond_3

    aget-byte v4, v11, v14

    invoke-virtual {v9, v4}, Ljava/security/MessageDigest;->update(B)V

    goto :goto_4

    :cond_3
    aget-byte v4, v0, v14

    invoke-virtual {v9, v4}, Ljava/security/MessageDigest;->update(B)V

    :goto_4
    shr-int/lit8 v12, v12, 0x1

    const/16 v4, 0x8

    goto :goto_3

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    const/4 v6, 0x0

    :goto_5
    const/16 v11, 0x3e8

    if-ge v6, v11, :cond_9

    invoke-static {}, Lorg/apache/commons/codec/digest/DigestUtils;->getMd5Digest()Ljava/security/MessageDigest;

    move-result-object v10

    and-int/lit8 v11, v6, 0x1

    if-eqz v11, :cond_5

    invoke-virtual {v10, v0}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_6

    :cond_5
    invoke-virtual {v10, v5, v14, v13}, Ljava/security/MessageDigest;->update([BII)V

    :goto_6
    rem-int/lit8 v11, v6, 0x3

    if-eqz v11, :cond_6

    invoke-virtual {v10, v8}, Ljava/security/MessageDigest;->update([B)V

    :cond_6
    rem-int/lit8 v11, v6, 0x7

    if-eqz v11, :cond_7

    invoke-virtual {v10, v0}, Ljava/security/MessageDigest;->update([B)V

    :cond_7
    and-int/lit8 v11, v6, 0x1

    if-eqz v11, :cond_8

    invoke-virtual {v10, v5, v14, v13}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_7

    :cond_8
    invoke-virtual {v10, v0}, Ljava/security/MessageDigest;->update([B)V

    :goto_7
    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_9
    aget-byte v6, v5, v14

    const/4 v11, 0x6

    aget-byte v11, v5, v11

    const/16 v13, 0xc

    aget-byte v13, v5, v13

    const/4 v14, 0x4

    invoke-static {v6, v11, v13, v14, v4}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/4 v6, 0x1

    aget-byte v6, v5, v6

    const/4 v11, 0x7

    aget-byte v11, v5, v11

    const/16 v13, 0xd

    aget-byte v13, v5, v13

    invoke-static {v6, v11, v13, v14, v4}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/4 v6, 0x2

    aget-byte v11, v5, v6

    const/16 v13, 0x8

    aget-byte v13, v5, v13

    const/16 v16, 0xe

    aget-byte v6, v5, v16

    invoke-static {v11, v13, v6, v14, v4}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/4 v6, 0x3

    aget-byte v6, v5, v6

    const/16 v11, 0x9

    aget-byte v11, v5, v11

    const/16 v13, 0xf

    aget-byte v13, v5, v13

    invoke-static {v6, v11, v13, v14, v4}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    aget-byte v6, v5, v14

    const/16 v11, 0xa

    aget-byte v11, v5, v11

    const/4 v13, 0x5

    aget-byte v13, v5, v13

    invoke-static {v6, v11, v13, v14, v4}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v6, 0xb

    aget-byte v6, v5, v6

    const/4 v11, 0x2

    const/4 v13, 0x0

    invoke-static {v13, v13, v6, v11, v4}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    invoke-virtual {v9}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v10}, Ljava/security/MessageDigest;->reset()V

    invoke-static {v0, v13}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {v8, v13}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {v5, v13}, Ljava/util/Arrays;->fill([BB)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid salt value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw v4

    :goto_9
    goto :goto_8
.end method
