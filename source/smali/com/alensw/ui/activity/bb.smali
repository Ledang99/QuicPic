.class Lcom/alensw/ui/activity/bb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/activity/ba;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/ba;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/bb;->a:Lcom/alensw/ui/activity/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/activity/bb;->a:Lcom/alensw/ui/activity/ba;

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/alensw/b/g/l;->a(Landroid/view/View;)Lcom/alensw/b/g/l;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alensw/ui/activity/ba;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    return-void
.end method
