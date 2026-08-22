.class Lcom/alensw/cloud/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/cloud/CloudConfigActivity;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/CloudConfigActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a;->a:Lcom/alensw/cloud/CloudConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/alensw/cloud/a;->a:Lcom/alensw/cloud/CloudConfigActivity;

    invoke-static {v0, p3}, Lcom/alensw/cloud/CloudConfigActivity;->a(Lcom/alensw/cloud/CloudConfigActivity;I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alensw/cloud/a;->a:Lcom/alensw/cloud/CloudConfigActivity;

    invoke-static {v0}, Lcom/alensw/cloud/CloudConfigActivity;->a(Lcom/alensw/cloud/CloudConfigActivity;)Lcom/alensw/cloud/aa;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alensw/cloud/aa;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/a;->a:Lcom/alensw/cloud/CloudConfigActivity;

    invoke-static {v0}, Lcom/alensw/cloud/CloudConfigActivity;->a(Lcom/alensw/cloud/CloudConfigActivity;)Lcom/alensw/cloud/aa;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alensw/cloud/aa;->c(Ljava/lang/String;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/cloud/d;

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/alensw/cloud/d;->c:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/alensw/cloud/a;->a:Lcom/alensw/cloud/CloudConfigActivity;

    invoke-static {v0}, Lcom/alensw/cloud/CloudConfigActivity;->a(Lcom/alensw/cloud/CloudConfigActivity;)Lcom/alensw/cloud/aa;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alensw/cloud/aa;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_2
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alensw/cloud/a;->a:Lcom/alensw/cloud/CloudConfigActivity;

    invoke-static {v0}, Lcom/alensw/cloud/CloudConfigActivity;->a(Lcom/alensw/cloud/CloudConfigActivity;)Lcom/alensw/cloud/aa;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alensw/cloud/aa;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alensw/cloud/a;->a:Lcom/alensw/cloud/CloudConfigActivity;

    iget-object v0, v0, Lcom/alensw/cloud/CloudConfigActivity;->f:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_2
.end method
