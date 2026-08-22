.class final Lcom/alensw/ui/a/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alensw/ui/a/s;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/alensw/ui/a/s;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/a/r;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/alensw/ui/a/r;->b:Lcom/alensw/ui/a/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/a/r;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/a/r;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/alensw/ui/a/r;->b:Lcom/alensw/ui/a/s;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alensw/ui/a/s;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/a/r;->a:Landroid/view/View;

    check-cast v0, Lcom/alensw/ui/view/TitleView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/TitleView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method
