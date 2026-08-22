.class Lcom/alensw/ui/c/dv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/dp;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/dp;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/dv;->a:Lcom/alensw/ui/c/dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/dv;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v0}, Lcom/alensw/ui/c/dp;->e(Lcom/alensw/ui/c/dp;)Lcom/alensw/ui/view/PictureView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/PictureView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
