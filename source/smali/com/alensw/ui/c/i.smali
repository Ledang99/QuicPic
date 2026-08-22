.class Lcom/alensw/ui/c/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/h;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/h;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/i;->a:Lcom/alensw/ui/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/c/i;->a:Lcom/alensw/ui/c/h;

    iget-object v0, v0, Lcom/alensw/ui/c/h;->b:Lcom/alensw/a/e;

    iget-object v1, p0, Lcom/alensw/ui/c/i;->a:Lcom/alensw/ui/c/h;

    iget-object v1, v1, Lcom/alensw/ui/c/h;->a:Lcom/alensw/a/e;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alensw/a/e;->a(Lcom/alensw/a/e;Z)V

    iget-object v0, p0, Lcom/alensw/ui/c/i;->a:Lcom/alensw/ui/c/h;

    iget-object v0, v0, Lcom/alensw/ui/c/h;->d:Lcom/alensw/ui/c/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/a;->c(Z)V

    iget-object v0, p0, Lcom/alensw/ui/c/i;->a:Lcom/alensw/ui/c/h;

    iget-object v0, v0, Lcom/alensw/ui/c/h;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/i;->a:Lcom/alensw/ui/c/h;

    iget-object v0, v0, Lcom/alensw/ui/c/h;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
