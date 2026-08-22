.class Lcom/alensw/ui/activity/bf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/activity/PathListActivity;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/PathListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/bf;->a:Lcom/alensw/ui/activity/PathListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/activity/bf;->a:Lcom/alensw/ui/activity/PathListActivity;

    iget-object v0, v0, Lcom/alensw/ui/activity/PathListActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alensw/ui/activity/bf;->a:Lcom/alensw/ui/activity/PathListActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alensw/ui/activity/PathListActivity;->d:Z

    iget-object v0, p0, Lcom/alensw/ui/activity/bf;->a:Lcom/alensw/ui/activity/PathListActivity;

    iget-object v0, v0, Lcom/alensw/ui/activity/PathListActivity;->b:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
