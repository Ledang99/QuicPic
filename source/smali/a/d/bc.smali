.class public La/d/bc;
.super Ljava/io/IOException;

# interfaces
.implements La/d/g;


# instance fields
.field private a:I

.field private b:Ljava/lang/Throwable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    return-void
.end method

.method constructor <init>(ILjava/lang/Throwable;)V
    .locals 1

    invoke-static {p1}, La/d/bc;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, La/d/bc;->b(I)I

    move-result v0

    iput v0, p0, La/d/bc;->a:I

    iput-object p2, p0, La/d/bc;->b:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-static {p1}, La/d/bc;->c(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    :goto_1
    iput p1, p0, La/d/bc;->a:I

    return-void

    :cond_0
    invoke-static {p1}, La/d/bc;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, La/d/bc;->b(I)I

    move-result p1

    goto :goto_1
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const v0, -0x3fffffff    # -2.0000002f

    iput v0, p0, La/d/bc;->a:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, La/d/bc;->b:Ljava/lang/Throwable;

    const v0, -0x3fffffff    # -2.0000002f

    iput v0, p0, La/d/bc;->a:I

    return-void
.end method

.method static a(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {p0, v1}, La/e/d;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b(I)I
    .locals 5

    const/4 v2, 0x0

    const/high16 v0, -0x40000000    # -2.0f

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    :goto_0
    return p0

    :cond_0
    sget-object v0, La/d/bc;->l:[[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    :goto_1
    if-lt v0, v1, :cond_3

    add-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    sget-object v4, La/d/bc;->l:[[I

    aget-object v4, v4, v3

    aget v4, v4, v2

    if-le p0, v4, :cond_1

    add-int/lit8 v1, v3, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, La/d/bc;->l:[[I

    aget-object v0, v0, v3

    aget v0, v0, v2

    if-ge p0, v0, :cond_2

    add-int/lit8 v0, v3, -0x1

    goto :goto_1

    :cond_2
    sget-object v0, La/d/bc;->l:[[I

    aget-object v0, v0, v3

    const/4 v1, 0x1

    aget p0, v0, v1

    goto :goto_0

    :cond_3
    const p0, -0x3fffffff    # -2.0000002f

    goto :goto_0
.end method

.method static c(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {p0, v1}, La/e/d;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, La/d/bc;->a:I

    return v0
.end method

.method public b()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, La/d/bc;->b:Ljava/lang/Throwable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, La/d/bc;->b:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v2, p0, La/d/bc;->b:Ljava/lang/Throwable;

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
