.class Lcom/alensw/ui/a/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/alensw/ui/a/v;


# direct methods
.method constructor <init>(Lcom/alensw/ui/a/v;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/a/w;->b:Lcom/alensw/ui/a/v;

    iput-object p2, p0, Lcom/alensw/ui/a/w;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/a/w;->a:Landroid/widget/EditText;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v0

    return v0
.end method
