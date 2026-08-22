.class Lcom/alensw/ui/view/av;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/view/aq;


# instance fields
.field final synthetic a:Lcom/alensw/ui/view/LockPatternView;

.field final synthetic b:Lcom/alensw/ui/view/PasswordView;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/PasswordView;Lcom/alensw/ui/view/LockPatternView;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/av;->b:Lcom/alensw/ui/view/PasswordView;

    iput-object p2, p0, Lcom/alensw/ui/view/av;->a:Lcom/alensw/ui/view/LockPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/av;->a:Lcom/alensw/ui/view/LockPatternView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/LockPatternView;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/view/av;->b:Lcom/alensw/ui/view/PasswordView;

    invoke-static {v0}, Lcom/alensw/ui/view/PasswordView;->a(Lcom/alensw/ui/view/PasswordView;)Lcom/alensw/ui/view/ay;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/alensw/ui/view/LockPatternView;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/view/av;->b:Lcom/alensw/ui/view/PasswordView;

    invoke-static {v1}, Lcom/alensw/ui/view/PasswordView;->a(Lcom/alensw/ui/view/PasswordView;)Lcom/alensw/ui/view/ay;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/ui/view/av;->b:Lcom/alensw/ui/view/PasswordView;

    invoke-interface {v1, v2, v0}, Lcom/alensw/ui/view/ay;->a(Lcom/alensw/ui/view/PasswordView;Ljava/lang/String;)V

    goto :goto_0
.end method
