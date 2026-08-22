.class Lcom/alensw/ui/c/bn;
.super Lcom/alensw/ui/a/ao;


# instance fields
.field final synthetic a:Ljava/util/HashSet;

.field final synthetic b:I

.field final synthetic c:Lcom/alensw/ui/c/bf;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/bf;Landroid/app/Activity;Ljava/lang/String;ILjava/util/HashSet;I)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/bn;->c:Lcom/alensw/ui/c/bf;

    iput-object p5, p0, Lcom/alensw/ui/c/bn;->a:Ljava/util/HashSet;

    iput p6, p0, Lcom/alensw/ui/c/bn;->b:I

    invoke-direct {p0, p2, p3, p4}, Lcom/alensw/ui/a/ao;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alensw/ui/c/bn;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/d;

    invoke-virtual {v0}, Lcom/alensw/a/d;->a()Ljava/lang/String;

    move-result-object v4

    iget-char v1, v0, Lcom/alensw/a/d;->c:C

    const/16 v5, 0x49

    if-ne v1, v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    iget v1, p0, Lcom/alensw/ui/c/bn;->b:I

    invoke-static {v4, v1, v2}, Lcom/alensw/b/l/b;->a(Ljava/lang/String;IZ)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    sget-object v5, Lcom/alensw/PicFolder/QuickApp;->w:Lcom/alensw/b/a/a;

    invoke-virtual {v5, v0}, Lcom/alensw/b/a/a;->c(Ljava/lang/Object;)Lcom/alensw/b/a/c;

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    invoke-virtual {v0, v4, v1}, Lcom/alensw/a/ba;->a(Ljava/lang/String;I)Z

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    invoke-virtual {v0, v4}, Lcom/alensw/a/bc;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/alensw/ui/c/bn;->d()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    return-void

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method protected b()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/c/bn;->c:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->requestLayout()V

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->o:Lcom/alensw/a/x;

    iget-object v1, p0, Lcom/alensw/ui/c/bn;->c:Lcom/alensw/ui/c/bf;

    iget-object v1, v1, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alensw/a/x;->a(Lcom/alensw/a/e;Z)V

    iget-object v0, p0, Lcom/alensw/ui/c/bn;->c:Lcom/alensw/ui/c/bf;

    invoke-virtual {v0}, Lcom/alensw/ui/c/bf;->o()V

    return-void
.end method
