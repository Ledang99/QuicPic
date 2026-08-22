.class Lcom/alensw/ui/c/ar;
.super Lcom/alensw/ui/a/ao;


# instance fields
.field final synthetic a:Ljava/util/HashSet;

.field final synthetic b:I

.field final synthetic c:Lcom/alensw/ui/c/z;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/z;Landroid/app/Activity;Ljava/lang/String;ILjava/util/HashSet;I)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/ar;->c:Lcom/alensw/ui/c/z;

    iput-object p5, p0, Lcom/alensw/ui/c/ar;->a:Ljava/util/HashSet;

    iput p6, p0, Lcom/alensw/ui/c/ar;->b:I

    invoke-direct {p0, p2, p3, p4}, Lcom/alensw/ui/a/ao;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/c/ar;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->j()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->h()C

    move-result v0

    const/16 v3, 0x49

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/alensw/ui/c/ar;->b:I

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/alensw/b/l/b;->a(Ljava/lang/String;IZ)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    sget-object v3, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    invoke-virtual {v3, v2, v0}, Lcom/alensw/a/ba;->a(Ljava/lang/String;I)Z

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    invoke-virtual {v0, v2}, Lcom/alensw/a/bc;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/alensw/ui/c/ar;->d()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    return-void
.end method

.method protected b()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/c/ar;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/bean/CommonFile;

    iget-object v2, p0, Lcom/alensw/ui/c/ar;->c:Lcom/alensw/ui/c/z;

    invoke-static {v2}, Lcom/alensw/ui/c/z;->a(Lcom/alensw/ui/c/z;)Lcom/alensw/b/a/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alensw/b/a/a;->c(Ljava/lang/Object;)Lcom/alensw/b/a/c;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/ar;->c:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->requestLayout()V

    iget-object v0, p0, Lcom/alensw/ui/c/ar;->c:Lcom/alensw/ui/c/z;

    invoke-virtual {v0}, Lcom/alensw/ui/c/z;->n()V

    return-void
.end method
