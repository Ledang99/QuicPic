.class final Lcom/alensw/cloud/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/cloud/y;

.field final synthetic b:Landroid/widget/BaseAdapter;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/y;Landroid/widget/BaseAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/o;->a:Lcom/alensw/cloud/y;

    iput-object p2, p0, Lcom/alensw/cloud/o;->b:Landroid/widget/BaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/alensw/cloud/o;->a:Lcom/alensw/cloud/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/o;->b:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/cloud/x;

    iget-object v1, p0, Lcom/alensw/cloud/o;->a:Lcom/alensw/cloud/y;

    iget-object v2, v0, Lcom/alensw/cloud/x;->a:Lcom/alensw/cloud/z;

    iget v0, v0, Lcom/alensw/cloud/x;->e:I

    invoke-interface {v1, v2, v0}, Lcom/alensw/cloud/y;->a(Lcom/alensw/cloud/z;I)V

    :cond_0
    return-void
.end method
