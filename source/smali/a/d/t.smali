.class public final La/d/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/security/Principal;


# static fields
.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;

.field public static final d:La/d/t;

.field static final e:La/d/t;

.field static final f:La/d/t;

.field static final g:La/d/t;

.field private static final p:Ljava/util/Random;

.field private static q:La/e/e;

.field private static final r:[B


# instance fields
.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:[B

.field l:[B

.field m:Z

.field n:[B

.field o:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, La/d/t;->p:Ljava/util/Random;

    invoke-static {}, La/e/e;->a()La/e/e;

    move-result-object v0

    sput-object v0, La/d/t;->q:La/e/e;

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, La/d/t;->r:[B

    new-instance v0, La/d/t;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, La/d/t;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, La/d/t;->d:La/d/t;

    new-instance v0, La/d/t;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, La/d/t;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, La/d/t;->e:La/d/t;

    new-instance v0, La/d/t;

    const-string v1, "?"

    const-string v2, "GUEST"

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, La/d/t;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, La/d/t;->f:La/d/t;

    new-instance v0, La/d/t;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La/d/t;-><init>(Ljava/lang/String;)V

    sput-object v0, La/d/t;->g:La/d/t;

    return-void

    :array_0
    .array-data 1
        0x4bt
        0x47t
        0x53t
        0x21t
        0x40t
        0x23t
        0x24t
        0x25t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, La/d/t;->m:Z

    iput-object v0, p0, La/d/t;->n:[B

    iput-object v0, p0, La/d/t;->o:[B

    iput-object v0, p0, La/d/t;->j:Ljava/lang/String;

    iput-object v0, p0, La/d/t;->i:Ljava/lang/String;

    iput-object v0, p0, La/d/t;->h:Ljava/lang/String;

    if-eqz p1, :cond_3

    :try_start_0
    invoke-static {p1}, La/d/t;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/d/t;->h:Ljava/lang/String;

    add-int/lit8 v0, v2, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/16 v5, 0x3a

    if-ne v4, v5, :cond_0

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La/d/t;->j:Ljava/lang/String;

    :cond_2
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/d/t;->i:Ljava/lang/String;

    :cond_3
    invoke-static {}, La/d/t;->a()V

    iget-object v0, p0, La/d/t;->h:Ljava/lang/String;

    if-nez v0, :cond_4

    sget-object v0, La/d/t;->a:Ljava/lang/String;

    iput-object v0, p0, La/d/t;->h:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, La/d/t;->i:Ljava/lang/String;

    if-nez v0, :cond_5

    sget-object v0, La/d/t;->b:Ljava/lang/String;

    iput-object v0, p0, La/d/t;->i:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, La/d/t;->j:Ljava/lang/String;

    if-nez v0, :cond_6

    sget-object v0, La/d/t;->c:Ljava/lang/String;

    iput-object v0, p0, La/d/t;->j:Ljava/lang/String;

    :cond_6
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, La/d/t;->m:Z

    iput-object v0, p0, La/d/t;->n:[B

    iput-object v0, p0, La/d/t;->o:[B

    if-eqz p2, :cond_0

    const/16 v0, 0x40

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_4

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_0
    :goto_0
    iput-object p1, p0, La/d/t;->h:Ljava/lang/String;

    iput-object p2, p0, La/d/t;->i:Ljava/lang/String;

    iput-object p3, p0, La/d/t;->j:Ljava/lang/String;

    invoke-static {}, La/d/t;->a()V

    if-nez p1, :cond_1

    sget-object v0, La/d/t;->a:Ljava/lang/String;

    iput-object v0, p0, La/d/t;->h:Ljava/lang/String;

    :cond_1
    if-nez p2, :cond_2

    sget-object v0, La/d/t;->b:Ljava/lang/String;

    iput-object v0, p0, La/d/t;->i:Ljava/lang/String;

    :cond_2
    if-nez p3, :cond_3

    sget-object v0, La/d/t;->c:Ljava/lang/String;

    iput-object v0, p0, La/d/t;->j:Ljava/lang/String;

    :cond_3
    return-void

    :cond_4
    const/16 v0, 0x5c

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method static a()V
    .locals 1

    sget-object v0, La/d/t;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "?"

    sput-object v0, La/d/t;->a:Ljava/lang/String;

    const-string v0, "GUEST"

    sput-object v0, La/d/t;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, La/d/t;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Password parameter is required"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    new-instance v0, La/e/f;

    invoke-direct {v0}, La/e/f;-><init>()V

    const-string v1, "UTF-16LE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, La/e/f;->update([B)V

    invoke-virtual {v0}, La/e/f;->digest()[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3

    :try_start_0
    new-instance v0, La/e/f;

    invoke-direct {v0}, La/e/f;-><init>()V

    const-string v1, "UTF-16LE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, La/e/f;->update([B)V

    new-instance v1, La/e/c;

    invoke-virtual {v0}, La/e/f;->digest()[B

    move-result-object v0

    invoke-direct {v1, v0}, La/e/c;-><init>([B)V

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-16LE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, La/e/c;->update([B)V

    const-string v0, "UTF-16LE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, La/e/c;->update([B)V

    invoke-virtual {v1}, La/e/c;->digest()[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B
    .locals 4

    const/16 v0, 0x10

    :try_start_0
    new-array v0, v0, [B

    const/16 v0, 0x18

    new-array v0, v0, [B

    new-instance v1, La/e/f;

    invoke-direct {v1}, La/e/f;-><init>()V

    const-string v2, "UTF-16LE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, La/e/f;->update([B)V

    new-instance v2, La/e/c;

    invoke-virtual {v1}, La/e/f;->digest()[B

    move-result-object v1

    invoke-direct {v2, v1}, La/e/c;-><init>([B)V

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF-16LE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, La/e/c;->update([B)V

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF-16LE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, La/e/c;->update([B)V

    new-instance v1, La/e/c;

    invoke-virtual {v2}, La/e/c;->digest()[B

    move-result-object v2

    invoke-direct {v1, v2}, La/e/c;-><init>([B)V

    invoke-virtual {v1, p3}, La/e/c;->update([B)V

    invoke-virtual {v1, p4}, La/e/c;->update([B)V

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v0, v2, v3}, La/e/c;->digest([BII)I

    const/4 v1, 0x0

    const/16 v2, 0x10

    const/16 v3, 0x8

    invoke-static {p4, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, La/d/t;->q:La/e/e;

    sget v1, La/e/e;->a:I

    if-lez v1, :cond_0

    sget-object v1, La/d/t;->q:La/e/e;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;[B)[B
    .locals 7

    const/4 v6, 0x0

    const/16 v0, 0xe

    new-array v2, v0, [B

    const/16 v1, 0x15

    new-array v3, v1, [B

    const/16 v1, 0x18

    new-array v4, v1, [B

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    sget-object v5, La/d/u;->aa:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    array-length v1, v5

    if-le v1, v0, :cond_0

    :goto_0
    invoke-static {v5, v6, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, La/d/t;->r:[B

    invoke-static {v2, v0, v3}, La/d/t;->b([B[B[B)V

    invoke-static {v3, p1, v4}, La/d/t;->b([B[B[B)V

    return-object v4

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Try setting jcifs.encoding=US-ASCII"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static a([B[B[B)[B
    .locals 6

    const/16 v0, 0x8

    const/4 v5, 0x0

    new-array v0, v0, [B

    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v1, p2, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x15

    new-array v1, v1, [B

    const/16 v2, 0x10

    invoke-static {p0, v5, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x18

    new-array v2, v2, [B

    invoke-static {v1, v0, v2}, La/d/t;->b([B[B[B)V

    return-object v2

    :catch_0
    move-exception v0

    sget-object v1, La/d/t;->q:La/e/e;

    sget v1, La/e/e;->a:I

    if-lez v1, :cond_0

    sget-object v1, La/d/t;->q:La/e/e;

    invoke-virtual {v0, v1}, Ljava/security/GeneralSecurityException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "MD5"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static a([B[B[BII)[B
    .locals 4

    const/4 v3, 0x0

    new-instance v0, La/e/c;

    invoke-direct {v0, p0}, La/e/c;-><init>([B)V

    invoke-virtual {v0, p1}, La/e/c;->update([B)V

    invoke-virtual {v0, p2, p3, p4}, La/e/c;->update([BII)V

    invoke-virtual {v0}, La/e/c;->digest()[B

    move-result-object v0

    array-length v1, v0

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v2, p2

    invoke-static {p2, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static a([B[B[BJ[B)[B
    .locals 5

    const/16 v4, 0x8

    const/4 v1, 0x0

    if-eqz p5, :cond_1

    array-length v0, p5

    :goto_0
    add-int/lit8 v2, v0, 0x1c

    add-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    const/16 v3, 0x101

    invoke-static {v3, v2, v1}, La/e/b;->b(I[BI)I

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, La/e/b;->b(I[BI)I

    invoke-static {p3, p4, v2, v4}, La/e/b;->a(J[BI)I

    const/16 v3, 0x10

    invoke-static {p2, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x18

    invoke-static {v1, v2, v3}, La/e/b;->b(I[BI)I

    if-eqz p5, :cond_0

    const/16 v3, 0x1c

    invoke-static {p5, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1c

    invoke-static {v1, v2, v0}, La/e/b;->b(I[BI)I

    array-length v0, v2

    invoke-static {p0, p1, v2, v1, v0}, La/d/t;->a([B[B[BII)[B

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v6, v1, [B

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    new-array v8, v7, [C

    move v0, v2

    move v3, v2

    move v5, v2

    :goto_1
    if-ge v5, v7, :cond_2

    packed-switch v0, :pswitch_data_0

    move v4, v5

    :goto_2
    add-int/lit8 v5, v4, 0x1

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v4, 0x25

    if-ne v9, v4, :cond_1

    move v0, v1

    move v4, v5

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v3, 0x1

    aput-char v9, v8, v3

    move v3, v4

    move v4, v5

    goto :goto_2

    :pswitch_1
    add-int/lit8 v0, v5, 0x2

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x10

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v6, v2

    add-int/lit8 v0, v3, 0x1

    new-instance v4, Ljava/lang/String;

    const-string v9, "ASCII"

    invoke-direct {v4, v6, v2, v1, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v8, v3

    add-int/lit8 v3, v5, 0x1

    move v4, v3

    move v3, v0

    move v0, v2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static b([B[B[B)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x7

    const/4 v1, 0x0

    new-array v2, v5, [B

    new-array v3, v6, [B

    move v0, v1

    :goto_0
    array-length v4, p0

    div-int/lit8 v4, v4, 0x7

    if-ge v0, v4, :cond_0

    mul-int/lit8 v4, v0, 0x7

    invoke-static {p0, v4, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, La/e/a;

    invoke-direct {v4, v2}, La/e/a;-><init>([B)V

    invoke-virtual {v4, p1, v3}, La/e/a;->b([B[B)V

    mul-int/lit8 v4, v0, 0x8

    invoke-static {v3, v1, p2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;[B)[B
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x15

    new-array v2, v1, [B

    const/16 v1, 0x18

    new-array v3, v1, [B

    :try_start_0
    const-string v1, "UTF-16LE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    new-instance v1, La/e/f;

    invoke-direct {v1}, La/e/f;-><init>()V

    invoke-virtual {v1, v0}, La/e/f;->update([B)V

    const/4 v0, 0x0

    const/16 v4, 0x10

    :try_start_1
    invoke-virtual {v1, v2, v0, v4}, La/e/f;->digest([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    invoke-static {v2, p1, v3}, La/d/t;->b([B[B[B)V

    return-object v3

    :catch_0
    move-exception v1

    sget-object v4, La/d/t;->q:La/e/e;

    sget v4, La/e/e;->a:I

    if-lez v4, :cond_0

    sget-object v4, La/d/t;->q:La/e/e;

    invoke-virtual {v1, v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, La/d/t;->q:La/e/e;

    sget v1, La/e/e;->a:I

    if-lez v1, :cond_1

    sget-object v1, La/d/t;->q:La/e/e;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_1
.end method


# virtual methods
.method a([B[BI)V
    .locals 3

    iget-boolean v0, p0, La/d/t;->m:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, La/e/f;

    invoke-direct {v0}, La/e/f;-><init>()V

    iget-object v1, p0, La/d/t;->j:Ljava/lang/String;

    const-string v2, "UTF-16LE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, La/e/f;->update([B)V

    const/4 v1, 0x3

    packed-switch v1, :pswitch_data_0

    invoke-virtual {v0}, La/e/f;->digest()[B

    move-result-object v1

    invoke-virtual {v0, v1}, La/e/f;->update([B)V

    const/16 v1, 0x10

    invoke-virtual {v0, p2, p3, v1}, La/e/f;->digest([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, La/d/bc;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, La/d/bc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_0
    :try_start_1
    invoke-virtual {v0}, La/e/f;->digest()[B

    move-result-object v1

    invoke-virtual {v0, v1}, La/e/f;->update([B)V

    const/16 v1, 0x10

    invoke-virtual {v0, p2, p3, v1}, La/e/f;->digest([BII)I

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, La/d/t;->n:[B

    if-nez v1, :cond_1

    const/16 v1, 0x8

    new-array v1, v1, [B

    iput-object v1, p0, La/d/t;->n:[B

    sget-object v1, La/d/t;->p:Ljava/util/Random;

    iget-object v2, p0, La/d/t;->n:[B

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextBytes([B)V

    :cond_1
    new-instance v1, La/e/c;

    invoke-virtual {v0}, La/e/f;->digest()[B

    move-result-object v0

    invoke-direct {v1, v0}, La/e/c;-><init>([B)V

    iget-object v0, p0, La/d/t;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-16LE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, La/e/c;->update([B)V

    iget-object v0, p0, La/d/t;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-16LE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, La/e/c;->update([B)V

    invoke-virtual {v1}, La/e/c;->digest()[B

    move-result-object v0

    new-instance v1, La/e/c;

    invoke-direct {v1, v0}, La/e/c;-><init>([B)V

    invoke-virtual {v1, p1}, La/e/c;->update([B)V

    iget-object v2, p0, La/d/t;->n:[B

    invoke-virtual {v1, v2}, La/e/c;->update([B)V

    new-instance v2, La/e/c;

    invoke-direct {v2, v0}, La/e/c;-><init>([B)V

    invoke-virtual {v1}, La/e/c;->digest()[B

    move-result-object v0

    invoke-virtual {v2, v0}, La/e/c;->update([B)V

    const/16 v0, 0x10

    invoke-virtual {v2, p2, p3, v0}, La/e/c;->digest([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a([B)[B
    .locals 4

    iget-boolean v0, p0, La/d/t;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, La/d/t;->k:[B

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x3

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, La/d/t;->j:Ljava/lang/String;

    invoke-static {v0, p1}, La/d/t;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, La/d/t;->j:Ljava/lang/String;

    invoke-static {v0, p1}, La/d/t;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, La/d/t;->j:Ljava/lang/String;

    invoke-static {v0, p1}, La/d/t;->b(Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, La/d/t;->n:[B

    if-nez v0, :cond_1

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, La/d/t;->n:[B

    sget-object v0, La/d/t;->p:Ljava/util/Random;

    iget-object v1, p0, La/d/t;->n:[B

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    :cond_1
    iget-object v0, p0, La/d/t;->h:Ljava/lang/String;

    iget-object v1, p0, La/d/t;->i:Ljava/lang/String;

    iget-object v2, p0, La/d/t;->j:Ljava/lang/String;

    iget-object v3, p0, La/d/t;->n:[B

    invoke-static {v0, v1, v2, p1, v3}, La/d/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/d/t;->h:Ljava/lang/String;

    return-object v0
.end method

.method public b([B)[B
    .locals 1

    iget-boolean v0, p0, La/d/t;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, La/d/t;->l:[B

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x3

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, La/d/t;->j:Ljava/lang/String;

    invoke-static {v0, p1}, La/d/t;->b(Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, La/d/t;->j:Ljava/lang/String;

    invoke-static {v0, p1}, La/d/t;->b(Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/d/t;->i:Ljava/lang/String;

    return-object v0
.end method

.method public c([B)[B
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x3

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const/16 v0, 0x28

    new-array v0, v0, [B

    invoke-virtual {p0, p1, v0, v4}, La/d/t;->a([B[BI)V

    invoke-virtual {p0, p1}, La/d/t;->b([B)[B

    move-result-object v1

    const/16 v2, 0x10

    const/16 v3, 0x18

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :pswitch_1
    new-instance v0, La/d/bc;

    const-string v1, "NTLMv2 requires extended security (jcifs.smb.client.useExtendedSecurity must be true if jcifs.smb.lmCompatibility >= 3)"

    invoke-direct {v0, v1}, La/d/bc;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/d/t;->j:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, La/d/t;

    if-eqz v2, :cond_3

    check-cast p1, La/d/t;

    iget-object v2, p1, La/d/t;->h:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, La/d/t;->h:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, La/d/t;->i:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, La/d/t;->i:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, La/d/t;->m:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p1, La/d/t;->m:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, La/d/t;->k:[B

    iget-object v3, p1, La/d/t;->k:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, La/d/t;->l:[B

    iget-object v3, p1, La/d/t;->l:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, La/d/t;->m:Z

    if-nez v2, :cond_3

    iget-object v2, p0, La/d/t;->j:Ljava/lang/String;

    iget-object v3, p1, La/d/t;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, La/d/t;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, La/d/t;->h:Ljava/lang/String;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, La/d/t;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/d/t;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, La/d/t;->i:Ljava/lang/String;

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, La/d/t;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, La/d/t;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
