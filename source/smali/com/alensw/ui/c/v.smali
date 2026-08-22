.class Lcom/alensw/ui/c/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/widget/BaseAdapter;

.field final synthetic b:Lcom/alensw/ui/c/p;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/p;Landroid/widget/BaseAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/v;->b:Lcom/alensw/ui/c/p;

    iput-object p2, p0, Lcom/alensw/ui/c/v;->a:Landroid/widget/BaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/c/v;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/cloud/x;

    iget-object v1, p0, Lcom/alensw/ui/c/v;->b:Lcom/alensw/ui/c/p;

    iget-object v2, v0, Lcom/alensw/cloud/x;->a:Lcom/alensw/cloud/z;

    iget v0, v0, Lcom/alensw/cloud/x;->e:I

    invoke-static {v1, v2, v0}, Lcom/alensw/ui/c/p;->a(Lcom/alensw/ui/c/p;Lcom/alensw/cloud/z;I)V

    return-void
.end method
