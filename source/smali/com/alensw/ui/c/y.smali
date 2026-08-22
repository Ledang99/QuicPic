.class Lcom/alensw/ui/c/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/a/az;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/p;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/p;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/y;->a:Lcom/alensw/ui/c/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alensw/bean/CommonFolder;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/y;->a:Lcom/alensw/ui/c/p;

    invoke-static {v0}, Lcom/alensw/ui/c/p;->g(Lcom/alensw/ui/c/p;)Lcom/alensw/bean/CommonFolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alensw/bean/CommonFolder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/y;->a:Lcom/alensw/ui/c/p;

    invoke-virtual {v0}, Lcom/alensw/ui/c/p;->A()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/y;->a:Lcom/alensw/ui/c/p;

    invoke-virtual {v0}, Lcom/alensw/ui/c/p;->e_()V

    :cond_0
    return-void
.end method

.method public b(Lcom/alensw/bean/CommonFolder;Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alensw/ui/c/y;->a:Lcom/alensw/ui/c/p;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alensw/ui/c/p;->a(Lcom/alensw/ui/c/p;Lcom/alensw/b/k/d;)Lcom/alensw/b/k/d;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/y;->a:Lcom/alensw/ui/c/p;

    invoke-virtual {v0, v3}, Lcom/alensw/ui/c/p;->c(Z)V

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/y;->a:Lcom/alensw/ui/c/p;

    invoke-static {v0}, Lcom/alensw/ui/c/p;->g(Lcom/alensw/ui/c/p;)Lcom/alensw/bean/CommonFolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alensw/bean/CommonFolder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/y;->a:Lcom/alensw/ui/c/p;

    invoke-static {v0}, Lcom/alensw/ui/c/p;->g(Lcom/alensw/ui/c/p;)Lcom/alensw/bean/CommonFolder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alensw/bean/CommonFolder;->a(I)Lcom/alensw/bean/CommonFile;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/y;->a:Lcom/alensw/ui/c/p;

    invoke-static {v1}, Lcom/alensw/ui/c/p;->g(Lcom/alensw/ui/c/p;)Lcom/alensw/bean/CommonFolder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/alensw/bean/CommonFolder;->a(Lcom/alensw/bean/CommonFolder;Z)V

    if-eqz v0, :cond_1

    sget-object v1, Lcom/alensw/bean/CommonFile;->a:Lcom/alensw/bean/CommonFile;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/alensw/ui/c/y;->a:Lcom/alensw/ui/c/p;

    invoke-static {v1}, Lcom/alensw/ui/c/p;->g(Lcom/alensw/ui/c/p;)Lcom/alensw/bean/CommonFolder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/alensw/bean/CommonFolder;->a(ILcom/alensw/bean/CommonFile;)V

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/y;->a:Lcom/alensw/ui/c/p;

    iget-object v0, v0, Lcom/alensw/ui/c/p;->f:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/alensw/ui/c/y;->a:Lcom/alensw/ui/c/p;

    invoke-static {v0}, Lcom/alensw/ui/c/p;->j(Lcom/alensw/ui/c/p;)V

    :cond_2
    return-void
.end method
