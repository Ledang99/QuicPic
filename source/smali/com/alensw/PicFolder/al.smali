.class Lcom/alensw/PicFolder/al;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/alensw/PicFolder/PlayerActivity;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/al;->a:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    iget-object v0, p0, Lcom/alensw/PicFolder/al;->a:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-static {v0}, Lcom/alensw/PicFolder/PlayerActivity;->a(Lcom/alensw/PicFolder/PlayerActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/alensw/PicFolder/al;->a:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-static {v1}, Lcom/alensw/PicFolder/PlayerActivity;->b(Lcom/alensw/PicFolder/PlayerActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/alensw/PicFolder/al;->a:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-static {v2}, Lcom/alensw/PicFolder/PlayerActivity;->c(Lcom/alensw/PicFolder/PlayerActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/alensw/PicFolder/al;->a:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-static {v3}, Lcom/alensw/PicFolder/PlayerActivity;->d(Lcom/alensw/PicFolder/PlayerActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/alensw/PicFolder/al;->b:I

    if-ne v4, v0, :cond_0

    iget v4, p0, Lcom/alensw/PicFolder/al;->c:I

    if-ne v4, v1, :cond_0

    iget v4, p0, Lcom/alensw/PicFolder/al;->d:I

    if-ne v4, v2, :cond_0

    iget v4, p0, Lcom/alensw/PicFolder/al;->e:I

    if-eq v4, v3, :cond_1

    :cond_0
    iput v0, p0, Lcom/alensw/PicFolder/al;->b:I

    iput v1, p0, Lcom/alensw/PicFolder/al;->c:I

    iput v2, p0, Lcom/alensw/PicFolder/al;->d:I

    iput v3, p0, Lcom/alensw/PicFolder/al;->e:I

    iget-object v0, p0, Lcom/alensw/PicFolder/al;->a:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/PlayerActivity;->f()V

    :cond_1
    return-void
.end method
