.class Lcom/alensw/ui/c/dr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/dp;

.field private b:I


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/dp;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/dr;->a:Lcom/alensw/ui/c/dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    iget v0, p0, Lcom/alensw/ui/c/dr;->b:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/alensw/ui/c/dr;->a:Lcom/alensw/ui/c/dp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alensw/ui/c/dp;->a(Lcom/alensw/ui/c/dp;Z)V

    iget-object v0, p0, Lcom/alensw/ui/c/dr;->a:Lcom/alensw/ui/c/dp;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alensw/ui/c/dp;->e(Lcom/alensw/ui/c/dp;Z)V

    iget-object v0, p0, Lcom/alensw/ui/c/dr;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v0}, Lcom/alensw/ui/c/dp;->q(Lcom/alensw/ui/c/dp;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/dr;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v0}, Lcom/alensw/ui/c/dp;->e(Lcom/alensw/ui/c/dp;)Lcom/alensw/ui/view/PictureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/ui/view/PictureView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/alensw/ui/c/dr;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v1}, Lcom/alensw/ui/c/dp;->e(Lcom/alensw/ui/c/dp;)Lcom/alensw/ui/view/PictureView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alensw/ui/view/PictureView;->getHeight()I

    move-result v1

    invoke-static {v0}, Lcom/alensw/b/l/b;->a(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v1}, Lcom/alensw/b/l/b;->a(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/alensw/ui/c/dr;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v2}, Lcom/alensw/ui/c/dp;->e(Lcom/alensw/ui/c/dp;)Lcom/alensw/ui/view/PictureView;

    move-result-object v2

    iget-object v3, p0, Lcom/alensw/ui/c/dr;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v3}, Lcom/alensw/ui/c/dp;->e(Lcom/alensw/ui/c/dp;)Lcom/alensw/ui/view/PictureView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alensw/ui/view/PictureView;->getTransScale()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    const v4, 0xafc8

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/alensw/ui/view/PictureView;->b(FFFI)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/c/dr;->b:I

    const/4 v0, -0x4

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    return-void
.end method
