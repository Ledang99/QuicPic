.class Lcom/alensw/ui/view/ba;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/view/PathBar;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/PathBar;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/ba;->a:Lcom/alensw/ui/view/PathBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alensw/ui/view/ba;->a:Lcom/alensw/ui/view/PathBar;

    invoke-static {v0}, Lcom/alensw/ui/view/PathBar;->b(Lcom/alensw/ui/view/PathBar;)I

    move-result v0

    iget-object v2, p0, Lcom/alensw/ui/view/ba;->a:Lcom/alensw/ui/view/PathBar;

    invoke-virtual {v2}, Lcom/alensw/ui/view/PathBar;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/alensw/ui/view/ba;->a:Lcom/alensw/ui/view/PathBar;

    invoke-virtual {v3}, Lcom/alensw/ui/view/PathBar;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/alensw/ui/view/ba;->a:Lcom/alensw/ui/view/PathBar;

    invoke-virtual {v3}, Lcom/alensw/ui/view/PathBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    iget-object v3, p0, Lcom/alensw/ui/view/ba;->a:Lcom/alensw/ui/view/PathBar;

    if-le v0, v2, :cond_1

    sub-int/2addr v0, v2

    :goto_0
    invoke-virtual {v3, v0, v1}, Lcom/alensw/ui/view/PathBar;->smoothScrollTo(II)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
