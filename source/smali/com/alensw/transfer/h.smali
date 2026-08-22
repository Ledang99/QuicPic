.class Lcom/alensw/transfer/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/TransferActivity;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/TransferActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/h;->a:Lcom/alensw/transfer/TransferActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/transfer/h;->a:Lcom/alensw/transfer/TransferActivity;

    invoke-static {v0}, Lcom/alensw/transfer/TransferActivity;->b(Lcom/alensw/transfer/TransferActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/alensw/transfer/h;->a:Lcom/alensw/transfer/TransferActivity;

    invoke-static {v1}, Lcom/alensw/transfer/TransferActivity;->a(Lcom/alensw/transfer/TransferActivity;)Landroid/support/v4/a/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/a/p;->setCurrentItem(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
