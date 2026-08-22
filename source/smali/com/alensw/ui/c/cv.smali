.class Lcom/alensw/ui/c/cv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/cu;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/cu;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/cv;->a:Lcom/alensw/ui/c/cu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    iget-object v0, p0, Lcom/alensw/ui/c/cv;->a:Lcom/alensw/ui/c/cu;

    iget-object v0, v0, Lcom/alensw/ui/c/cu;->D:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/alensw/ui/c/cv;->a:Lcom/alensw/ui/c/cu;

    iget-object v1, v1, Lcom/alensw/ui/c/cu;->D:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/alensw/ui/c/cv;->a:Lcom/alensw/ui/c/cu;

    iget-object v2, v2, Lcom/alensw/ui/c/cu;->D:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/alensw/ui/c/cv;->a:Lcom/alensw/ui/c/cu;

    iget-object v3, v3, Lcom/alensw/ui/c/cu;->D:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/alensw/ui/c/cv;->b:I

    if-ne v4, v0, :cond_0

    iget v4, p0, Lcom/alensw/ui/c/cv;->c:I

    if-ne v4, v1, :cond_0

    iget v4, p0, Lcom/alensw/ui/c/cv;->d:I

    if-ne v4, v2, :cond_0

    iget v4, p0, Lcom/alensw/ui/c/cv;->e:I

    if-eq v4, v3, :cond_1

    :cond_0
    iput v0, p0, Lcom/alensw/ui/c/cv;->b:I

    iput v1, p0, Lcom/alensw/ui/c/cv;->c:I

    iput v2, p0, Lcom/alensw/ui/c/cv;->d:I

    iput v3, p0, Lcom/alensw/ui/c/cv;->e:I

    iget-object v4, p0, Lcom/alensw/ui/c/cv;->a:Lcom/alensw/ui/c/cu;

    invoke-virtual {v4, v0, v2, v1, v3}, Lcom/alensw/ui/c/cu;->a(IIII)V

    :cond_1
    return-void
.end method
