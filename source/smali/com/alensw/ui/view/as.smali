.class Lcom/alensw/ui/view/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/alensw/ui/view/ar;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/ar;II)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/as;->c:Lcom/alensw/ui/view/ar;

    iput p2, p0, Lcom/alensw/ui/view/as;->a:I

    iput p3, p0, Lcom/alensw/ui/view/as;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    instance-of v0, p2, Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/widget/CheckedTextView;

    iget v0, p0, Lcom/alensw/ui/view/as;->a:I

    iget v1, p0, Lcom/alensw/ui/view/as;->b:I

    iget-object v2, p0, Lcom/alensw/ui/view/as;->c:Lcom/alensw/ui/view/ar;

    iget-boolean v2, v2, Lcom/alensw/ui/view/ar;->b:Z

    invoke-static {p2, v0, v1, v2}, Lcom/alensw/ui/view/ModernListPreference;->a(Landroid/widget/CheckedTextView;IIZ)V

    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    return-void
.end method
