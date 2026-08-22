.class public Lcom/alensw/b/d/d;
.super Lcom/alensw/b/a/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/b/a/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a(Ljava/io/RandomAccessFile;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alensw/b/d/d;->b(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/io/RandomAccessFile;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/alensw/b/d/d;->a(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/io/RandomAccessFile;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p1}, Lcom/alensw/b/c/b;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const-string v1, "geocode"

    invoke-super {p0, v0, v1}, Lcom/alensw/b/a/g;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected b(Ljava/io/RandomAccessFile;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
