.class abstract Lcom/a/a/a/b/a;
.super Ljava/io/Reader;


# instance fields
.field protected final a:Lcom/a/a/a/b/c;

.field protected b:Ljava/io/InputStream;

.field protected c:[B

.field protected d:I

.field protected e:I

.field protected f:[C


# direct methods
.method protected constructor <init>(Lcom/a/a/a/b/c;Ljava/io/InputStream;[BII)V
    .locals 1

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/b/a;->f:[C

    iput-object p1, p0, Lcom/a/a/a/b/a;->a:Lcom/a/a/a/b/c;

    iput-object p2, p0, Lcom/a/a/a/b/a;->b:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/a/a/a/b/a;->c:[B

    iput p4, p0, Lcom/a/a/a/b/a;->d:I

    iput p5, p0, Lcom/a/a/a/b/a;->e:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/b/a;->c:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/a/a/a/b/a;->c:[B

    iget-object v1, p0, Lcom/a/a/a/b/a;->a:Lcom/a/a/a/b/c;

    invoke-virtual {v1, v0}, Lcom/a/a/a/b/c;->a([B)V

    :cond_0
    return-void
.end method

.method protected a([CII)V
    .locals 3

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read(buf,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), cbuf["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected b()V
    .locals 2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Strange I/O stream, returned 0 bytes on read"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/b/a;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/a/a/a/b/a;->b:Ljava/io/InputStream;

    invoke-virtual {p0}, Lcom/a/a/a/b/a;->a()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public read()I
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/a/a/a/b/a;->f:[C

    if-nez v0, :cond_0

    new-array v0, v1, [C

    iput-object v0, p0, Lcom/a/a/a/b/a;->f:[C

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/b/a;->f:[C

    invoke-virtual {p0, v0, v2, v1}, Lcom/a/a/a/b/a;->read([CII)I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/b/a;->f:[C

    aget-char v0, v0, v2

    goto :goto_0
.end method
