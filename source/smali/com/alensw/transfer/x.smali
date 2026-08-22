.class Lcom/alensw/transfer/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/transfer/bj;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/s;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/s;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/x;->a:Lcom/alensw/transfer/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/transfer/x;->a:Lcom/alensw/transfer/s;

    invoke-virtual {v0}, Lcom/alensw/transfer/s;->g()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alensw/transfer/TransferActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alensw/transfer/TransferActivity;->b(I)V

    :cond_0
    return-void
.end method

.method public a([Ljava/lang/Object;I)V
    .locals 4

    iget-object v0, p0, Lcom/alensw/transfer/x;->a:Lcom/alensw/transfer/s;

    invoke-static {v0}, Lcom/alensw/transfer/s;->a(Lcom/alensw/transfer/s;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    instance-of v3, v0, Lcom/alensw/transfer/d;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alensw/transfer/x;->a:Lcom/alensw/transfer/s;

    invoke-static {v3}, Lcom/alensw/transfer/s;->a(Lcom/alensw/transfer/s;)Ljava/util/ArrayList;

    move-result-object v3

    check-cast v0, Lcom/alensw/transfer/d;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alensw/transfer/x;->a:Lcom/alensw/transfer/s;

    invoke-static {v0}, Lcom/alensw/transfer/s;->a(Lcom/alensw/transfer/s;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/transfer/x;->a:Lcom/alensw/transfer/s;

    invoke-static {v1}, Lcom/alensw/transfer/s;->e(Lcom/alensw/transfer/s;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alensw/b/l/b;->a(Ljava/util/ArrayList;Ljava/util/Comparator;)Z

    iget-object v0, p0, Lcom/alensw/transfer/x;->a:Lcom/alensw/transfer/s;

    invoke-static {v0}, Lcom/alensw/transfer/s;->f(Lcom/alensw/transfer/s;)Lcom/alensw/transfer/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/transfer/z;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/alensw/transfer/x;->a:Lcom/alensw/transfer/s;

    invoke-virtual {v0}, Lcom/alensw/transfer/s;->g()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alensw/transfer/TransferActivity;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Lcom/alensw/transfer/TransferActivity;->a(I)V

    :cond_2
    return-void
.end method
