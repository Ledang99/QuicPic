.class Lcom/alensw/cloud/oauth/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alensw/cloud/oauth/n;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/oauth/n;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/oauth/o;->b:Lcom/alensw/cloud/oauth/n;

    iput-object p2, p0, Lcom/alensw/cloud/oauth/o;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/cloud/oauth/o;->b:Lcom/alensw/cloud/oauth/n;

    iget-object v0, v0, Lcom/alensw/cloud/oauth/n;->e:Lcom/alensw/cloud/oauth/BasicAuthActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->i(Z)V

    iget-object v0, p0, Lcom/alensw/cloud/oauth/o;->b:Lcom/alensw/cloud/oauth/n;

    iget-object v0, v0, Lcom/alensw/cloud/oauth/n;->e:Lcom/alensw/cloud/oauth/BasicAuthActivity;

    invoke-static {v0}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->b(Lcom/alensw/cloud/oauth/BasicAuthActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alensw/cloud/oauth/o;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/oauth/o;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method
