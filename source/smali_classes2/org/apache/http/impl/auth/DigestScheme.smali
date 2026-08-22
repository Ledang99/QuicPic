.class public Lorg/apache/http/impl/auth/DigestScheme;
.super Lorg/apache/http/impl/auth/RFC2617Scheme;
.source "DigestScheme.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# static fields
.field private static final HEXADECIMAL:[C

.field private static final QOP_AUTH:I = 0x2

.field private static final QOP_AUTH_INT:I = 0x1

.field private static final QOP_MISSING:I = 0x0

.field private static final QOP_UNKNOWN:I = -0x1

.field private static final serialVersionUID:J = 0x35e669eae4be3904L


# instance fields
.field private a1:Ljava/lang/String;

.field private a2:Ljava/lang/String;

.field private cnonce:Ljava/lang/String;

.field private complete:Z

.field private lastNonce:Ljava/lang/String;

.field private nounceCount:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/http/impl/auth/DigestScheme;->HEXADECIMAL:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 127
    sget-object v0, Lorg/apache/http/Consts;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0}, Lorg/apache/http/impl/auth/DigestScheme;-><init>(Ljava/nio/charset/Charset;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "credentialsCharset"    # Ljava/nio/charset/Charset;

    .line 109
    invoke-direct {p0, p1}, Lorg/apache/http/impl/auth/RFC2617Scheme;-><init>(Ljava/nio/charset/Charset;)V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->complete:Z

    .line 111
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/auth/ChallengeState;)V
    .locals 0
    .param p1, "challengeState"    # Lorg/apache/http/auth/ChallengeState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 123
    invoke-direct {p0, p1}, Lorg/apache/http/impl/auth/RFC2617Scheme;-><init>(Lorg/apache/http/auth/ChallengeState;)V

    .line 124
    return-void
.end method

