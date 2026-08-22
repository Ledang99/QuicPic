.class Lcom/alensw/ui/c/cc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/cb;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/cb;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/cc;->a:Lcom/alensw/ui/c/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/c/cc;->a:Lcom/alensw/ui/c/cb;

    iget-object v0, v0, Lcom/alensw/ui/c/cb;->a:Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->j()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    iget-object v1, p0, Lcom/alensw/ui/c/cc;->a:Lcom/alensw/ui/c/cb;

    iget-object v1, v1, Lcom/alensw/ui/c/cb;->a:Lcom/alensw/a/e;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alensw/a/e;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/a/ba;->f(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/cc;->a:Lcom/alensw/ui/c/cb;

    iget-object v0, v0, Lcom/alensw/ui/c/cb;->b:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    iget-object v1, p0, Lcom/alensw/ui/c/cc;->a:Lcom/alensw/ui/c/cb;

    iget-object v1, v1, Lcom/alensw/ui/c/cb;->a:Lcom/alensw/a/e;

    invoke-virtual {v0, v1}, Lcom/alensw/a/x;->d(Lcom/alensw/a/e;)I

    move-result v0

    iget-object v1, p0, Lcom/alensw/ui/c/cc;->a:Lcom/alensw/ui/c/cb;

    iget-object v1, v1, Lcom/alensw/ui/c/cb;->b:Lcom/alensw/ui/c/bz;

    iget v1, v1, Lcom/alensw/ui/c/bz;->H:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/alensw/ui/c/cc;->a:Lcom/alensw/ui/c/cb;

    iget-object v1, v1, Lcom/alensw/ui/c/cb;->b:Lcom/alensw/ui/c/bz;

    iget-object v1, v1, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v1}, Lcom/alensw/ui/view/ImageGridView;->requestLayout()V

    iget-object v1, p0, Lcom/alensw/ui/c/cc;->a:Lcom/alensw/ui/c/cb;

    iget-object v1, v1, Lcom/alensw/ui/c/cb;->b:Lcom/alensw/ui/c/bz;

    iget-object v1, v1, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v1, v0}, Lcom/alensw/ui/view/ImageGridView;->b(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/c/cc;->a:Lcom/alensw/ui/c/cb;

    iget-object v0, v0, Lcom/alensw/ui/c/cb;->a:Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->p()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/cc;->a:Lcom/alensw/ui/c/cb;

    iget-object v0, v0, Lcom/alensw/ui/c/cb;->b:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    const-string v1, "Create blank picture failed!"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
