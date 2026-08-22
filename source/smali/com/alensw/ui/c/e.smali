.class Lcom/alensw/ui/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/a/s;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alensw/ui/c/a;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/e;->b:Lcom/alensw/ui/c/a;

    iput-object p2, p0, Lcom/alensw/ui/c/e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/e;->b:Lcom/alensw/ui/c/a;

    iget-object v0, v0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    iget-object v1, p0, Lcom/alensw/ui/c/e;->a:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/alensw/ui/c/dc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/e;->b:Lcom/alensw/ui/c/a;

    iget-object v1, v1, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    const-class v2, Lcom/alensw/ui/c/dc;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/alensw/ui/c/cx;->a(Ljava/lang/Class;Landroid/content/Intent;Landroid/os/Bundle;)Lcom/alensw/ui/c/cu;

    invoke-static {p1}, Lcom/alensw/ui/c/a;->e(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method
