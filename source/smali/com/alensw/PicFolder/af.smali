.class Lcom/alensw/PicFolder/af;
.super Lcom/alensw/ui/view/bt;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alensw/PicFolder/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/GalleryActivity;Landroid/view/View;Landroid/view/animation/Interpolator;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/af;->b:Lcom/alensw/PicFolder/GalleryActivity;

    iput-boolean p4, p0, Lcom/alensw/PicFolder/af;->a:Z

    invoke-direct {p0, p2, p3}, Lcom/alensw/ui/view/bt;-><init>(Landroid/view/View;Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/PicFolder/af;->b:Lcom/alensw/PicFolder/GalleryActivity;

    invoke-static {v0}, Lcom/alensw/PicFolder/GalleryActivity;->c(Lcom/alensw/PicFolder/GalleryActivity;)Landroid/support/a/a/a;

    move-result-object v1

    iget-boolean v0, p0, Lcom/alensw/PicFolder/af;->a:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/a/a/a;->a(F)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/PicFolder/af;->a:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    :cond_0
    iget-object v0, p0, Lcom/alensw/PicFolder/af;->b:Lcom/alensw/PicFolder/GalleryActivity;

    invoke-static {v0}, Lcom/alensw/PicFolder/GalleryActivity;->c(Lcom/alensw/PicFolder/GalleryActivity;)Landroid/support/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/a/a/a;->a(F)V

    return-void
.end method
