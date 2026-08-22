.class Lcom/alensw/ui/c/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/z;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/z;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/ac;->a:Lcom/alensw/ui/c/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/c/ac;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->g:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/alensw/ui/c/ac;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->g:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alensw/ui/c/ac;->a:Lcom/alensw/ui/c/z;

    iget-object v1, v1, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alensw/ui/c/cx;->c(Z)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
