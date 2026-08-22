.class Lcom/alensw/transfer/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/ac;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/aj;->a:Lcom/alensw/transfer/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/alensw/transfer/aj;->a:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->e(Lcom/alensw/transfer/ac;)Lcom/alensw/transfer/a/t;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/transfer/aj;->a:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->l(Lcom/alensw/transfer/ac;)Lcom/alensw/transfer/TransferService;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Waiting for service\u2026"

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/transfer/aj;->a:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->a(Lcom/alensw/transfer/ac;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0a00cc

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alensw/transfer/aj;->a:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->g(Lcom/alensw/transfer/ac;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/transfer/a/t;

    iget-object v1, p0, Lcom/alensw/transfer/aj;->a:Lcom/alensw/transfer/ac;

    invoke-static {v1}, Lcom/alensw/transfer/ac;->i(Lcom/alensw/transfer/ac;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/alensw/transfer/aj;->a:Lcom/alensw/transfer/ac;

    invoke-static {v3}, Lcom/alensw/transfer/ac;->m(Lcom/alensw/transfer/ac;)I

    move-result v3

    if-ne v1, v3, :cond_3

    const v1, 0x7f0a00c9

    const v3, 0x7f0a00ca

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alensw/transfer/ak;

    invoke-direct {v4, p0, v0}, Lcom/alensw/transfer/ak;-><init>(Lcom/alensw/transfer/aj;Lcom/alensw/transfer/a/t;)V

    const/4 v0, 0x0

    invoke-static {v2, v1, v3, v4, v0}, Lcom/alensw/ui/a/f;->a(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/alensw/transfer/aj;->a:Lcom/alensw/transfer/ac;

    invoke-static {v1, v0}, Lcom/alensw/transfer/ac;->b(Lcom/alensw/transfer/ac;Lcom/alensw/transfer/a/t;)V

    goto :goto_0
.end method
