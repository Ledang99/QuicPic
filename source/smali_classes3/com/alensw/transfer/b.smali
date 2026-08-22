.class public Lcom/alensw/transfer/b;
.super Ljava/io/FilterInputStream;


# instance fields
.field private a:Lcom/alensw/transfer/c;


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;Lcom/alensw/transfer/c;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lcom/alensw/transfer/b;->a:Lcom/alensw/transfer/c;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    iget-object v0, p0, Lcom/alensw/transfer/b;->a:Lcom/alensw/transfer/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/transfer/b;->a:Lcom/alensw/transfer/c;

    invoke-interface {v0}, Lcom/alensw/transfer/c;->a()V

    :cond_0
    return-void
.end method

.method public read()I
    .locals 4

    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/alensw/transfer/b;->a:Lcom/alensw/transfer/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alensw/transfer/b;->a:Lcom/alensw/transfer/c;

    const-wide/16 v2, 0x1

    invoke-interface {v1, v2, v3}, Lcom/alensw/transfer/c;->a(J)V

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 4

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    iget-object v1, p0, Lcom/alensw/transfer/b;->a:Lcom/alensw/transfer/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alensw/transfer/b;->a:Lcom/alensw/transfer/c;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/alensw/transfer/c;->a(J)V

    :cond_0
    return v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 3

    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/alensw/transfer/b;->a:Lcom/alensw/transfer/c;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alensw/transfer/b;->a:Lcom/alensw/transfer/c;

    invoke-interface {v2, v0, v1}, Lcom/alensw/transfer/c;->a(J)V

    :cond_0
    return-wide v0
.end method
