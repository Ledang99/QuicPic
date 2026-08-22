.class Lcom/alensw/ui/a/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/view/ay;


# instance fields
.field final synthetic a:Lcom/alensw/ui/a/ad;

.field final synthetic b:Lcom/alensw/ui/a/x;


# direct methods
.method constructor <init>(Lcom/alensw/ui/a/x;Lcom/alensw/ui/a/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/a/y;->b:Lcom/alensw/ui/a/x;

    iput-object p2, p0, Lcom/alensw/ui/a/y;->a:Lcom/alensw/ui/a/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alensw/ui/view/PasswordView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/a/y;->a:Lcom/alensw/ui/a/ad;

    invoke-interface {v0, p1, p2}, Lcom/alensw/ui/a/ad;->a(Lcom/alensw/ui/view/PasswordView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/a/y;->b:Lcom/alensw/ui/a/x;

    invoke-virtual {v0}, Lcom/alensw/ui/a/x;->dismiss()V

    :cond_0
    return-void
.end method
