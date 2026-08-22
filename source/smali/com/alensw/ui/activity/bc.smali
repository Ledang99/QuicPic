.class Lcom/alensw/ui/activity/bc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/activity/ba;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/ba;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/bc;->a:Lcom/alensw/ui/activity/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/bc;->a:Lcom/alensw/ui/activity/ba;

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Lcom/alensw/ui/activity/ba;->a(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    return-void
.end method
