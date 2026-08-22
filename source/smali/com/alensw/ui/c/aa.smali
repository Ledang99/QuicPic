.class Lcom/alensw/ui/c/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/b/g/k;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/z;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/z;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/aa;->a:Lcom/alensw/ui/c/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;Landroid/view/View;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alensw/ui/c/aa;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    const/high16 v1, 0x7f0c0000

    invoke-static {v0, v1, p1}, Lcom/alensw/b/g/b;->a(Landroid/content/Context;ILandroid/view/Menu;)V

    const v0, 0x7f090048

    invoke-interface {p1, v0, v2, v2}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    const v0, 0x7f090049

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    const v0, 0x7f09004a

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    const v0, 0x7f09004d

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alensw/ui/c/aa;->a:Lcom/alensw/ui/c/z;

    iget v1, v1, Lcom/alensw/ui/c/z;->j:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_0
    return v2

    :pswitch_1
    const v0, 0x7f09004b

    goto :goto_0

    :pswitch_2
    const v0, 0x7f09004c

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
