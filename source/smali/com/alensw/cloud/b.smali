.class Lcom/alensw/cloud/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/a/az;


# instance fields
.field final synthetic a:Lcom/alensw/cloud/CloudConfigActivity;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/CloudConfigActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/b;->a:Lcom/alensw/cloud/CloudConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alensw/bean/CommonFolder;Z)V
    .locals 2

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/alensw/cloud/b;->a:Lcom/alensw/cloud/CloudConfigActivity;

    invoke-virtual {v0}, Lcom/alensw/cloud/CloudConfigActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/b;->a:Lcom/alensw/cloud/CloudConfigActivity;

    invoke-virtual {v0}, Lcom/alensw/cloud/CloudConfigActivity;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alensw/cloud/b;->a:Lcom/alensw/cloud/CloudConfigActivity;

    iput-boolean v1, v0, Lcom/alensw/cloud/CloudConfigActivity;->a:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alensw/cloud/b;->b(Lcom/alensw/bean/CommonFolder;Z)V

    goto :goto_0
.end method

.method public b(Lcom/alensw/bean/CommonFolder;Z)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/cloud/b;->a:Lcom/alensw/cloud/CloudConfigActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alensw/cloud/CloudConfigActivity;->a(Lcom/alensw/cloud/CloudConfigActivity;Lcom/alensw/b/k/d;)Lcom/alensw/b/k/d;

    iget-object v0, p0, Lcom/alensw/cloud/b;->a:Lcom/alensw/cloud/CloudConfigActivity;

    invoke-virtual {v0}, Lcom/alensw/cloud/CloudConfigActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/alensw/cloud/b;->a:Lcom/alensw/cloud/CloudConfigActivity;

    invoke-static {v0}, Lcom/alensw/cloud/CloudConfigActivity;->b(Lcom/alensw/cloud/CloudConfigActivity;)Lcom/alensw/bean/CommonFolder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/alensw/bean/CommonFolder;->a(Lcom/alensw/bean/CommonFolder;Z)V

    iget-object v0, p0, Lcom/alensw/cloud/b;->a:Lcom/alensw/cloud/CloudConfigActivity;

    iget-object v0, v0, Lcom/alensw/cloud/CloudConfigActivity;->f:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/b;->a:Lcom/alensw/cloud/CloudConfigActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alensw/cloud/CloudConfigActivity;->i(Z)V

    iget-object v0, p0, Lcom/alensw/cloud/b;->a:Lcom/alensw/cloud/CloudConfigActivity;

    invoke-static {v0}, Lcom/alensw/cloud/CloudConfigActivity;->b(Lcom/alensw/cloud/CloudConfigActivity;)Lcom/alensw/bean/CommonFolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/b;->a:Lcom/alensw/cloud/CloudConfigActivity;

    invoke-virtual {v0}, Lcom/alensw/cloud/CloudConfigActivity;->finish()V

    goto :goto_0
.end method
