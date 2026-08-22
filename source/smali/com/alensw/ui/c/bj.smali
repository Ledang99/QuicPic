.class Lcom/alensw/ui/c/bj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Float;

.field final synthetic b:Lcom/alensw/ui/c/bf;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/bf;Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/bj;->b:Lcom/alensw/ui/c/bf;

    iput-object p2, p0, Lcom/alensw/ui/c/bj;->a:Ljava/lang/Float;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/c/bj;->b:Lcom/alensw/ui/c/bf;

    iget v0, v0, Lcom/alensw/ui/c/bf;->H:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/bj;->b:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->j()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/bj;->b:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-object v1, p0, Lcom/alensw/ui/c/bj;->b:Lcom/alensw/ui/c/bf;

    const v2, 0x7f0a004e

    invoke-virtual {v1, v2}, Lcom/alensw/ui/c/bf;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/ImageGridView;->setEmptyText(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/bj;->a:Ljava/lang/Float;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/bj;->b:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-object v1, p0, Lcom/alensw/ui/c/bj;->a:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/ImageGridView;->setScrollPos(F)V

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/bj;->b:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->requestLayout()V

    iget-object v0, p0, Lcom/alensw/ui/c/bj;->b:Lcom/alensw/ui/c/bf;

    invoke-virtual {v0}, Lcom/alensw/ui/c/bf;->l()Z

    :cond_2
    return-void
.end method