.method public static createCnonce()Ljava/lang/String;
    .locals 3

    .line 483
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 484
    .local v0, "rnd":Ljava/security/SecureRandom;
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 485
    .local v1, "tmp":[B
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 486
    invoke-static {v1}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private createDigestHeader(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;
    .locals 35
    .param p1, "credentials"    # Lorg/apache/http/auth/Credentials;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .line 258
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "uri"

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "uri":Ljava/lang/String;
    const-string v4, "realm"

    invoke-virtual {v1, v4}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, "realm":Ljava/lang/String;
    const-string v6, "nonce"

    invoke-virtual {v1, v6}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 261
    .local v7, "nonce":Ljava/lang/String;
    const-string v8, "opaque"

    invoke-virtual {v1, v8}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 262
    .local v9, "opaque":Ljava/lang/String;
    const-string v10, "methodname"

    invoke-virtual {v1, v10}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 263
    .local v10, "method":Ljava/lang/String;
    const-string v11, "algorithm"

    invoke-virtual {v1, v11}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 265
    .local v12, "algorithm":Ljava/lang/String;
    if-nez v12, :cond_0

    .line 266
    const-string v12, "MD5"

    .line 269
    :cond_0
    new-instance v13, Ljava/util/HashSet;

    const/16 v14, 0x8

    invoke-direct {v13, v14}, Ljava/util/HashSet;-><init>(I)V

    .line 270
    .local v13, "qopset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v14, -0x1

    .line 271
    .local v14, "qop":I
    const-string v15, "qop"

    move/from16 v16, v14

    .end local v14    # "qop":I
    .local v16, "qop":I
    invoke-virtual {v1, v15}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 272
    .local v14, "qoplist":Ljava/lang/String;
    move-object/from16 v17, v8

    const-string v8, "auth-int"

    move-object/from16 v18, v9

    .end local v9    # "opaque":Ljava/lang/String;
    .local v18, "opaque":Ljava/lang/String;
    const-string v9, "auth"

    if-eqz v14, :cond_4

    .line 273
    move-object/from16 v19, v11

    new-instance v11, Ljava/util/StringTokenizer;

    move-object/from16 v20, v15

    const-string v15, ","

    invoke-direct {v11, v14, v15}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .local v11, "tok":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 275
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 276
    .local v15, "variant":Ljava/lang/String;
    move-object/from16 v21, v11

    .end local v11    # "tok":Ljava/util/StringTokenizer;
    .local v21, "tok":Ljava/util/StringTokenizer;
    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v15, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v13, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 277
    .end local v15    # "variant":Ljava/lang/String;
    move-object/from16 v11, v21

    goto :goto_0

    .line 278
    .end local v21    # "tok":Ljava/util/StringTokenizer;
    .restart local v11    # "tok":Ljava/util/StringTokenizer;
    :cond_1
    move-object/from16 v21, v11

    .end local v11    # "tok":Ljava/util/StringTokenizer;
    .restart local v21    # "tok":Ljava/util/StringTokenizer;
    instance-of v11, v2, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v11, :cond_2

    invoke-interface {v13, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 279
    const/4 v11, 0x1

    .end local v16    # "qop":I
    .local v11, "qop":I
    goto :goto_1

    .line 280
    .end local v11    # "qop":I
    .restart local v16    # "qop":I
    :cond_2
    invoke-interface {v13, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 281
    const/4 v11, 0x2

    .end local v16    # "qop":I
    .restart local v11    # "qop":I
    goto :goto_1

    .line 280
    .end local v11    # "qop":I
    .restart local v16    # "qop":I
    :cond_3
    move/from16 v11, v16

    .line 283
    .end local v16    # "qop":I
    .end local v21    # "tok":Ljava/util/StringTokenizer;
    .restart local v11    # "qop":I
    :goto_1
    goto :goto_2

    .line 284
    .end local v11    # "qop":I
    .restart local v16    # "qop":I
    :cond_4
    move-object/from16 v19, v11

    move-object/from16 v20, v15

    const/4 v11, 0x0

    .line 287
    .end local v16    # "qop":I
    .restart local v11    # "qop":I
    :goto_2
    const/4 v15, -0x1

    if-eq v11, v15, :cond_1b

    .line 291
    const-string v15, "charset"

    invoke-virtual {v1, v15}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 292
    .local v15, "charset":Ljava/lang/String;
    if-nez v15, :cond_5

    .line 293
    const-string v15, "ISO-8859-1"

    .line 296
    :cond_5
    move-object/from16 v16, v12

    .line 297
    .local v16, "digAlg":Ljava/lang/String;
    move-object/from16 v21, v8

    const-string v8, "MD5-sess"

    move-object/from16 v22, v14

    move-object/from16 v14, v16

    .end local v16    # "digAlg":Ljava/lang/String;
    .local v14, "digAlg":Ljava/lang/String;
    .local v22, "qoplist":Ljava/lang/String;
    invoke-virtual {v14, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 298
    const-string v16, "MD5"

    move-object/from16 v14, v16

    .line 303
    :cond_6
    move-object/from16 v16, v6

    :try_start_0
    invoke-static {v14}, Lorg/apache/http/impl/auth/DigestScheme;->createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v23
    :try_end_0
    .catch Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v24, v23

    .line 306
    .local v24, "digester":Ljava/security/MessageDigest;
    nop

    .line 308
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v6

    .line 309
    .local v6, "uname":Ljava/lang/String;
    move-object/from16 v23, v14

    .end local v14    # "digAlg":Ljava/lang/String;
    .local v23, "digAlg":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/auth/Credentials;->getPassword()Ljava/lang/String;

    move-result-object v14

    .line 311
    .local v14, "pwd":Ljava/lang/String;
    move-object/from16 v26, v0

    iget-object v0, v1, Lorg/apache/http/impl/auth/DigestScheme;->lastNonce:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move-object/from16 v27, v3

    .end local v3    # "uri":Ljava/lang/String;
    .local v27, "uri":Ljava/lang/String;
    const-wide/16 v2, 0x1

    if-eqz v0, :cond_7

    .line 312
    move-object v0, v9

    move-object/from16 v28, v10

    .end local v10    # "method":Ljava/lang/String;
    .local v28, "method":Ljava/lang/String;
    iget-wide v9, v1, Lorg/apache/http/impl/auth/DigestScheme;->nounceCount:J

    add-long/2addr v9, v2

    iput-wide v9, v1, Lorg/apache/http/impl/auth/DigestScheme;->nounceCount:J

    goto :goto_3

    .line 314
    .end local v28    # "method":Ljava/lang/String;
    .restart local v10    # "method":Ljava/lang/String;
    :cond_7
    move-object v0, v9

    move-object/from16 v28, v10

    .end local v10    # "method":Ljava/lang/String;
    .restart local v28    # "method":Ljava/lang/String;
    iput-wide v2, v1, Lorg/apache/http/impl/auth/DigestScheme;->nounceCount:J

    .line 315
    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    .line 316
    iput-object v7, v1, Lorg/apache/http/impl/auth/DigestScheme;->lastNonce:Ljava/lang/String;

    .line 318
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 319
    .local v2, "sb":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/Formatter;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v2, v9}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 320
    .local v3, "formatter":Ljava/util/Formatter;
    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    move-object/from16 v29, v10

    iget-wide v9, v1, Lorg/apache/http/impl/auth/DigestScheme;->nounceCount:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v29, v10

    const-string v9, "%08x"

    move-object/from16 v10, v29

    invoke-virtual {v3, v9, v10}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 321
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    .line 322
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 324
    .local v9, "nc":Ljava/lang/String;
    iget-object v10, v1, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    if-nez v10, :cond_8

    .line 325
    invoke-static {}, Lorg/apache/http/impl/auth/DigestScheme;->createCnonce()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    .line 328
    :cond_8
    const/4 v10, 0x0

    iput-object v10, v1, Lorg/apache/http/impl/auth/DigestScheme;->a1:Ljava/lang/String;

    .line 329
    iput-object v10, v1, Lorg/apache/http/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    .line 331
    invoke-virtual {v12, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    const/16 v10, 0x3a

    if-eqz v8, :cond_9

    .line 337
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 338
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v15}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v8

    move-object/from16 v10, v24

    .end local v24    # "digester":Ljava/security/MessageDigest;
    .local v10, "digester":Ljava/security/MessageDigest;
    invoke-virtual {v10, v8}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v8

    .line 340
    .local v8, "checksum":Ljava/lang/String;
    move-object/from16 v24, v3

    const/4 v3, 0x0

    .end local v3    # "formatter":Ljava/util/Formatter;
    .local v24, "formatter":Ljava/util/Formatter;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 341
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/apache/http/impl/auth/DigestScheme;->a1:Ljava/lang/String;

    .line 343
    .end local v8    # "checksum":Ljava/lang/String;
    goto :goto_4

    .line 345
    .end local v10    # "digester":Ljava/security/MessageDigest;
    .restart local v3    # "formatter":Ljava/util/Formatter;
    .local v24, "digester":Ljava/security/MessageDigest;
    :cond_9
    move-object/from16 v10, v24

    move-object/from16 v24, v3

    .end local v3    # "formatter":Ljava/util/Formatter;
    .restart local v10    # "digester":Ljava/security/MessageDigest;
    .local v24, "formatter":Ljava/util/Formatter;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 346
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/apache/http/impl/auth/DigestScheme;->a1:Ljava/lang/String;

    .line 350
    :goto_4
    iget-object v3, v1, Lorg/apache/http/impl/auth/DigestScheme;->a1:Ljava/lang/String;

    invoke-static {v3, v15}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v3

    .line 352
    .local v3, "hasha1":Ljava/lang/String;
    const/4 v8, 0x2

    if-ne v11, v8, :cond_a

    .line 354
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v29, v14

    move-object/from16 v14, v28

    .end local v28    # "method":Ljava/lang/String;
    .local v14, "method":Ljava/lang/String;
    .local v29, "pwd":Ljava/lang/String;
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v28, v12

    const/16 v12, 0x3a

    .end local v12    # "algorithm":Ljava/lang/String;
    .local v28, "algorithm":Ljava/lang/String;
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v12, v27

    .end local v27    # "uri":Ljava/lang/String;
    .local v12, "uri":Ljava/lang/String;
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lorg/apache/http/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    move-object/from16 v31, v0

    move/from16 v30, v11

    goto/16 :goto_9

    .line 355
    .end local v29    # "pwd":Ljava/lang/String;
    .local v12, "algorithm":Ljava/lang/String;
    .local v14, "pwd":Ljava/lang/String;
    .restart local v27    # "uri":Ljava/lang/String;
    .local v28, "method":Ljava/lang/String;
    :cond_a
    move-object/from16 v29, v14

    move-object/from16 v14, v28

    move-object/from16 v28, v12

    move-object/from16 v12, v27

    .end local v27    # "uri":Ljava/lang/String;
    .local v12, "uri":Ljava/lang/String;
    .local v14, "method":Ljava/lang/String;
    .local v28, "algorithm":Ljava/lang/String;
    .restart local v29    # "pwd":Ljava/lang/String;
    const/4 v8, 0x1

    if-ne v11, v8, :cond_f

    .line 357
    const/4 v8, 0x0

    .line 358
    .local v8, "entity":Lorg/apache/http/HttpEntity;
    move-object/from16 v27, v8

    move/from16 v30, v11

    move-object/from16 v8, p2

    .end local v8    # "entity":Lorg/apache/http/HttpEntity;
    .end local v11    # "qop":I
    .local v27, "entity":Lorg/apache/http/HttpEntity;
    .local v30, "qop":I
    instance-of v11, v8, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v11, :cond_b

    .line 359
    move-object v11, v8

    check-cast v11, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {v11}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    .end local v27    # "entity":Lorg/apache/http/HttpEntity;
    .local v11, "entity":Lorg/apache/http/HttpEntity;
    goto :goto_5

    .line 358
    .end local v11    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v27    # "entity":Lorg/apache/http/HttpEntity;
    :cond_b
    move-object/from16 v11, v27

    .line 361
    .end local v27    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v11    # "entity":Lorg/apache/http/HttpEntity;
    :goto_5
    if-eqz v11, :cond_d

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v27

    if-nez v27, :cond_d

    .line 363
    invoke-interface {v13, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_c

    .line 364
    const/16 v27, 0x2

    .line 365
    .end local v30    # "qop":I
    .local v27, "qop":I
    move-object/from16 v31, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x3a

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/apache/http/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    move/from16 v11, v27

    goto :goto_7

    .line 367
    .end local v27    # "qop":I
    .restart local v30    # "qop":I
    :cond_c
    new-instance v0, Lorg/apache/http/auth/AuthenticationException;

    const-string v4, "Qop auth-int cannot be used with a non-repeatable entity"

    invoke-direct {v0, v4}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_d
    move-object/from16 v31, v0

    .line 371
    new-instance v0, Lorg/apache/http/impl/auth/HttpEntityDigester;

    invoke-direct {v0, v10}, Lorg/apache/http/impl/auth/HttpEntityDigester;-><init>(Ljava/security/MessageDigest;)V

    move-object v8, v0

    .line 373
    .local v8, "entityDigester":Lorg/apache/http/impl/auth/HttpEntityDigester;
    if-eqz v11, :cond_e

    .line 374
    :try_start_1
    invoke-interface {v11, v8}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 377
    :catch_0
    move-exception v0

    move-object/from16 v27, v11

    goto :goto_8

    .line 376
    :cond_e
    :goto_6
    :try_start_2
    invoke-virtual {v8}, Lorg/apache/http/impl/auth/HttpEntityDigester;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 379
    nop

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v27, v11

    const/16 v11, 0x3a

    .end local v11    # "entity":Lorg/apache/http/HttpEntity;
    .local v27, "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lorg/apache/http/impl/auth/HttpEntityDigester;->getDigest()[B

    move-result-object v11

    invoke-static {v11}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/apache/http/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    move/from16 v11, v30

    .line 382
    .end local v8    # "entityDigester":Lorg/apache/http/impl/auth/HttpEntityDigester;
    .end local v27    # "entity":Lorg/apache/http/HttpEntity;
    .end local v30    # "qop":I
    .local v11, "qop":I
    :goto_7
    goto :goto_a

    .line 377
    .restart local v8    # "entityDigester":Lorg/apache/http/impl/auth/HttpEntityDigester;
    .local v11, "entity":Lorg/apache/http/HttpEntity;
    .restart local v30    # "qop":I
    :catch_1
    move-exception v0

    move-object/from16 v27, v11

    .line 378
    .end local v11    # "entity":Lorg/apache/http/HttpEntity;
    .local v0, "ex":Ljava/io/IOException;
    .restart local v27    # "entity":Lorg/apache/http/HttpEntity;
    :goto_8
    new-instance v4, Lorg/apache/http/auth/AuthenticationException;

    const-string v11, "I/O error reading entity content"

    invoke-direct {v4, v11, v0}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 383
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v8    # "entityDigester":Lorg/apache/http/impl/auth/HttpEntityDigester;
    .end local v27    # "entity":Lorg/apache/http/HttpEntity;
    .end local v30    # "qop":I
    .local v11, "qop":I
    :cond_f
    move-object/from16 v31, v0

    move/from16 v30, v11

    .end local v11    # "qop":I
    .restart local v30    # "qop":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x3a

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/apache/http/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    .line 386
    .end local v30    # "qop":I
    .restart local v11    # "qop":I
    :goto_9
    move/from16 v11, v30

    :goto_a
    iget-object v0, v1, Lorg/apache/http/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    invoke-static {v0, v15}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "hasha2":Ljava/lang/String;
    if-nez v11, :cond_10

    .line 392
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 393
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x3a

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v25, v3

    .local v8, "digestValue":Ljava/lang/String;
    goto :goto_c

    .line 396
    .end local v8    # "digestValue":Ljava/lang/String;
    :cond_10
    const/16 v8, 0x3a

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 397
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x3a

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v25, v3

    .end local v3    # "hasha1":Ljava/lang/String;
    .local v25, "hasha1":Ljava/lang/String;
    iget-object v3, v1, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    if-ne v11, v3, :cond_11

    move-object/from16 v3, v21

    goto :goto_b

    :cond_11
    move-object/from16 v3, v31

    :goto_b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 403
    .restart local v8    # "digestValue":Ljava/lang/String;
    :goto_c
    invoke-static {v8}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v3

    .line 405
    .local v3, "digest":Ljava/lang/String;
    move-object/from16 v27, v0

    .end local v0    # "hasha2":Ljava/lang/String;
    .local v27, "hasha2":Ljava/lang/String;
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    move-object/from16 v32, v2

    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .local v32, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x80

    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 406
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/auth/DigestScheme;->isProxy()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 407
    const-string v2, "Proxy-Authorization"

    invoke-virtual {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_d

    .line 409
    :cond_12
    const-string v2, "Authorization"

    invoke-virtual {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 411
    :goto_d
    const-string v2, ": Digest "

    invoke-virtual {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 413
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v30, v8

    .end local v8    # "digestValue":Ljava/lang/String;
    .local v30, "digestValue":Ljava/lang/String;
    const/16 v8, 0x14

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 414
    .local v2, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    move-object/from16 v33, v10

    .end local v10    # "digester":Ljava/security/MessageDigest;
    .local v33, "digester":Ljava/security/MessageDigest;
    const-string v10, "username"

    invoke-direct {v8, v10, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v8, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    move-object/from16 v8, v16

    invoke-direct {v4, v8, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    move-object/from16 v8, v26

    invoke-direct {v4, v8, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "response"

    invoke-direct {v4, v8, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    const-string v4, "nc"

    if-eqz v11, :cond_14

    .line 421
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const/4 v10, 0x1

    if-ne v11, v10, :cond_13

    move-object/from16 v10, v21

    goto :goto_e

    :cond_13
    move-object/from16 v10, v31

    :goto_e
    move-object/from16 v16, v3

    move-object/from16 v3, v20

    .end local v3    # "digest":Ljava/lang/String;
    .local v16, "digest":Ljava/lang/String;
    invoke-direct {v8, v3, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v8, v4, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v10, v1, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    const-string v1, "cnonce"

    invoke-direct {v8, v1, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 420
    .end local v16    # "digest":Ljava/lang/String;
    .restart local v3    # "digest":Ljava/lang/String;
    :cond_14
    move-object/from16 v16, v3

    move-object/from16 v3, v20

    .line 426
    .end local v3    # "digest":Ljava/lang/String;
    .restart local v16    # "digest":Ljava/lang/String;
    :goto_f
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    move-object/from16 v10, v19

    move-object/from16 v8, v28

    .end local v28    # "algorithm":Ljava/lang/String;
    .local v8, "algorithm":Ljava/lang/String;
    invoke-direct {v1, v10, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    if-eqz v18, :cond_15

    .line 428
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    move-object/from16 v19, v5

    move-object/from16 v5, v18

    move-object/from16 v34, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v34

    .end local v6    # "uname":Ljava/lang/String;
    .end local v18    # "opaque":Ljava/lang/String;
    .local v5, "opaque":Ljava/lang/String;
    .local v17, "uname":Ljava/lang/String;
    .local v19, "realm":Ljava/lang/String;
    invoke-direct {v1, v6, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 427
    .end local v17    # "uname":Ljava/lang/String;
    .end local v19    # "realm":Ljava/lang/String;
    .local v5, "realm":Ljava/lang/String;
    .restart local v6    # "uname":Ljava/lang/String;
    .restart local v18    # "opaque":Ljava/lang/String;
    :cond_15
    move-object/from16 v19, v5

    move-object/from16 v17, v6

    move-object/from16 v5, v18

    .line 431
    .end local v6    # "uname":Ljava/lang/String;
    .end local v18    # "opaque":Ljava/lang/String;
    .local v5, "opaque":Ljava/lang/String;
    .restart local v17    # "uname":Ljava/lang/String;
    .restart local v19    # "realm":Ljava/lang/String;
    :goto_10
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1a

    .line 432
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/http/message/BasicNameValuePair;

    .line 433
    .local v6, "param":Lorg/apache/http/message/BasicNameValuePair;
    if-lez v1, :cond_16

    .line 434
    move-object/from16 v18, v2

    .end local v2    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    .local v18, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    const-string v2, ", "

    invoke-virtual {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_12

    .line 433
    .end local v18    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    .restart local v2    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    :cond_16
    move-object/from16 v18, v2

    .line 436
    .end local v2    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    .restart local v18    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    :goto_12
    invoke-virtual {v6}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    .line 437
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_18

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_18

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_17

    goto :goto_13

    :cond_17
    const/16 v20, 0x0

    goto :goto_14

    :cond_18
    :goto_13
    const/16 v20, 0x1

    .line 439
    .local v20, "noQuotes":Z
    :goto_14
    move-object/from16 v21, v2

    .end local v2    # "name":Ljava/lang/String;
    .local v21, "name":Ljava/lang/String;
    sget-object v2, Lorg/apache/http/message/BasicHeaderValueFormatter;->INSTANCE:Lorg/apache/http/message/BasicHeaderValueFormatter;

    if-nez v20, :cond_19

    move-object/from16 v26, v3

    const/4 v3, 0x1

    goto :goto_15

    :cond_19
    move-object/from16 v26, v3

    const/4 v3, 0x0

    :goto_15
    invoke-virtual {v2, v0, v6, v3}, Lorg/apache/http/message/BasicHeaderValueFormatter;->formatNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    .line 431
    .end local v6    # "param":Lorg/apache/http/message/BasicNameValuePair;
    .end local v20    # "noQuotes":Z
    .end local v21    # "name":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, v18

    move-object/from16 v3, v26

    goto :goto_11

    .end local v18    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    .local v2, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    :cond_1a
    move-object/from16 v18, v2

    .line 441
    .end local v1    # "i":I
    .end local v2    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    .restart local v18    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v1, v0}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    return-object v1

    .line 304
    .end local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v8    # "algorithm":Ljava/lang/String;
    .end local v9    # "nc":Ljava/lang/String;
    .end local v16    # "digest":Ljava/lang/String;
    .end local v17    # "uname":Ljava/lang/String;
    .end local v19    # "realm":Ljava/lang/String;
    .end local v23    # "digAlg":Ljava/lang/String;
    .end local v24    # "formatter":Ljava/util/Formatter;
    .end local v25    # "hasha1":Ljava/lang/String;
    .end local v27    # "hasha2":Ljava/lang/String;
    .end local v29    # "pwd":Ljava/lang/String;
    .end local v30    # "digestValue":Ljava/lang/String;
    .end local v32    # "sb":Ljava/lang/StringBuilder;
    .end local v33    # "digester":Ljava/security/MessageDigest;
    .local v3, "uri":Ljava/lang/String;
    .local v5, "realm":Ljava/lang/String;
    .local v10, "method":Ljava/lang/String;
    .local v12, "algorithm":Ljava/lang/String;
    .local v14, "digAlg":Ljava/lang/String;
    .local v18, "opaque":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v19, v5

    move/from16 v30, v11

    move-object v8, v12

    move-object/from16 v23, v14

    move-object/from16 v5, v18

    const/4 v2, 0x0

    move-object v12, v3

    move-object v14, v10

    move-object v1, v0

    .end local v3    # "uri":Ljava/lang/String;
    .end local v10    # "method":Ljava/lang/String;
    .end local v11    # "qop":I
    .end local v18    # "opaque":Ljava/lang/String;
    .local v5, "opaque":Ljava/lang/String;
    .restart local v8    # "algorithm":Ljava/lang/String;
    .local v12, "uri":Ljava/lang/String;
    .local v14, "method":Ljava/lang/String;
    .restart local v19    # "realm":Ljava/lang/String;
    .restart local v23    # "digAlg":Ljava/lang/String;
    .local v30, "qop":I
    move-object v0, v2

    .line 305
    .local v0, "digester":Ljava/security/MessageDigest;
    .local v1, "ex":Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException;
    new-instance v2, Lorg/apache/http/auth/AuthenticationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsuppported digest algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v23

    .end local v23    # "digAlg":Ljava/lang/String;
    .local v4, "digAlg":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 288
    .end local v0    # "digester":Ljava/security/MessageDigest;
    .end local v1    # "ex":Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException;
    .end local v4    # "digAlg":Ljava/lang/String;
    .end local v8    # "algorithm":Ljava/lang/String;
    .end local v15    # "charset":Ljava/lang/String;
    .end local v19    # "realm":Ljava/lang/String;
    .end local v22    # "qoplist":Ljava/lang/String;
    .end local v30    # "qop":I
    .restart local v3    # "uri":Ljava/lang/String;
    .local v5, "realm":Ljava/lang/String;
    .restart local v10    # "method":Ljava/lang/String;
    .restart local v11    # "qop":I
    .local v12, "algorithm":Ljava/lang/String;
    .local v14, "qoplist":Ljava/lang/String;
    .restart local v18    # "opaque":Ljava/lang/String;
    :cond_1b
    move-object/from16 v19, v5

    move/from16 v30, v11

    move-object v8, v12

    move-object/from16 v22, v14

    move-object/from16 v5, v18

    move-object v12, v3

    move-object v14, v10

    .end local v3    # "uri":Ljava/lang/String;
    .end local v10    # "method":Ljava/lang/String;
    .end local v11    # "qop":I
    .end local v18    # "opaque":Ljava/lang/String;
    .local v5, "opaque":Ljava/lang/String;
    .restart local v8    # "algorithm":Ljava/lang/String;
    .local v12, "uri":Ljava/lang/String;
    .local v14, "method":Ljava/lang/String;
    .restart local v19    # "realm":Ljava/lang/String;
    .restart local v22    # "qoplist":Ljava/lang/String;
    .restart local v30    # "qop":I
    new-instance v0, Lorg/apache/http/auth/AuthenticationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "None of the qop methods is supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v22

    .end local v22    # "qoplist":Ljava/lang/String;
    .local v2, "qoplist":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    goto :goto_17

    :goto_16
    throw v0

    :goto_17
    goto :goto_16
.end method

.method private static createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 4
    .param p0, "digAlg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException;
        }
    .end annotation

    .line 240
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported algorithm in HTTP Digest authentication: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static encode([B)Ljava/lang/String;
    .locals 8
    .param p0, "binaryData"    # [B

    .line 464
    array-length v0, p0

    .line 465
    .local v0, "n":I
    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [C

    .line 466
    .local v1, "buffer":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 467
    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    .line 468
    .local v3, "low":I
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    .line 469
    .local v4, "high":I
    mul-int/lit8 v5, v2, 0x2

    sget-object v6, Lorg/apache/http/impl/auth/DigestScheme;->HEXADECIMAL:[C

    aget-char v7, v6, v4

    aput-char v7, v1, v5

    .line 470
    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-char v6, v6, v3

    aput-char v6, v1, v5

    .line 466
    .end local v3    # "low":I
    .end local v4    # "high":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 473
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method


# virtual methods
.method public authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;
    .locals 1
    .param p1, "credentials"    # Lorg/apache/http/auth/Credentials;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/http/impl/auth/DigestScheme;->authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/Header;
    .locals 4
    .param p1, "credentials"    # Lorg/apache/http/auth/Credentials;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .line 219
    const-string v0, "Credentials"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 220
    const-string v0, "HTTP request"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 221
    const-string v0, "realm"

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 224
    const-string v0, "nonce"

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "methodname"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uri"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v0, "charset"

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "charset":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 232
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, p2}, Lorg/apache/http/impl/auth/DigestScheme;->getCredentialsCharset(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/auth/DigestScheme;->createDigestHeader(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;

    move-result-object v0

    return-object v0

    .line 225
    .end local v1    # "charset":Ljava/lang/String;
    :cond_1
    new-instance v0, Lorg/apache/http/auth/AuthenticationException;

    const-string v1, "missing nonce in challenge"

    invoke-direct {v0, v1}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_2
    new-instance v0, Lorg/apache/http/auth/AuthenticationException;

    const-string v1, "missing realm in challenge"

    invoke-direct {v0, v1}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getA1()Ljava/lang/String;
    .locals 1

    .line 449
    iget-object v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->a1:Ljava/lang/String;

    return-object v0
.end method

.method getA2()Ljava/lang/String;
    .locals 1

    .line 453
    iget-object v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    return-object v0
.end method

.method getCnonce()Ljava/lang/String;
    .locals 1

    .line 445
    iget-object v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    .line 171
    const-string v0, "digest"

    return-object v0
.end method

.method public isComplete()Z
    .locals 2

    .line 156
    const-string v0, "stale"

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "s":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    const/4 v1, 0x0

    return v1

    .line 160
    :cond_0
    iget-boolean v1, p0, Lorg/apache/http/impl/auth/DigestScheme;->complete:Z

    return v1
.end method

.method public isConnectionBased()Z
    .locals 1

    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public overrideParamter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 185
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    return-void
.end method

.method public processChallenge(Lorg/apache/http/Header;)V
    .locals 2
    .param p1, "header"    # Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    .line 141
    invoke-super {p0, p1}, Lorg/apache/http/impl/auth/RFC2617Scheme;->processChallenge(Lorg/apache/http/Header;)V

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->complete:Z

    .line 143
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    return-void

    .line 144
    :cond_0
    new-instance v0, Lorg/apache/http/auth/MalformedChallengeException;

    const-string v1, "Authentication challenge is empty"

    invoke-direct {v0, v1}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 492
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "DIGEST [complete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/http/impl/auth/DigestScheme;->complete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", nonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/http/impl/auth/DigestScheme;->lastNonce:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/http/impl/auth/DigestScheme;->nounceCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
