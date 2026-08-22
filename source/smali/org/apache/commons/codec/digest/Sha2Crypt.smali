.class public Lorg/apache/commons/codec/digest/Sha2Crypt;
.super Ljava/lang/Object;
.source "Sha2Crypt.java"


# static fields
.field private static final ROUNDS_DEFAULT:I = 0x1388

.field private static final ROUNDS_MAX:I = 0x3b9ac9ff

.field private static final ROUNDS_MIN:I = 0x3e8

.field private static final ROUNDS_PREFIX:Ljava/lang/String; = "rounds="

.field private static final SALT_PATTERN:Ljava/util/regex/Pattern;

.field private static final SHA256_BLOCKSIZE:I = 0x20

.field static final SHA256_PREFIX:Ljava/lang/String; = "$5$"

.field private static final SHA512_BLOCKSIZE:I = 0x40

.field static final SHA512_PREFIX:Ljava/lang/String; = "$6$"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^\\$([56])\\$(rounds=(\\d+)\\$)?([\\.\\/a-zA-Z0-9]{1,16}).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/digest/Sha2Crypt;->SALT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sha256Crypt([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/codec/digest/Sha2Crypt;->sha256Crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha256Crypt([BLjava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "$5$"

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/apache/commons/codec/digest/B64;->getRandomSalt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/16 v1, 0x20

    const-string v2, "SHA-256"

    invoke-static {p0, p1, v0, v1, v2}, Lorg/apache/commons/codec/digest/Sha2Crypt;->sha2Crypt([BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static sha2Crypt([BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    array-length v3, v0

    const/16 v4, 0x1388

    const/4 v5, 0x0

    if-eqz v1, :cond_10

    sget-object v6, Lorg/apache/commons/codec/digest/Sha2Crypt;->SALT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_f

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v8, 0x3e8

    const v9, 0x3b9ac9ff

    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v5, 0x1

    :cond_0
    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lorg/apache/commons/codec/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v11, v10

    invoke-static/range {p4 .. p4}, Lorg/apache/commons/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v12, v10}, Ljava/security/MessageDigest;->update([B)V

    invoke-static/range {p4 .. p4}, Lorg/apache/commons/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v13, v10}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v13, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v13}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v14

    array-length v15, v0

    :goto_0
    const/4 v7, 0x0

    if-le v15, v2, :cond_1

    invoke-virtual {v12, v14, v7, v2}, Ljava/security/MessageDigest;->update([BII)V

    sub-int/2addr v15, v2

    const/4 v7, 0x3

    goto :goto_0

    :cond_1
    invoke-virtual {v12, v14, v7, v15}, Ljava/security/MessageDigest;->update([BII)V

    array-length v15, v0

    :goto_1
    if-lez v15, :cond_3

    and-int/lit8 v16, v15, 0x1

    if-eqz v16, :cond_2

    invoke-virtual {v12, v14, v7, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_2

    :cond_2
    invoke-virtual {v12, v0}, Ljava/security/MessageDigest;->update([B)V

    :goto_2
    shr-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v12}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v14

    invoke-static/range {p4 .. p4}, Lorg/apache/commons/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v13

    const/16 v16, 0x1

    move/from16 v8, v16

    :goto_3
    if-gt v8, v3, :cond_4

    invoke-virtual {v13, v0}, Ljava/security/MessageDigest;->update([B)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v13}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    new-array v7, v3, [B

    const/16 v17, 0x0

    move-object/from16 v18, v6

    move/from16 v6, v17

    :goto_4
    move-object/from16 v17, v12

    sub-int v12, v3, v2

    if-ge v6, v12, :cond_5

    const/4 v12, 0x0

    invoke-static {v8, v12, v7, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v6, v2

    move-object/from16 v12, v17

    goto :goto_4

    :cond_5
    const/4 v12, 0x0

    move-object/from16 v16, v13

    sub-int v13, v3, v6

    invoke-static {v8, v12, v7, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static/range {p4 .. p4}, Lorg/apache/commons/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v13

    const/16 v16, 0x1

    move/from16 v19, v6

    move/from16 v6, v16

    :goto_5
    move-object/from16 v20, v8

    aget-byte v8, v14, v12

    and-int/lit16 v8, v8, 0xff

    const/16 v12, 0x10

    add-int/2addr v8, v12

    if-gt v6, v8, :cond_6

    invoke-virtual {v13, v10}, Ljava/security/MessageDigest;->update([B)V

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v8, v20

    const/4 v12, 0x0

    goto :goto_5

    :cond_6
    invoke-virtual {v13}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    new-array v8, v11, [B

    const/16 v19, 0x0

    move/from16 v12, v19

    :goto_6
    move-object/from16 v19, v14

    sub-int v14, v11, v2

    if-ge v12, v14, :cond_7

    const/4 v14, 0x0

    invoke-static {v6, v14, v8, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v12, v2

    move-object/from16 v14, v19

    goto :goto_6

    :cond_7
    const/4 v14, 0x0

    move/from16 v21, v15

    sub-int v15, v11, v12

    invoke-static {v6, v14, v8, v12, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v14, 0x0

    move-object/from16 v15, v19

    :goto_7
    move/from16 v19, v12

    add-int/lit8 v12, v4, -0x1

    if-gt v14, v12, :cond_c

    invoke-static/range {p4 .. p4}, Lorg/apache/commons/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v12

    and-int/lit8 v17, v14, 0x1

    if-eqz v17, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v12, v7, v1, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    invoke-virtual {v12, v15, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    :goto_8
    rem-int/lit8 v16, v14, 0x3

    if-eqz v16, :cond_9

    invoke-virtual {v12, v8, v1, v11}, Ljava/security/MessageDigest;->update([BII)V

    :cond_9
    rem-int/lit8 v16, v14, 0x7

    if-eqz v16, :cond_a

    invoke-virtual {v12, v7, v1, v3}, Ljava/security/MessageDigest;->update([BII)V

    :cond_a
    and-int/lit8 v16, v14, 0x1

    if-eqz v16, :cond_b

    invoke-virtual {v12, v15, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_9

    :cond_b
    invoke-virtual {v12, v7, v1, v3}, Ljava/security/MessageDigest;->update([BII)V

    :goto_9
    invoke-virtual {v12}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v15

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move-object/from16 v17, v12

    move/from16 v12, v19

    goto :goto_7

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v12, p2

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "$"

    if-eqz v5, :cond_d

    move/from16 v22, v3

    const-string v3, "rounds="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_d
    move/from16 v22, v3

    :goto_a
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v23, 0x18

    const/16 v24, 0x17

    const/16 v25, 0x16

    const/16 v26, 0x15

    const/16 v3, 0x20

    const/16 v27, 0x7

    const/16 v28, 0x1

    if-ne v2, v3, :cond_e

    const/4 v3, 0x0

    aget-byte v14, v15, v3

    const/16 v3, 0xa

    aget-byte v3, v15, v3

    const/16 v29, 0x14

    aget-byte v2, v15, v29

    move/from16 v29, v4

    const/4 v4, 0x4

    invoke-static {v14, v3, v2, v4, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    aget-byte v2, v15, v26

    aget-byte v3, v15, v28

    const/16 v14, 0xb

    aget-byte v14, v15, v14

    invoke-static {v2, v3, v14, v4, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0xc

    aget-byte v2, v15, v2

    aget-byte v3, v15, v25

    const/4 v14, 0x2

    aget-byte v14, v15, v14

    invoke-static {v2, v3, v14, v4, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/4 v2, 0x3

    aget-byte v3, v15, v2

    const/16 v2, 0xd

    aget-byte v2, v15, v2

    aget-byte v14, v15, v24

    invoke-static {v3, v2, v14, v4, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    aget-byte v2, v15, v23

    aget-byte v3, v15, v4

    const/16 v14, 0xe

    aget-byte v14, v15, v14

    invoke-static {v2, v3, v14, v4, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0xf

    aget-byte v2, v15, v2

    const/16 v3, 0x19

    aget-byte v3, v15, v3

    const/4 v14, 0x5

    aget-byte v14, v15, v14

    invoke-static {v2, v3, v14, v4, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/4 v2, 0x6

    aget-byte v2, v15, v2

    const/16 v3, 0x10

    aget-byte v3, v15, v3

    const/16 v14, 0x1a

    aget-byte v14, v15, v14

    invoke-static {v2, v3, v14, v4, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x1b

    aget-byte v2, v15, v2

    aget-byte v3, v15, v27

    const/16 v14, 0x11

    aget-byte v14, v15, v14

    invoke-static {v2, v3, v14, v4, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x12

    aget-byte v2, v15, v2

    const/16 v3, 0x1c

    aget-byte v3, v15, v3

    const/16 v14, 0x8

    aget-byte v14, v15, v14

    invoke-static {v2, v3, v14, v4, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x9

    aget-byte v2, v15, v2

    const/16 v3, 0x13

    aget-byte v3, v15, v3

    const/16 v14, 0x1d

    aget-byte v14, v15, v14

    invoke-static {v2, v3, v14, v4, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x1f

    aget-byte v2, v15, v2

    const/16 v3, 0x1e

    aget-byte v3, v15, v3

    const/4 v4, 0x3

    const/4 v14, 0x0

    invoke-static {v14, v2, v3, v4, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/4 v4, 0x0

    goto/16 :goto_b

    :cond_e
    move/from16 v29, v4

    const/4 v14, 0x0

    aget-byte v2, v15, v14

    aget-byte v4, v15, v26

    const/16 v14, 0x2a

    aget-byte v14, v15, v14

    const/4 v3, 0x4

    invoke-static {v2, v4, v14, v3, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    aget-byte v2, v15, v25

    const/16 v4, 0x2b

    aget-byte v4, v15, v4

    aget-byte v14, v15, v28

    invoke-static {v2, v4, v14, v3, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x2c

    aget-byte v2, v15, v2

    const/4 v4, 0x2

    aget-byte v14, v15, v4

    aget-byte v4, v15, v24

    invoke-static {v2, v14, v4, v3, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/4 v2, 0x3

    aget-byte v2, v15, v2

    aget-byte v4, v15, v23

    const/16 v14, 0x2d

    aget-byte v14, v15, v14

    invoke-static {v2, v4, v14, v3, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x19

    aget-byte v2, v15, v2

    const/16 v4, 0x2e

    aget-byte v4, v15, v4

    aget-byte v14, v15, v3

    invoke-static {v2, v4, v14, v3, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x2f

    aget-byte v2, v15, v2

    const/4 v4, 0x5

    aget-byte v4, v15, v4

    const/16 v14, 0x1a

    aget-byte v14, v15, v14

    invoke-static {v2, v4, v14, v3, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/4 v2, 0x6

    aget-byte v2, v15, v2

    const/16 v4, 0x1b

    aget-byte v4, v15, v4

    const/16 v14, 0x30

    aget-byte v14, v15, v14

    invoke-static {v2, v4, v14, v3, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x1c

    aget-byte v2, v15, v2

    const/16 v4, 0x31

    aget-byte v4, v15, v4

    aget-byte v14, v15, v27

    invoke-static {v2, v4, v14, v3, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x32

    aget-byte v2, v15, v2

    const/16 v4, 0x8

    aget-byte v4, v15, v4

    const/16 v14, 0x1d

    aget-byte v14, v15, v14

    invoke-static {v2, v4, v14, v3, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x9

    aget-byte v2, v15, v2

    const/16 v4, 0x1e

    aget-byte v4, v15, v4

    const/16 v14, 0x33

    aget-byte v14, v15, v14

    invoke-static {v2, v4, v14, v3, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x1f

    aget-byte v2, v15, v2

    const/16 v4, 0x34

    aget-byte v4, v15, v4

    const/16 v14, 0xa

    aget-byte v14, v15, v14

    invoke-static {v2, v4, v14, v3, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x35

    aget-byte v2, v15, v2

    const/16 v4, 0xb

    aget-byte v4, v15, v4

    const/16 v14, 0x20

    aget-byte v14, v15, v14

    invoke-static {v2, v4, v14, v3, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0xc

    aget-byte v2, v15, v2

    const/16 v4, 0x21

    aget-byte v4, v15, v4

    const/16 v14, 0x36

    aget-byte v14, v15, v14

    invoke-static {v2, v4, v14, v3, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x22

    aget-byte v2, v15, v2

    const/16 v4, 0x37

    aget-byte v4, v15, v4

    const/16 v14, 0xd

    aget-byte v14, v15, v14

    invoke-static {v2, v4, v14, v3, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x38

    aget-byte v2, v15, v2

    const/16 v4, 0xe

    aget-byte v4, v15, v4

    const/16 v14, 0x23

    aget-byte v14, v15, v14

    invoke-static {v2, v4, v14, v3, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0xf

    aget-byte v2, v15, v2

    const/16 v4, 0x24

    aget-byte v4, v15, v4

    const/16 v14, 0x39

    aget-byte v14, v15, v14

    invoke-static {v2, v4, v14, v3, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x25

    aget-byte v2, v15, v2

    const/16 v4, 0x3a

    aget-byte v4, v15, v4

    const/16 v14, 0x10

    aget-byte v14, v15, v14

    invoke-static {v2, v4, v14, v3, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x3b

    aget-byte v2, v15, v2

    const/16 v4, 0x11

    aget-byte v4, v15, v4

    const/16 v14, 0x26

    aget-byte v14, v15, v14

    invoke-static {v2, v4, v14, v3, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x12

    aget-byte v2, v15, v2

    const/16 v4, 0x27

    aget-byte v4, v15, v4

    const/16 v14, 0x3c

    aget-byte v14, v15, v14

    invoke-static {v2, v4, v14, v3, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x28

    aget-byte v2, v15, v2

    const/16 v4, 0x3d

    aget-byte v4, v15, v4

    const/16 v14, 0x13

    aget-byte v14, v15, v14

    invoke-static {v2, v4, v14, v3, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x3e

    aget-byte v2, v15, v2

    const/16 v4, 0x14

    aget-byte v4, v15, v4

    const/16 v14, 0x29

    aget-byte v14, v15, v14

    invoke-static {v2, v4, v14, v3, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x3f

    aget-byte v2, v15, v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v4, v4, v2, v3, v1}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    :goto_b
    invoke-static {v6, v4}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {v7, v4}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {v8, v4}, Ljava/util/Arrays;->fill([BB)V

    invoke-virtual/range {v17 .. v17}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v13}, Ljava/security/MessageDigest;->reset()V

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {v10, v4}, Ljava/util/Arrays;->fill([BB)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_f
    move-object/from16 v12, p2

    move/from16 v22, v3

    move-object/from16 v18, v6

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid salt value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    move-object/from16 v12, p2

    move/from16 v22, v3

    move-object v3, v1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Salt must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_d

    :goto_c
    throw v1

    :goto_d
    goto :goto_c
.end method

.method public static sha512Crypt([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/codec/digest/Sha2Crypt;->sha512Crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha512Crypt([BLjava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "$6$"

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/apache/commons/codec/digest/B64;->getRandomSalt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/16 v1, 0x40

    const-string v2, "SHA-512"

    invoke-static {p0, p1, v0, v1, v2}, Lorg/apache/commons/codec/digest/Sha2Crypt;->sha2Crypt([BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
