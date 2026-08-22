.class Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;
.super Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;
.source "NTLMEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/auth/NTLMEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Type3Message"
.end annotation


# instance fields
.field protected domainBytes:[B

.field protected hostBytes:[B

.field protected lmResp:[B

.field protected ntResp:[B

.field protected sessionKey:[B

.field protected type2Flags:I

.field protected userBytes:[B


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    move-object v1, p0

    move/from16 v2, p6

    invoke-direct {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;-><init>()V

    iput v2, v1, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I

    invoke-static {p2}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$1600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$1700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;

    move-object v4, v0

    move-object v5, v11

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v4 .. v10}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B)V

    const/high16 v0, 0x800000

    and-int/2addr v0, v2

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    if-eqz p8, :cond_1

    if-eqz p7, :cond_1

    :try_start_0
    invoke-virtual {v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMv2Response()[B

    move-result-object v0

    iput-object v0, v1, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    invoke-virtual {v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getLMv2Response()[B

    move-result-object v0

    iput-object v0, v1, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    and-int/lit16 v0, v2, 0x80

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getLanManagerSessionKey()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMv2UserSessionKey()[B

    move-result-object v0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x80000

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getNTLM2SessionResponse()[B

    move-result-object v0

    iput-object v0, v1, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    invoke-virtual {v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getLM2SessionResponse()[B

    move-result-object v0

    iput-object v0, v1, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    and-int/lit16 v0, v2, 0x80

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getLanManagerSessionKey()[B

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getNTLM2SessionResponseUserSessionKey()[B

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMResponse()[B

    move-result-object v0

    iput-object v0, v1, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    invoke-virtual {v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getLMResponse()[B

    move-result-object v0

    iput-object v0, v1, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    and-int/lit16 v0, v2, 0x80

    if-eqz v0, :cond_4

    invoke-virtual {v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getLanManagerSessionKey()[B

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMUserSessionKey()[B

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/http/impl/auth/NTLMEngineException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    move-object v6, v5

    const/4 v7, 0x0

    new-array v7, v7, [B

    iput-object v7, v1, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    invoke-virtual {v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getLMResponse()[B

    move-result-object v7

    iput-object v7, v1, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    and-int/lit16 v7, v2, 0x80

    if-eqz v7, :cond_5

    invoke-virtual {v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getLanManagerSessionKey()[B

    move-result-object v6

    move-object v0, v6

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getLMUserSessionKey()[B

    move-result-object v0

    :goto_1
    and-int/lit8 v6, v2, 0x10

    if-eqz v6, :cond_7

    const/high16 v6, 0x40000000    # 2.0f

    and-int/2addr v6, v2

    if-eqz v6, :cond_6

    invoke-virtual {v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getSecondaryKey()[B

    move-result-object v6

    invoke-static {v6, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->RC4([B[B)[B

    move-result-object v6

    iput-object v6, v1, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    goto :goto_2

    :cond_6
    iput-object v0, v1, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    goto :goto_2

    :cond_7
    iput-object v5, v1, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    :goto_2
    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$1500()Ljava/nio/charset/Charset;

    move-result-object v6

    if-eqz v6, :cond_a

    if-eqz v3, :cond_8

    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$1500()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    goto :goto_3

    :cond_8
    move-object v6, v5

    :goto_3
    iput-object v6, v1, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->hostBytes:[B

    if-eqz v11, :cond_9

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$1500()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    :cond_9
    iput-object v5, v1, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->domainBytes:[B

    invoke-static {}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$1500()Ljava/nio/charset/Charset;

    move-result-object v5

    move-object v6, p3

    invoke-virtual {p3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    iput-object v5, v1, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->userBytes:[B

    return-void

    :cond_a
    move-object v6, p3

    new-instance v5, Lorg/apache/http/impl/auth/NTLMEngineException;

    const-string v7, "Unicode not supported"

    invoke-direct {v5, v7}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method getResponse()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    array-length v1, v1

    iget-object v2, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    array-length v2, v2

    iget-object v3, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->domainBytes:[B

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    array-length v3, v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v5, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->hostBytes:[B

    if-eqz v5, :cond_1

    array-length v4, v5

    :cond_1
    iget-object v5, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->userBytes:[B

    array-length v5, v5

    iget-object v6, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    if-eqz v6, :cond_2

    array-length v6, v6

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    const/16 v7, 0x48

    add-int/lit8 v8, v2, 0x48

    add-int v9, v8, v1

    add-int v10, v9, v3

    add-int v11, v10, v5

    add-int v12, v11, v4

    add-int v13, v12, v6

    const/4 v14, 0x3

    invoke-virtual {v0, v13, v14}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->prepareResponse(II)V

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    const/16 v14, 0x48

    invoke-virtual {v0, v14}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    invoke-virtual {v0, v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    invoke-virtual {v0, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    invoke-virtual {v0, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    invoke-virtual {v0, v9}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    invoke-virtual {v0, v5}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    invoke-virtual {v0, v5}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    invoke-virtual {v0, v10}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    invoke-virtual {v0, v11}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    invoke-virtual {v0, v6}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    invoke-virtual {v0, v6}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    invoke-virtual {v0, v12}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    iget v14, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I

    and-int/lit16 v15, v14, 0x80

    move/from16 v16, v1

    and-int/lit16 v1, v14, 0x200

    or-int/2addr v1, v15

    const/high16 v15, 0x80000

    and-int/2addr v15, v14

    or-int/2addr v1, v15

    const/high16 v15, 0x2000000

    or-int/2addr v1, v15

    const v15, 0x8000

    and-int/2addr v15, v14

    or-int/2addr v1, v15

    and-int/lit8 v15, v14, 0x20

    or-int/2addr v1, v15

    and-int/lit8 v15, v14, 0x10

    or-int/2addr v1, v15

    const/high16 v15, 0x20000000

    and-int/2addr v15, v14

    or-int/2addr v1, v15

    const/high16 v15, -0x80000000

    and-int/2addr v15, v14

    or-int/2addr v1, v15

    const/high16 v15, 0x40000000    # 2.0f

    and-int/2addr v15, v14

    or-int/2addr v1, v15

    const/high16 v15, 0x800000

    and-int/2addr v15, v14

    or-int/2addr v1, v15

    and-int/lit8 v15, v14, 0x1

    or-int/2addr v1, v15

    and-int/lit8 v14, v14, 0x4

    or-int/2addr v1, v14

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    const/16 v1, 0x105

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    const/16 v1, 0xa28

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    const/16 v1, 0xf00

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    iget-object v1, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addBytes([B)V

    iget-object v1, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addBytes([B)V

    iget-object v1, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->domainBytes:[B

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addBytes([B)V

    iget-object v1, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->userBytes:[B

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addBytes([B)V

    iget-object v1, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->hostBytes:[B

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addBytes([B)V

    iget-object v1, v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addBytes([B)V

    :cond_3
    invoke-super/range {p0 .. p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->getResponse()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
