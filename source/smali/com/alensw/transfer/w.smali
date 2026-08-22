.class Lcom/alensw/transfer/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/d;

.field final synthetic b:Lcom/alensw/transfer/u;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/u;Lcom/alensw/transfer/d;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/w;->b:Lcom/alensw/transfer/u;

    iput-object p2, p0, Lcom/alensw/transfer/w;->a:Lcom/alensw/transfer/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/transfer/w;->b:Lcom/alensw/transfer/u;

    iget-object v0, v0, Lcom/alensw/transfer/u;->a:Lcom/alensw/transfer/s;

    iget-object v1, p0, Lcom/alensw/transfer/w;->a:Lcom/alensw/transfer/d;

    invoke-static {v0, v1}, Lcom/alensw/transfer/s;->b(Lcom/alensw/transfer/s;Lcom/alensw/transfer/d;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/alensw/transfer/w;->b:Lcom/alensw/transfer/u;

    iget-object v1, v1, Lcom/alensw/transfer/u;->a:Lcom/alensw/transfer/s;

    invoke-static {v1}, Lcom/alensw/transfer/s;->d(Lcom/alensw/transfer/s;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/transfer/ab;

    iget-object v1, p0, Lcom/alensw/transfer/w;->b:Lcom/alensw/transfer/u;

    iget-object v1, v1, Lcom/alensw/transfer/u;->a:Lcom/alensw/transfer/s;

    iget-object v2, p0, Lcom/alensw/transfer/w;->a:Lcom/alensw/transfer/d;

    invoke-static {v1, v2, v0}, Lcom/alensw/transfer/s;->a(Lcom/alensw/transfer/s;Lcom/alensw/transfer/d;Lcom/alensw/transfer/ab;)V

    :cond_0
    return-void
.end method
