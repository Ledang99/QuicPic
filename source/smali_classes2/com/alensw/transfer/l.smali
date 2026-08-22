.class Lcom/alensw/transfer/l;
.super Landroid/support/v4/a/j;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/TransferActivity;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/TransferActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/l;->a:Lcom/alensw/transfer/TransferActivity;

    invoke-direct {p0}, Landroid/support/v4/a/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/alensw/transfer/l;->a:Lcom/alensw/transfer/TransferActivity;

    invoke-static {v0}, Lcom/alensw/transfer/TransferActivity;->c(Lcom/alensw/transfer/TransferActivity;)Lcom/alensw/transfer/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/transfer/a;->h()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alensw/transfer/l;->a:Lcom/alensw/transfer/TransferActivity;

    invoke-static {v0}, Lcom/alensw/transfer/TransferActivity;->c(Lcom/alensw/transfer/TransferActivity;)Lcom/alensw/transfer/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/transfer/a;->h()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/alensw/transfer/l;->a:Lcom/alensw/transfer/TransferActivity;

    invoke-static {v0}, Lcom/alensw/transfer/TransferActivity;->d(Lcom/alensw/transfer/TransferActivity;)Lcom/alensw/transfer/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/transfer/a;->h()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alensw/transfer/l;->a:Lcom/alensw/transfer/TransferActivity;

    invoke-static {v0}, Lcom/alensw/transfer/TransferActivity;->d(Lcom/alensw/transfer/TransferActivity;)Lcom/alensw/transfer/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/transfer/a;->h()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/a/j;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
