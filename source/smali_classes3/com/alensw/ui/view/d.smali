.class Lcom/alensw/ui/view/d;
.super Lcom/alensw/ui/view/bt;


# instance fields
.field final synthetic a:Lcom/alensw/ui/view/a;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/a;Landroid/view/View;Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/d;->a:Lcom/alensw/ui/view/a;

    invoke-direct {p0, p2, p3}, Lcom/alensw/ui/view/bt;-><init>(Landroid/view/View;Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/view/d;->a:Lcom/alensw/ui/view/a;

    iget v0, v0, Lcom/alensw/ui/view/a;->c:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/alensw/ui/view/d;->a:Lcom/alensw/ui/view/a;

    invoke-static {v1}, Lcom/alensw/ui/view/a;->a(Lcom/alensw/ui/view/a;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/view/d;->a:Lcom/alensw/ui/view/a;

    iget v1, v1, Lcom/alensw/ui/view/a;->c:I

    sub-int v0, v1, v0

    :cond_0
    iget-object v1, p0, Lcom/alensw/ui/view/d;->a:Lcom/alensw/ui/view/a;

    invoke-virtual {v1, v0}, Lcom/alensw/ui/view/a;->b(I)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/d;->a:Lcom/alensw/ui/view/a;

    invoke-static {v0}, Lcom/alensw/ui/view/a;->b(Lcom/alensw/ui/view/a;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
