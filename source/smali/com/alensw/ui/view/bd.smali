.class Lcom/alensw/ui/view/bd;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/alensw/ui/view/bc;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/bc;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/bd;->a:Lcom/alensw/ui/view/bc;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/view/bd;->a:Lcom/alensw/ui/view/bc;

    invoke-static {v0}, Lcom/alensw/ui/view/bc;->a(Lcom/alensw/ui/view/bc;)Lcom/alensw/PicFolder/GalleryActivity;

    move-result-object v0

    new-instance v1, Lcom/alensw/ui/view/be;

    invoke-direct {v1, p0}, Lcom/alensw/ui/view/be;-><init>(Lcom/alensw/ui/view/bd;)V

    invoke-virtual {v0, v1}, Lcom/alensw/PicFolder/GalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
