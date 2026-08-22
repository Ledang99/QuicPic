.class Lcom/alensw/ui/a/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/a/ad;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alensw/ui/a/aa;


# direct methods
.method constructor <init>(Lcom/alensw/ui/a/aa;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/a/ab;->b:Lcom/alensw/ui/a/aa;

    iput-object p2, p0, Lcom/alensw/ui/a/ab;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alensw/ui/view/PasswordView;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/a/ab;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/a/ab;->b:Lcom/alensw/ui/a/aa;

    iget-object v0, v0, Lcom/alensw/ui/a/aa;->c:Lcom/alensw/ui/a/ad;

    iget-object v1, p0, Lcom/alensw/ui/a/ab;->a:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/alensw/ui/a/ad;->a(Lcom/alensw/ui/view/PasswordView;Ljava/lang/String;)Z

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {p1}, Lcom/alensw/ui/a/x;->a(Landroid/view/View;)V

    goto :goto_0
.end method
