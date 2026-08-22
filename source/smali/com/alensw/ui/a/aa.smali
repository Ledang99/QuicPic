.class final Lcom/alensw/ui/a/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/a/ad;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z

.field final synthetic c:Lcom/alensw/ui/a/ad;


# direct methods
.method constructor <init>(Landroid/content/Context;ZLcom/alensw/ui/a/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/a/aa;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/alensw/ui/a/aa;->b:Z

    iput-object p3, p0, Lcom/alensw/ui/a/aa;->c:Lcom/alensw/ui/a/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alensw/ui/view/PasswordView;Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/alensw/ui/a/x;

    iget-object v1, p0, Lcom/alensw/ui/a/aa;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/alensw/ui/a/aa;->a:Landroid/content/Context;

    const v3, 0x7f0a0056

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/alensw/ui/a/aa;->b:Z

    new-instance v4, Lcom/alensw/ui/a/ab;

    invoke-direct {v4, p0, p2}, Lcom/alensw/ui/a/ab;-><init>(Lcom/alensw/ui/a/aa;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/alensw/ui/a/x;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/alensw/ui/a/ad;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/alensw/ui/a/x;->show()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/a/aa;->c:Lcom/alensw/ui/a/ad;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Lcom/alensw/ui/a/ad;->a(Lcom/alensw/ui/view/PasswordView;Ljava/lang/String;)Z

    goto :goto_0
.end method
