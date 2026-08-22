.class public final Lcom/a/a/a/e/e;
.super Ljava/io/OutputStream;


# static fields
.field private static final a:[B


# instance fields
.field private final b:Ljava/util/LinkedList;

.field private c:I

.field private d:[B

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/a/a/a/e/e;->a:[B

    return-void
.end method

.method private a()V
    .locals 3

    const/high16 v0, 0x40000

    iget v1, p0, Lcom/a/a/a/e/e;->c:I

    iget-object v2, p0, Lcom/a/a/a/e/e;->d:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/a/a/a/e/e;->c:I

    iget v1, p0, Lcom/a/a/a/e/e;->c:I

    shr-int/lit8 v1, v1, 0x1

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/a/a/a/e/e;->b:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/a/a/a/e/e;->d:[B

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/a/a/a/e/e;->d:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/a/e/e;->e:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget v0, p0, Lcom/a/a/a/e/e;->e:I

    iget-object v1, p0, Lcom/a/a/a/e/e;->d:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/a/a/a/e/e;->a()V

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/e/e;->d:[B

    iget v1, p0, Lcom/a/a/a/e/e;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/a/e/e;->e:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public write(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/a/a/a/e/e;->a(I)V

    return-void
.end method

.method public write([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/a/a/a/e/e;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/a/a/a/e/e;->d:[B

    array-length v0, v0

    iget v1, p0, Lcom/a/a/a/e/e;->e:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/a/a/a/e/e;->d:[B

    iget v2, p0, Lcom/a/a/a/e/e;->e:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    iget v1, p0, Lcom/a/a/a/e/e;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/a/a/a/e/e;->e:I

    sub-int/2addr p3, v0

    :cond_0
    if-gtz p3, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/a/a/a/e/e;->a()V

    goto :goto_0
.end method
