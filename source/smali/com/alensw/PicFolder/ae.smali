.class Lcom/alensw/PicFolder/ae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/PicFolder/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/GalleryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/ae;->a:Lcom/alensw/PicFolder/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/alensw/PicFolder/ae;->a:Lcom/alensw/PicFolder/GalleryActivity;

    invoke-static {v0}, Lcom/alensw/PicFolder/GalleryActivity;->a(Lcom/alensw/PicFolder/GalleryActivity;)Lcom/alensw/ui/view/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/ui/view/bc;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/ae;->a:Lcom/alensw/PicFolder/GalleryActivity;

    invoke-static {v0}, Lcom/alensw/PicFolder/GalleryActivity;->a(Lcom/alensw/PicFolder/GalleryActivity;)Lcom/alensw/ui/view/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/ui/view/bc;->a()V

    iget-object v0, p0, Lcom/alensw/PicFolder/ae;->a:Lcom/alensw/PicFolder/GalleryActivity;

    invoke-static {v0}, Lcom/alensw/PicFolder/GalleryActivity;->b(Lcom/alensw/PicFolder/GalleryActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, p0, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alensw/PicFolder/ae;->a:Lcom/alensw/PicFolder/GalleryActivity;

    invoke-static {v0}, Lcom/alensw/PicFolder/GalleryActivity;->b(Lcom/alensw/PicFolder/GalleryActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->c(I)V

    goto :goto_0
.end method
