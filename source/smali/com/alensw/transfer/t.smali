.class Lcom/alensw/transfer/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/s;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/s;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/t;->a:Lcom/alensw/transfer/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/alensw/transfer/t;->a:Lcom/alensw/transfer/s;

    invoke-static {v0}, Lcom/alensw/transfer/s;->a(Lcom/alensw/transfer/s;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/transfer/d;

    invoke-virtual {v0}, Lcom/alensw/transfer/d;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/alensw/transfer/d;->p()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/alensw/transfer/t;->a:Lcom/alensw/transfer/s;

    invoke-static {v1, v0}, Lcom/alensw/transfer/s;->a(Lcom/alensw/transfer/s;Lcom/alensw/transfer/d;)V

    :cond_0
    return-void
.end method
