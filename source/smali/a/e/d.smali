.class public La/e/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:[C

.field private static final b:Ljava/lang/String;

.field private static final c:I

.field private static final d:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/e/d;->b:Ljava/lang/String;

    sget-object v0, La/e/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, La/e/d;->c:I

    const/16 v0, 0x30

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, La/e/d;->d:[C

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, La/e/d;->a:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
    .end array-data

    :array_1
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static a(II)Ljava/lang/String;
    .locals 2

    new-array v0, p1, [C

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, La/e/d;->a(I[CII)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static a(I[CII)V
    .locals 4

    move v0, p0

    :goto_0
    if-lez p3, :cond_2

    add-int v1, p2, p3

    add-int/lit8 v1, v1, -0x1

    array-length v2, p1

    if-ge v1, v2, :cond_0

    sget-object v2, La/e/d;->a:[C

    and-int/lit8 v3, v0, 0xf

    aget-char v2, v2, v3

    aput-char v2, p1, v1

    :cond_0
    if-eqz v0, :cond_1

    ushr-int/lit8 v0, v0, 0x4

    :cond_1
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static a(Ljava/io/PrintStream;[BII)V
    .locals 12

    const/16 v11, 0x7c

    const/16 v10, 0x10

    const/16 v9, 0x20

    const/4 v1, 0x0

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    rem-int/lit8 v3, p3, 0x10

    if-nez v3, :cond_3

    div-int/lit8 v0, p3, 0x10

    :goto_1
    sget v2, La/e/d;->c:I

    add-int/lit8 v2, v2, 0x4a

    mul-int/2addr v0, v2

    new-array v4, v0, [C

    new-array v5, v10, [C

    move v0, v1

    move v2, v1

    :cond_1
    const/4 v6, 0x5

    invoke-static {v2, v4, v0, v6}, La/e/d;->a(I[CII)V

    add-int/lit8 v6, v0, 0x5

    add-int/lit8 v0, v6, 0x1

    const/16 v7, 0x3a

    aput-char v7, v4, v6

    :cond_2
    if-ne v2, p3, :cond_4

    rsub-int/lit8 v6, v3, 0x10

    sget-object v7, La/e/d;->d:[C

    mul-int/lit8 v8, v6, 0x3

    invoke-static {v7, v1, v4, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int/lit8 v7, v6, 0x3

    add-int/2addr v0, v7

    sget-object v7, La/e/d;->d:[C

    invoke-static {v7, v1, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    add-int/lit8 v6, v0, 0x1

    aput-char v9, v4, v0

    add-int/lit8 v0, v6, 0x1

    aput-char v9, v4, v6

    add-int/lit8 v6, v0, 0x1

    aput-char v11, v4, v0

    invoke-static {v5, v1, v4, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v6, 0x10

    add-int/lit8 v6, v0, 0x1

    aput-char v11, v4, v0

    sget-object v0, La/e/d;->b:Ljava/lang/String;

    sget v7, La/e/d;->c:I

    invoke-virtual {v0, v1, v7, v4, v6}, Ljava/lang/String;->getChars(II[CI)V

    sget v0, La/e/d;->c:I

    add-int/2addr v0, v6

    if-lt v2, p3, :cond_1

    invoke-virtual {p0, v4}, Ljava/io/PrintStream;->println([C)V

    goto :goto_0

    :cond_3
    div-int/lit8 v0, p3, 0x10

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v6, v0, 0x1

    aput-char v9, v4, v0

    add-int v0, p2, v2

    aget-byte v0, p1, v0

    and-int/lit16 v7, v0, 0xff

    const/4 v0, 0x2

    invoke-static {v7, v4, v6, v0}, La/e/d;->a(I[CII)V

    add-int/lit8 v0, v6, 0x2

    if-ltz v7, :cond_5

    int-to-char v6, v7

    invoke-static {v6}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    rem-int/lit8 v6, v2, 0x10

    const/16 v7, 0x2e

    aput-char v7, v5, v6

    :goto_3
    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v6, v2, 0x10

    if-nez v6, :cond_2

    goto :goto_2

    :cond_6
    rem-int/lit8 v6, v2, 0x10

    int-to-char v7, v7

    aput-char v7, v5, v6

    goto :goto_3
.end method
