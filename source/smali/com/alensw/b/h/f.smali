.class Lcom/alensw/b/h/f;
.super Lcom/alensw/b/k/e;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field final synthetic d:Lcom/alensw/b/h/d;


# direct methods
.method public constructor <init>(Lcom/alensw/b/h/d;II)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/b/h/f;->d:Lcom/alensw/b/h/d;

    invoke-direct {p0}, Lcom/alensw/b/k/e;-><init>()V

    iput p2, p0, Lcom/alensw/b/h/f;->a:I

    iput p3, p0, Lcom/alensw/b/h/f;->b:I

    return-void
.end method


# virtual methods
.method public varargs a(III[Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/alensw/b/h/f;->a:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/alensw/b/h/f;->b:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lcom/alensw/b/h/f;

    iget v0, p0, Lcom/alensw/b/h/f;->a:I

    iget v1, p1, Lcom/alensw/b/h/f;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/alensw/b/h/f;->b:I

    iget v1, p1, Lcom/alensw/b/h/f;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/alensw/b/h/f;->b:I

    iget v1, p0, Lcom/alensw/b/h/f;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/alensw/b/h/f;->d:Lcom/alensw/b/h/d;

    iget v1, p0, Lcom/alensw/b/h/f;->c:I

    iget v2, p0, Lcom/alensw/b/h/f;->a:I

    iget v3, p0, Lcom/alensw/b/h/f;->b:I

    invoke-static {v0, v1, v2, v3}, Lcom/alensw/b/h/d;->a(Lcom/alensw/b/h/d;III)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/b/h/f;->d:Lcom/alensw/b/h/d;

    iget v1, p0, Lcom/alensw/b/h/f;->c:I

    invoke-static {v0, v1}, Lcom/alensw/b/h/d;->a(Lcom/alensw/b/h/d;I)I

    :cond_0
    iget-object v0, p0, Lcom/alensw/b/h/f;->d:Lcom/alensw/b/h/d;

    invoke-static {v0}, Lcom/alensw/b/h/d;->a(Lcom/alensw/b/h/d;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/b/h/f;->d:Lcom/alensw/b/h/d;

    invoke-static {v0}, Lcom/alensw/b/h/d;->a(Lcom/alensw/b/h/d;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/alensw/b/h/f;->d:Lcom/alensw/b/h/d;

    invoke-static {v0}, Lcom/alensw/b/h/d;->b(Lcom/alensw/b/h/d;)Lcom/alensw/b/h/g;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/b/h/f;->d:Lcom/alensw/b/h/d;

    invoke-static {v0}, Lcom/alensw/b/h/d;->b(Lcom/alensw/b/h/d;)Lcom/alensw/b/h/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alensw/b/h/g;->a(Lcom/alensw/b/h/f;)V

    :cond_1
    return-void
.end method
