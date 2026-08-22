.class Lcom/alensw/PicFolder/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alensw/bean/CommonRoot;

.field final synthetic c:Lcom/alensw/PicFolder/ai;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/ai;ILcom/alensw/bean/CommonRoot;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/aj;->c:Lcom/alensw/PicFolder/ai;

    iput p2, p0, Lcom/alensw/PicFolder/aj;->a:I

    iput-object p3, p0, Lcom/alensw/PicFolder/aj;->b:Lcom/alensw/bean/CommonRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/alensw/PicFolder/aj;->c:Lcom/alensw/PicFolder/ai;

    iget-object v0, v0, Lcom/alensw/PicFolder/ai;->a:Lcom/alensw/PicFolder/GalleryActivity;

    invoke-static {v0}, Lcom/alensw/PicFolder/GalleryActivity;->e(Lcom/alensw/PicFolder/GalleryActivity;)V

    iget-object v0, p0, Lcom/alensw/PicFolder/aj;->c:Lcom/alensw/PicFolder/ai;

    iget-object v0, v0, Lcom/alensw/PicFolder/ai;->a:Lcom/alensw/PicFolder/GalleryActivity;

    invoke-static {v0}, Lcom/alensw/PicFolder/GalleryActivity;->a(Lcom/alensw/PicFolder/GalleryActivity;)Lcom/alensw/ui/view/bc;

    move-result-object v0

    iget v0, v0, Lcom/alensw/ui/view/bc;->c:I

    iget v1, p0, Lcom/alensw/PicFolder/aj;->a:I

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->v:Lcom/alensw/b/a/a;

    invoke-virtual {v0}, Lcom/alensw/b/a/a;->c()V

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->w:Lcom/alensw/b/a/a;

    invoke-virtual {v0}, Lcom/alensw/b/a/a;->c()V

    :cond_0
    const-string v0, "folders"

    iget-object v1, p0, Lcom/alensw/PicFolder/aj;->b:Lcom/alensw/bean/CommonRoot;

    iget-object v1, v1, Lcom/alensw/bean/CommonRoot;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/PicFolder/aj;->c:Lcom/alensw/PicFolder/ai;

    iget-object v0, v0, Lcom/alensw/PicFolder/ai;->a:Lcom/alensw/PicFolder/GalleryActivity;

    const-class v1, Lcom/alensw/ui/c/bz;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2, v5}, Lcom/alensw/PicFolder/GalleryActivity;->a(Ljava/lang/Class;Landroid/content/Intent;Landroid/os/Bundle;)Lcom/alensw/ui/c/cu;

    :goto_0
    iget-object v0, p0, Lcom/alensw/PicFolder/aj;->c:Lcom/alensw/PicFolder/ai;

    iget-object v0, v0, Lcom/alensw/PicFolder/ai;->a:Lcom/alensw/PicFolder/GalleryActivity;

    invoke-static {v0}, Lcom/alensw/PicFolder/GalleryActivity;->a(Lcom/alensw/PicFolder/GalleryActivity;)Lcom/alensw/ui/view/bc;

    move-result-object v0

    iget v1, p0, Lcom/alensw/PicFolder/aj;->a:I

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/bc;->a(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/PicFolder/aj;->c:Lcom/alensw/PicFolder/ai;

    iget-object v0, v0, Lcom/alensw/PicFolder/ai;->a:Lcom/alensw/PicFolder/GalleryActivity;

    const-class v1, Lcom/alensw/ui/c/z;

    iget-object v2, p0, Lcom/alensw/PicFolder/aj;->b:Lcom/alensw/bean/CommonRoot;

    invoke-virtual {v2}, Lcom/alensw/bean/CommonRoot;->k()Lcom/alensw/bean/CommonFolder;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alensw/PicFolder/aj;->b:Lcom/alensw/bean/CommonRoot;

    iget-object v4, v4, Lcom/alensw/bean/CommonRoot;->n:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/alensw/ui/c/z;->a(Lcom/alensw/bean/CommonFolder;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/alensw/PicFolder/GalleryActivity;->a(Ljava/lang/Class;Landroid/content/Intent;Landroid/os/Bundle;)Lcom/alensw/ui/c/cu;

    goto :goto_0
.end method
