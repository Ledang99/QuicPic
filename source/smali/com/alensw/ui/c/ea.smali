.class Lcom/alensw/ui/c/ea;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/c/o;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/dp;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/dp;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/ea;->a:Lcom/alensw/ui/c/dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->u:Lcom/alensw/a/ao;

    iget-object v1, p0, Lcom/alensw/ui/c/ea;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v1}, Lcom/alensw/ui/c/dp;->b(Lcom/alensw/ui/c/dp;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alensw/a/ao;->a(Landroid/net/Uri;Z)V

    iget-object v0, p0, Lcom/alensw/ui/c/ea;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v0}, Lcom/alensw/ui/c/dp;->a(Lcom/alensw/ui/c/dp;)Lcom/alensw/a/e;

    move-result-object v0

    iput p3, v0, Lcom/alensw/a/e;->c:I

    iget-object v0, p0, Lcom/alensw/ui/c/ea;->a:Lcom/alensw/ui/c/dp;

    iget-object v1, p0, Lcom/alensw/ui/c/ea;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v1}, Lcom/alensw/ui/c/dp;->a(Lcom/alensw/ui/c/dp;)Lcom/alensw/a/e;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/alensw/a/e;->d(I)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alensw/ui/c/dp;->a(Lcom/alensw/ui/c/dp;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v0, p0, Lcom/alensw/ui/c/ea;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v0}, Lcom/alensw/ui/c/dp;->e(Lcom/alensw/ui/c/dp;)Lcom/alensw/ui/view/PictureView;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/ea;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v1}, Lcom/alensw/ui/c/dp;->b(Lcom/alensw/ui/c/dp;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/PictureView;->setPictureUri(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/alensw/ui/c/ea;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v0}, Lcom/alensw/ui/c/dp;->i(Lcom/alensw/ui/c/dp;)Lcom/alensw/ui/c/df;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/ea;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v0}, Lcom/alensw/ui/c/dp;->i(Lcom/alensw/ui/c/dp;)Lcom/alensw/ui/c/df;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/ea;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v1}, Lcom/alensw/ui/c/dp;->b(Lcom/alensw/ui/c/dp;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/df;->a(Landroid/net/Uri;)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/ea;->a:Lcom/alensw/ui/c/dp;

    invoke-static {p2}, Lcom/alensw/b/l/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/dp;->b(Ljava/lang/CharSequence;)V

    return-void
.end method
