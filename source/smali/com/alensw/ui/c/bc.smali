.class Lcom/alensw/ui/c/bc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/as;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/as;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/bc;->a:Lcom/alensw/ui/c/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/bc;->a:Lcom/alensw/ui/c/as;

    invoke-static {v0}, Lcom/alensw/ui/c/as;->f(Lcom/alensw/ui/c/as;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alensw/ui/c/bc;->a:Lcom/alensw/ui/c/as;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alensw/ui/c/as;->a(Lcom/alensw/ui/c/as;Z)V

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
