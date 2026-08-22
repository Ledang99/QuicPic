.class Lcom/alensw/cloud/oauth/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/alensw/cloud/oauth/BasicAuthActivity;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/oauth/BasicAuthActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/oauth/l;->a:Lcom/alensw/cloud/oauth/BasicAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/alensw/cloud/oauth/l;->a:Lcom/alensw/cloud/oauth/BasicAuthActivity;

    invoke-static {v0}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->b(Lcom/alensw/cloud/oauth/BasicAuthActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/oauth/l;->a:Lcom/alensw/cloud/oauth/BasicAuthActivity;

    invoke-static {v0}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->b(Lcom/alensw/cloud/oauth/BasicAuthActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
