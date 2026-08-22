.class Lcom/alensw/ui/c/dy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/c/n;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/dp;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/dp;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/dy;->a:Lcom/alensw/ui/c/dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/dy;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v0}, Lcom/alensw/ui/c/dp;->f(Lcom/alensw/ui/c/dp;)V

    :cond_0
    return-void
.end method

.method public a(ZLjava/util/HashSet;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->u:Lcom/alensw/a/ao;

    iget-object v1, p0, Lcom/alensw/ui/c/dy;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v1}, Lcom/alensw/ui/c/dp;->b(Lcom/alensw/ui/c/dp;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alensw/a/ao;->a(Landroid/net/Uri;Z)V

    iget-object v0, p0, Lcom/alensw/ui/c/dy;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v0}, Lcom/alensw/ui/c/dp;->g(Lcom/alensw/ui/c/dp;)V

    :cond_0
    return-void
.end method
