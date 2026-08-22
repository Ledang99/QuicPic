.class Lcom/alensw/PicFolder/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/b/h/j;

.field final synthetic b:Lcom/alensw/PicFolder/q;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/q;Lcom/alensw/b/h/j;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/r;->b:Lcom/alensw/PicFolder/q;

    iput-object p2, p0, Lcom/alensw/PicFolder/r;->a:Lcom/alensw/b/h/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Landroid/media/FaceDetector$Face;
    .locals 4

    :try_start_0
    new-instance v0, Landroid/media/FaceDetector;

    iget-object v1, p0, Lcom/alensw/PicFolder/r;->a:Lcom/alensw/b/h/j;

    invoke-virtual {v1}, Lcom/alensw/b/h/j;->e()I

    move-result v1

    iget-object v2, p0, Lcom/alensw/PicFolder/r;->a:Lcom/alensw/b/h/j;

    invoke-virtual {v2}, Lcom/alensw/b/h/j;->f()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/media/FaceDetector;-><init>(III)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/media/FaceDetector$Face;

    iget-object v2, p0, Lcom/alensw/PicFolder/r;->a:Lcom/alensw/b/h/j;

    invoke-virtual {v2}, Lcom/alensw/b/h/j;->d()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-direct {p0}, Lcom/alensw/PicFolder/r;->a()Landroid/media/FaceDetector$Face;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/PicFolder/r;->b:Lcom/alensw/PicFolder/q;

    iget-object v1, v1, Lcom/alensw/PicFolder/q;->s:Landroid/os/Handler;

    new-instance v2, Lcom/alensw/PicFolder/s;

    invoke-direct {v2, p0, v0}, Lcom/alensw/PicFolder/s;-><init>(Lcom/alensw/PicFolder/r;Landroid/media/FaceDetector$Face;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
