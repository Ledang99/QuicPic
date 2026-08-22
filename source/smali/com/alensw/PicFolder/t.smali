.class Lcom/alensw/PicFolder/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/PicFolder/q;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/q;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/t;->a:Lcom/alensw/PicFolder/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/PicFolder/t;->a:Lcom/alensw/PicFolder/q;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/alensw/PicFolder/q;->a(Landroid/graphics/Bitmap$Config;)Lcom/alensw/b/h/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alensw/PicFolder/t;->a:Lcom/alensw/PicFolder/q;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/alensw/PicFolder/q;->h:Z

    iget-object v1, p0, Lcom/alensw/PicFolder/t;->a:Lcom/alensw/PicFolder/q;

    invoke-virtual {v1, v0}, Lcom/alensw/PicFolder/q;->a(Lcom/alensw/b/h/j;)V

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->m()I

    :cond_0
    return-void
.end method
