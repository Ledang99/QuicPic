.class Lcom/alensw/ui/view/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alensw/ui/view/j;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/j;I)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/l;->b:Lcom/alensw/ui/view/j;

    iput p2, p0, Lcom/alensw/ui/view/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alensw/ui/view/l;->b:Lcom/alensw/ui/view/j;

    invoke-static {v0}, Lcom/alensw/ui/view/j;->a(Lcom/alensw/ui/view/j;)Lcom/alensw/b/h/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/l;->b:Lcom/alensw/ui/view/j;

    invoke-static {v0}, Lcom/alensw/ui/view/j;->a(Lcom/alensw/ui/view/j;)Lcom/alensw/b/h/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->m()I

    iget-object v0, p0, Lcom/alensw/ui/view/l;->b:Lcom/alensw/ui/view/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alensw/ui/view/j;->a(Lcom/alensw/ui/view/j;Lcom/alensw/b/h/j;)Lcom/alensw/b/h/j;

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/view/l;->b:Lcom/alensw/ui/view/j;

    iput-boolean v2, v0, Lcom/alensw/ui/view/j;->G:Z

    iget-object v0, p0, Lcom/alensw/ui/view/l;->b:Lcom/alensw/ui/view/j;

    iput v2, v0, Lcom/alensw/ui/view/j;->A:I

    iget-object v0, p0, Lcom/alensw/ui/view/l;->b:Lcom/alensw/ui/view/j;

    invoke-virtual {v0}, Lcom/alensw/ui/view/j;->invalidate()V

    iget-object v0, p0, Lcom/alensw/ui/view/l;->b:Lcom/alensw/ui/view/j;

    iget-object v0, v0, Lcom/alensw/ui/view/j;->K:Lcom/alensw/ui/view/q;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/l;->b:Lcom/alensw/ui/view/j;

    iget-object v0, v0, Lcom/alensw/ui/view/j;->K:Lcom/alensw/ui/view/q;

    iget v1, p0, Lcom/alensw/ui/view/l;->a:I

    invoke-interface {v0, v1}, Lcom/alensw/ui/view/q;->b(I)V

    :cond_1
    return-void
.end method
