.class public abstract Lcom/alensw/cloud/oauth/ab;
.super Lcom/alensw/cloud/oauth/ah;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final n:Ljava/security/SecureRandom;

.field private static o:Lcom/a/a/a/b;


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "HMAC-SHA1"

    aput-object v1, v0, v2

    const-string v1, "RSA-SHA1"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alensw/cloud/oauth/ab;->a:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "HmacSHA1"

    aput-object v1, v0, v2

    const-string v1, "RsaSHA1"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alensw/cloud/oauth/ab;->c:[Ljava/lang/String;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/alensw/cloud/oauth/ab;->n:Ljava/security/SecureRandom;

    new-instance v0, Lcom/a/a/a/b;

    invoke-direct {v0}, Lcom/a/a/a/b;-><init>()V

    sput-object v0, Lcom/alensw/cloud/oauth/ab;->o:Lcom/a/a/a/b;

    return-void
.end method

.method public constructor <init>(Lcom/alensw/cloud/z;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p7}, Lcom/alensw/cloud/oauth/ah;-><init>(Lcom/alensw/cloud/z;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/alensw/cloud/oauth/ab;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/alensw/cloud/oauth/ab;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/alensw/cloud/oauth/ab;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/alensw/cloud/oauth/ab;->g:Ljava/lang/String;

    iput-object p6, p0, Lcom/alensw/cloud/oauth/ab;->h:Ljava/lang/String;

    iput p8, p0, Lcom/alensw/cloud/oauth/ab;->i:I

    return-void
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    sget-object v2, Lcom/alensw/cloud/oauth/ab;->c:[Ljava/lang/String;

    aget-object v2, v2, p0

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sget-object v1, Lcom/alensw/cloud/oauth/ab;->c:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/cloud/oauth/ab;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x3

    rsub-int/lit8 v0, v0, 0x3

    rem-int/lit8 v2, v0, 0x3

    array-length v0, p0

    add-int/2addr v0, v2

    invoke-static {v0, p0}, Lcom/alensw/cloud/oauth/ab;->a(I[B)[B

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    array-length v0, v3

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    aget-byte v5, v3, v0

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    shr-int/lit8 v7, v5, 0x12

    and-int/lit8 v7, v7, 0x3f

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    shr-int/lit8 v8, v5, 0xc

    and-int/lit8 v8, v8, 0x3f

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    shr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    and-int/lit8 v5, v5, 0x3f

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const-string v5, "=="

    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v3, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(I[B)[B
    .locals 3

    const/4 v2, 0x0

    new-array v0, p0, [B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method static synthetic c()Lcom/a/a/a/b;
    .locals 1

    sget-object v0, Lcom/alensw/cloud/oauth/ab;->o:Lcom/a/a/a/b;

    return-object v0
.end method

.method private static e()Ljava/lang/String;
    .locals 8

    const/4 v7, 0x4

    const/4 v1, 0x0

    new-array v2, v7, [B

    sget-object v0, Lcom/alensw/cloud/oauth/ab;->n:Ljava/security/SecureRandom;

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_0
    if-ge v0, v7, :cond_0

    const-string v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aget-byte v6, v2, v0

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static f()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/alensw/b/e/f;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alensw/cloud/oauth/ab;->f:Ljava/lang/String;

    const-string v3, "GET"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "oauth_callback"

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/alensw/cloud/oauth/ab;->b:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {p0, v0, v3, v4}, Lcom/alensw/cloud/oauth/ab;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/alensw/cloud/oauth/ab;->a(Ljava/lang/String;Lcom/alensw/b/e/f;)Ljava/util/Map;

    move-result-object v3

    const-string v0, "oauth_token"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alensw/cloud/oauth/ab;->j:Ljava/lang/String;

    const-string v0, "oauth_token_secret"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alensw/cloud/oauth/ab;->k:Ljava/lang/String;

    const-string v0, "oauth_callback_confirmed"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v3, "true"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alensw/cloud/oauth/ab;->l:Z

    iget-object v0, p0, Lcom/alensw/cloud/oauth/ab;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/oauth/ab;->k:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "no oauth token found"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/alensw/cloud/oauth/ab;->l:Z

    if-nez v0, :cond_3

    const-string v0, "OAuthApi10"

    const-string v1, "OAuth 1.0a claims callback must be redirected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/alensw/cloud/oauth/ab;->g:Ljava/lang/String;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_4

    const-string v0, "&"

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alensw/cloud/oauth/ab;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "oauth_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/cloud/oauth/ab;->j:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alensw/cloud/oauth/ab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const-string v0, "?"

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alensw/cloud/oauth/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/TreeMap;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const-string v0, "oauth_nonce"

    invoke-static {}, Lcom/alensw/cloud/oauth/ab;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "oauth_timestamp"

    invoke-static {}, Lcom/alensw/cloud/oauth/ab;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "oauth_version"

    const-string v2, "1.0"

    invoke-virtual {p4, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "oauth_signature_method"

    sget-object v2, Lcom/alensw/cloud/oauth/ab;->a:[Ljava/lang/String;

    iget v3, p0, Lcom/alensw/cloud/oauth/ab;->i:I

    aget-object v2, v2, v3

    invoke-virtual {p4, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "oauth_consumer_key"

    iget-object v2, p0, Lcom/alensw/cloud/oauth/ab;->d:Ljava/lang/String;

    invoke-virtual {p4, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alensw/cloud/oauth/ab;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "oauth_token"

    iget-object v2, p0, Lcom/alensw/cloud/oauth/ab;->j:Ljava/lang/String;

    invoke-virtual {p4, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move v0, v1

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p4, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    add-int/lit8 v2, v1, 0x1

    if-eqz v1, :cond_2

    const-string v1, "&"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alensw/cloud/oauth/ab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/oauth/ab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alensw/cloud/oauth/ab;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/cloud/oauth/ab;->k:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alensw/cloud/oauth/ab;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget v1, p0, Lcom/alensw/cloud/oauth/ab;->i:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/alensw/cloud/oauth/ab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/alensw/cloud/oauth/ab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/alensw/cloud/oauth/ab;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "oauth_signature"

    invoke-virtual {p4, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "&oauth_signature="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/oauth/ab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alensw/cloud/oauth/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/alensw/b/e/f;)Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "GET"

    const/4 v2, 0x0

    new-instance v3, Lcom/alensw/cloud/oauth/ac;

    invoke-direct {v3, p0, p2, v0}, Lcom/alensw/cloud/oauth/ac;-><init>(Lcom/alensw/cloud/oauth/ab;Lcom/alensw/b/e/f;Ljava/util/Map;)V

    invoke-static {p1, v1, v2, v3}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V

    return-object v0
.end method

.method protected a(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/alensw/cloud/oauth/aj;)V
    .locals 1

    iget-object v0, p1, Lcom/alensw/cloud/oauth/aj;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/alensw/cloud/oauth/ab;->j:Ljava/lang/String;

    iget-object v0, p1, Lcom/alensw/cloud/oauth/aj;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/alensw/cloud/oauth/ab;->k:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/alensw/cloud/oauth/aj;Lcom/alensw/b/e/f;)V
    .locals 5

    iget-object v0, p0, Lcom/alensw/cloud/oauth/ab;->h:Ljava/lang/String;

    const-string v1, "GET"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "oauth_verifier"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alensw/cloud/oauth/ab;->m:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/alensw/cloud/oauth/ab;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/alensw/cloud/oauth/ab;->a(Ljava/lang/String;Lcom/alensw/b/e/f;)Ljava/util/Map;

    move-result-object v1

    const-string v0, "oauth_token"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alensw/cloud/oauth/ab;->j:Ljava/lang/String;

    const-string v0, "oauth_token_secret"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alensw/cloud/oauth/ab;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/alensw/cloud/oauth/ab;->j:Ljava/lang/String;

    iput-object v0, p1, Lcom/alensw/cloud/oauth/aj;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alensw/cloud/oauth/ab;->k:Ljava/lang/String;

    iput-object v0, p1, Lcom/alensw/cloud/oauth/aj;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/alensw/cloud/oauth/ab;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "oauth_token"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alensw/cloud/oauth/ab;->j:Ljava/lang/String;

    const-string v2, "oauth_verifier"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alensw/cloud/oauth/ab;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/alensw/cloud/oauth/ab;->j:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alensw/cloud/oauth/ab;->m:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
