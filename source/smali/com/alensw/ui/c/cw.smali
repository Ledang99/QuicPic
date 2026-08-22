.class Lcom/alensw/ui/c/cw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/animation/Animation;

.field final synthetic b:Lcom/alensw/ui/c/cu;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/cu;Landroid/view/animation/Animation;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/cw;->b:Lcom/alensw/ui/c/cu;

    iput-object p2, p0, Lcom/alensw/ui/c/cw;->a:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-boolean v0, Lcom/alensw/ui/c/cx;->G:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/cw;->b:Lcom/alensw/ui/c/cu;

    iget-object v0, v0, Lcom/alensw/ui/c/cu;->D:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/cw;->b:Lcom/alensw/ui/c/cu;

    iget-object v0, v0, Lcom/alensw/ui/c/cu;->D:Landroid/view/View;

    iget-object v1, p0, Lcom/alensw/ui/c/cw;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
