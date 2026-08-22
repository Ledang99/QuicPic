.class Lcom/alensw/ui/c/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/z;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/z;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/ah;->a:Lcom/alensw/ui/c/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/ah;->a:Lcom/alensw/ui/c/z;

    invoke-static {v0}, Lcom/alensw/ui/c/z;->b(Lcom/alensw/ui/c/z;)V

    iget-object v0, p0, Lcom/alensw/ui/c/ah;->a:Lcom/alensw/ui/c/z;

    iget-boolean v0, v0, Lcom/alensw/ui/c/z;->r:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/ah;->a:Lcom/alensw/ui/c/z;

    iget v0, v0, Lcom/alensw/ui/c/z;->H:I

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/ah;->a:Lcom/alensw/ui/c/z;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/z;->a(Z)V

    iget-object v0, p0, Lcom/alensw/ui/c/ah;->a:Lcom/alensw/ui/c/z;

    invoke-virtual {v0}, Lcom/alensw/ui/c/z;->n()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/ah;->a:Lcom/alensw/ui/c/z;

    iget v0, v0, Lcom/alensw/ui/c/z;->H:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/c/ah;->a:Lcom/alensw/ui/c/z;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alensw/ui/c/z;->q:Z

    goto :goto_0
.end method
