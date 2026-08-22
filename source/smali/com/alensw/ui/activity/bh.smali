.class Lcom/alensw/ui/activity/bh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/a/an;


# instance fields
.field final synthetic a:Lcom/alensw/ui/activity/PathListActivity;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/PathListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/bh;->a:Lcom/alensw/ui/activity/PathListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 3

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/activity/bh;->a:Lcom/alensw/ui/activity/PathListActivity;

    iget-object v1, v1, Lcom/alensw/ui/activity/PathListActivity;->a:Ljava/util/ArrayList;

    sget-object v2, Lcom/alensw/b/b/b;->a:Lcom/alensw/b/b/c;

    invoke-static {v1, v0, v2}, Lcom/alensw/b/l/b;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    if-gez v1, :cond_0

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/alensw/ui/activity/bh;->a:Lcom/alensw/ui/activity/PathListActivity;

    iget-object v2, v2, Lcom/alensw/ui/activity/PathListActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/alensw/ui/activity/bh;->a:Lcom/alensw/ui/activity/PathListActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alensw/ui/activity/PathListActivity;->d:Z

    iget-object v0, p0, Lcom/alensw/ui/activity/bh;->a:Lcom/alensw/ui/activity/PathListActivity;

    iget-object v0, v0, Lcom/alensw/ui/activity/PathListActivity;->b:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
