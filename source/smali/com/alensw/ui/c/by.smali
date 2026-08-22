.class Lcom/alensw/ui/c/by;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/c/do;


# instance fields
.field final synthetic a:Lcom/alensw/a/d;

.field final synthetic b:Lcom/alensw/ui/c/bf;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/bf;Lcom/alensw/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/by;->b:Lcom/alensw/ui/c/bf;

    iput-object p2, p0, Lcom/alensw/ui/c/by;->a:Lcom/alensw/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 7

    const-wide/16 v4, 0x3e8

    iget-object v0, p0, Lcom/alensw/ui/c/by;->a:Lcom/alensw/a/d;

    div-long v2, p1, v4

    long-to-int v1, v2

    iput v1, v0, Lcom/alensw/a/d;->d:I

    iget-object v0, p0, Lcom/alensw/ui/c/by;->a:Lcom/alensw/a/d;

    div-long v2, p3, v4

    long-to-int v1, v2

    iput v1, v0, Lcom/alensw/a/d;->e:I

    iget-object v0, p0, Lcom/alensw/ui/c/by;->b:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/by;->b:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->l()V

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->o:Lcom/alensw/a/x;

    iget-object v0, p0, Lcom/alensw/ui/c/by;->b:Lcom/alensw/ui/c/bf;

    iget-object v2, v0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    iget-object v0, p0, Lcom/alensw/ui/c/by;->b:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    iget v0, v0, Lcom/alensw/a/e;->c:I

    const/4 v3, 0x4

    if-ge v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/alensw/a/x;->a(Lcom/alensw/a/e;Z)V

    iget-object v0, p0, Lcom/alensw/ui/c/by;->b:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->requestLayout()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
