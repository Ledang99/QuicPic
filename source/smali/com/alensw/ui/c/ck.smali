.class Lcom/alensw/ui/c/ck;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/cj;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/cj;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/ck;->a:Lcom/alensw/ui/c/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->q:Lcom/alensw/a/s;

    iget-boolean v0, v0, Lcom/alensw/a/s;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/ck;->a:Lcom/alensw/ui/c/cj;

    iget-object v0, v0, Lcom/alensw/ui/c/cj;->b:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    iget-object v1, p0, Lcom/alensw/ui/c/ck;->a:Lcom/alensw/ui/c/cj;

    iget-object v1, v1, Lcom/alensw/ui/c/cj;->a:Lcom/alensw/a/e;

    invoke-virtual {v0, v1}, Lcom/alensw/a/x;->f(Lcom/alensw/a/e;)Lcom/alensw/a/e;

    iget-object v0, p0, Lcom/alensw/ui/c/ck;->a:Lcom/alensw/ui/c/cj;

    iget-object v0, v0, Lcom/alensw/ui/c/cj;->b:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alensw/a/x;->a(Z)Z

    iget-object v0, p0, Lcom/alensw/ui/c/ck;->a:Lcom/alensw/ui/c/cj;

    iget-object v0, v0, Lcom/alensw/ui/c/cj;->b:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/ck;->a:Lcom/alensw/ui/c/cj;

    iget-object v0, v0, Lcom/alensw/ui/c/cj;->b:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/cx;->d(Z)V

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/ck;->a:Lcom/alensw/ui/c/cj;

    iget-object v0, v0, Lcom/alensw/ui/c/cj;->b:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->requestLayout()V

    return-void
.end method
