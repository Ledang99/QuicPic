.class Lcom/alensw/transfer/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/a/x;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/TransferActivity;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/TransferActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/m;->a:Lcom/alensw/transfer/TransferActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/alensw/transfer/m;->a:Lcom/alensw/transfer/TransferActivity;

    invoke-static {v0}, Lcom/alensw/transfer/TransferActivity;->g(Lcom/alensw/transfer/TransferActivity;)Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/transfer/m;->a:Lcom/alensw/transfer/TransferActivity;

    invoke-static {v0}, Lcom/alensw/transfer/TransferActivity;->h(Lcom/alensw/transfer/TransferActivity;)Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alensw/transfer/m;->a:Lcom/alensw/transfer/TransferActivity;

    invoke-static {v0}, Lcom/alensw/transfer/TransferActivity;->b(Lcom/alensw/transfer/TransferActivity;)Landroid/widget/TextView;

    move-result-object v3

    if-nez p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/alensw/transfer/m;->a:Lcom/alensw/transfer/TransferActivity;

    invoke-static {v0}, Lcom/alensw/transfer/TransferActivity;->i(Lcom/alensw/transfer/TransferActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public a(IFI)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method
