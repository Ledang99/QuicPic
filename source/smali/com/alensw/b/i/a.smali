.class public Lcom/alensw/b/i/a;
.super Lcom/alensw/b/i/c;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(IIILandroid/graphics/Bitmap$Config;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alensw/b/i/c;-><init>(I)V

    iput p2, p0, Lcom/alensw/b/i/a;->a:I

    iput p3, p0, Lcom/alensw/b/i/a;->b:I

    iput-object p4, p0, Lcom/alensw/b/i/a;->c:Landroid/graphics/Bitmap$Config;

    return-void
.end method


# virtual methods
.method public a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/alensw/b/i/a;->a:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/alensw/b/i/a;->b:I

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/alensw/b/i/a;->c:Landroid/graphics/Bitmap$Config;

    if-ne p3, v1, :cond_0

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/alensw/b/i/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-nez v0, :cond_1

    iget v0, p0, Lcom/alensw/b/i/a;->a:I

    iget v1, p0, Lcom/alensw/b/i/a;->b:I

    iget-object v2, p0, Lcom/alensw/b/i/a;->c:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lcom/alensw/b/h/b;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/alensw/b/i/a;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/alensw/b/i/a;->a:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/alensw/b/i/a;->b:I

    if-ne v0, v1, :cond_1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/alensw/b/i/c;->b(Ljava/lang/Object;)V

    monitor-exit p0

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/alensw/b/i/a;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method
