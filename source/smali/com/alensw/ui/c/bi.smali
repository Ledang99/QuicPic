.class Lcom/alensw/ui/c/bi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/c/o;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/bf;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/bf;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/bi;->a:Lcom/alensw/ui/c/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/bi;->a:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    iput p3, v0, Lcom/alensw/a/e;->c:I

    iget-object v0, p0, Lcom/alensw/ui/c/bi;->a:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-boolean v0, v0, Lcom/alensw/ui/view/ImageGridView;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/bi;->a:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    iget-object v0, p0, Lcom/alensw/ui/c/bi;->a:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v0, p3}, Lcom/alensw/a/e;->e(I)Lcom/alensw/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/bi;->a:Lcom/alensw/ui/c/bf;

    iget-object v1, v1, Lcom/alensw/ui/c/bf;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/bi;->a:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->requestLayout()V

    iget-object v0, p0, Lcom/alensw/ui/c/bi;->a:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0, p3}, Lcom/alensw/ui/view/ImageGridView;->b(I)V

    return-void
.end method
