.class Lcom/alensw/ui/view/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/view/w;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/w;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/x;->a:Lcom/alensw/ui/view/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/view/x;->a:Lcom/alensw/ui/view/w;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alensw/ui/view/w;->a(Lcom/alensw/ui/view/w;Z)Z

    iget-object v0, p0, Lcom/alensw/ui/view/x;->a:Lcom/alensw/ui/view/w;

    invoke-static {v0}, Lcom/alensw/ui/view/w;->a(Lcom/alensw/ui/view/w;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/x;->a:Lcom/alensw/ui/view/w;

    invoke-static {v0}, Lcom/alensw/ui/view/w;->b(Lcom/alensw/ui/view/w;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/x;->a:Lcom/alensw/ui/view/w;

    invoke-static {v0}, Lcom/alensw/ui/view/w;->d(Lcom/alensw/ui/view/w;)Lcom/alensw/ui/view/y;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/view/x;->a:Lcom/alensw/ui/view/w;

    invoke-static {v1}, Lcom/alensw/ui/view/w;->c(Lcom/alensw/ui/view/w;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/alensw/ui/view/x;->a:Lcom/alensw/ui/view/w;

    invoke-static {v2}, Lcom/alensw/ui/view/w;->c(Lcom/alensw/ui/view/w;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-interface {v0, v1, v2}, Lcom/alensw/ui/view/y;->b(FF)V

    :cond_0
    return-void
.end method
