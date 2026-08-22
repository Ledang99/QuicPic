.class Lcom/alensw/cloud/a/cu;
.super Lcom/alensw/cloud/a/by;


# instance fields
.field final synthetic a:Ljava/nio/channels/FileChannel;

.field final synthetic b:Lcom/alensw/cloud/a/cv;

.field final synthetic c:Lcom/alensw/cloud/a/cm;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/a/cm;ILcom/alensw/b/e/f;Ljava/nio/channels/FileChannel;Lcom/alensw/cloud/a/cv;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a/cu;->c:Lcom/alensw/cloud/a/cm;

    iput-object p4, p0, Lcom/alensw/cloud/a/cu;->a:Ljava/nio/channels/FileChannel;

    iput-object p5, p0, Lcom/alensw/cloud/a/cu;->b:Lcom/alensw/cloud/a/cv;

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/cloud/a/by;-><init>(Lcom/alensw/cloud/a/bv;ILcom/alensw/b/e/f;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;JLjava/io/InputStream;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p6, p3, p4, p5, v0}, Lcom/alensw/b/e/b;->a(Ljava/io/InputStream;Ljava/lang/String;JLcom/alensw/b/e/f;)Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/net/HttpURLConnection;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v0, "form-data; name=\"file\"; filename=\"%s\""

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/alensw/cloud/a/cu;->a:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    iget-object v2, p0, Lcom/alensw/cloud/a/cu;->b:Lcom/alensw/cloud/a/cv;

    iget-wide v2, v2, Lcom/alensw/cloud/a/cv;->b:J

    iget-object v4, p0, Lcom/alensw/cloud/a/cu;->b:Lcom/alensw/cloud/a/cv;

    iget v4, v4, Lcom/alensw/cloud/a/cv;->c:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    const-string v1, "form-data"

    iget-object v2, p0, Lcom/alensw/cloud/a/cu;->i:Lcom/alensw/b/e/f;

    new-array v3, v9, [Lcom/alensw/b/e/h;

    new-instance v4, Lcom/alensw/b/e/h;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v7, "Content-Disposition"

    aput-object v7, v5, v8

    aput-object v6, v5, v9

    invoke-direct {v4, v0, v5}, Lcom/alensw/b/e/h;-><init>(Ljava/lang/Object;[Ljava/lang/String;)V

    aput-object v4, v3, v8

    invoke-static {p1, v1, v2, v3}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/alensw/b/e/f;[Lcom/alensw/b/e/h;)V

    return-void
.end method
