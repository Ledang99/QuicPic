.class Lcom/alensw/ui/view/aw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/view/PasswordView;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/PasswordView;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/aw;->a:Lcom/alensw/ui/view/PasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    iget-object v1, p0, Lcom/alensw/ui/view/aw;->a:Lcom/alensw/ui/view/PasswordView;

    invoke-static {v1}, Lcom/alensw/ui/view/PasswordView;->b(Lcom/alensw/ui/view/PasswordView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/16 v2, 0x2190

    if-ne v0, v2, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/alensw/ui/view/aw;->a:Lcom/alensw/ui/view/PasswordView;

    invoke-static {v2}, Lcom/alensw/ui/view/PasswordView;->b(Lcom/alensw/ui/view/PasswordView;)Landroid/widget/TextView;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v4, v0}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v2, 0x2713

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/view/aw;->a:Lcom/alensw/ui/view/PasswordView;

    invoke-static {v0}, Lcom/alensw/ui/view/PasswordView;->a(Lcom/alensw/ui/view/PasswordView;)Lcom/alensw/ui/view/ay;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/aw;->a:Lcom/alensw/ui/view/PasswordView;

    invoke-static {v0}, Lcom/alensw/ui/view/PasswordView;->a(Lcom/alensw/ui/view/PasswordView;)Lcom/alensw/ui/view/ay;

    move-result-object v0

    iget-object v2, p0, Lcom/alensw/ui/view/aw;->a:Lcom/alensw/ui/view/PasswordView;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/alensw/ui/view/ay;->a(Lcom/alensw/ui/view/PasswordView;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/alensw/ui/view/aw;->a:Lcom/alensw/ui/view/PasswordView;

    invoke-static {v2}, Lcom/alensw/ui/view/PasswordView;->b(Lcom/alensw/ui/view/PasswordView;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
