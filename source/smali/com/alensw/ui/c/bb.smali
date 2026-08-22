.class Lcom/alensw/ui/c/bb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/c/n;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/as;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/as;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/bb;->a:Lcom/alensw/ui/c/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/bb;->a:Lcom/alensw/ui/c/as;

    invoke-static {v0}, Lcom/alensw/ui/c/as;->c(Lcom/alensw/ui/c/as;)V

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

    iget-object v1, p0, Lcom/alensw/ui/c/bb;->a:Lcom/alensw/ui/c/as;

    invoke-static {v1}, Lcom/alensw/ui/c/as;->d(Lcom/alensw/ui/c/as;)Lcom/alensw/bean/CommonFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alensw/a/ao;->a(Landroid/net/Uri;Z)V

    iget-object v0, p0, Lcom/alensw/ui/c/bb;->a:Lcom/alensw/ui/c/as;

    invoke-static {v0}, Lcom/alensw/ui/c/as;->e(Lcom/alensw/ui/c/as;)V

    :cond_0
    return-void
.end method
