.class Lcom/alensw/PicFolder/ag;
.super Landroid/support/a/a/a;


# instance fields
.field final synthetic a:Lcom/alensw/PicFolder/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/GalleryActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Ljava/lang/Object;II)V
    .locals 6

    iput-object p1, p0, Lcom/alensw/PicFolder/ag;->a:Lcom/alensw/PicFolder/GalleryActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/support/a/a/a;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Ljava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/a/a/a;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alensw/PicFolder/ag;->a:Lcom/alensw/PicFolder/GalleryActivity;

    const/high16 v1, 0x7f0a0000

    invoke-virtual {v0, v1}, Lcom/alensw/PicFolder/GalleryActivity;->setTitle(I)V

    iget-object v0, p0, Lcom/alensw/PicFolder/ag;->a:Lcom/alensw/PicFolder/GalleryActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alensw/PicFolder/GalleryActivity;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alensw/PicFolder/ag;->a:Lcom/alensw/PicFolder/GalleryActivity;

    invoke-static {v0}, Lcom/alensw/PicFolder/GalleryActivity;->d(Lcom/alensw/PicFolder/GalleryActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    iget-object v0, p0, Lcom/alensw/PicFolder/ag;->a:Lcom/alensw/PicFolder/GalleryActivity;

    sget-object v1, Lcom/alensw/b/f/b;->a:Lcom/alensw/b/f/b;

    invoke-static {v0, v1}, Lcom/alensw/b/f/a;->a(Landroid/content/Context;Lcom/alensw/b/f/b;)V

    return-void
.end method

.method public a(Landroid/view/View;ZI)V
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/ag;->a:Lcom/alensw/PicFolder/GalleryActivity;

    invoke-static {v0}, Lcom/alensw/PicFolder/GalleryActivity;->a(Lcom/alensw/PicFolder/GalleryActivity;)Lcom/alensw/ui/view/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/ui/view/bc;->a()V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/a/a/a;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alensw/PicFolder/ag;->a:Lcom/alensw/PicFolder/GalleryActivity;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/GalleryActivity;->c()Lcom/alensw/ui/c/cu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alensw/PicFolder/ag;->a:Lcom/alensw/PicFolder/GalleryActivity;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cu;->B()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alensw/PicFolder/GalleryActivity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alensw/PicFolder/ag;->a:Lcom/alensw/PicFolder/GalleryActivity;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cu;->C()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alensw/PicFolder/GalleryActivity;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/alensw/ui/c/cu;->D()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method
