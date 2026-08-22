.class Lcom/alensw/ui/activity/ax;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/activity/ao;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/ax;->a:Lcom/alensw/ui/activity/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x102001f

    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    iget-object v1, p0, Lcom/alensw/ui/activity/ax;->a:Lcom/alensw/ui/activity/ao;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/alensw/b/g/l;->a(Landroid/view/View;)Lcom/alensw/b/g/l;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alensw/ui/activity/ao;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    return-void
.end method
