.class Lcom/alensw/cloud/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# instance fields
.field final synthetic a:Lcom/alensw/cloud/UrlTaskActivity;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/UrlTaskActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/af;->a:Lcom/alensw/cloud/UrlTaskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f09000e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alensw/cloud/af;->a:Lcom/alensw/cloud/UrlTaskActivity;

    invoke-static {v1}, Lcom/alensw/cloud/UrlTaskActivity;->a(Lcom/alensw/cloud/UrlTaskActivity;)Lcom/alensw/ui/view/z;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alensw/ui/view/z;->a(Landroid/widget/ImageView;Lcom/alensw/b/h/h;)V

    return-void
.end method
