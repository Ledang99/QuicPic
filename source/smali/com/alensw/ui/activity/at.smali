.class Lcom/alensw/ui/activity/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alensw/ui/activity/ao;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/ao;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/at;->b:Lcom/alensw/ui/activity/ao;

    iput-object p2, p0, Lcom/alensw/ui/activity/at;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/activity/at;->a:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/alensw/ui/activity/ao;->b(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/activity/at;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v1, p0, Lcom/alensw/ui/activity/at;->b:Lcom/alensw/ui/activity/ao;

    iget v1, v1, Lcom/alensw/ui/activity/ao;->X:I

    invoke-static {v0, v1}, Lcom/alensw/ui/activity/ao;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
