.class Lcom/alensw/ui/view/ActionLayout;
.super Landroid/widget/LinearLayout;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Instantiatable"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alensw/ui/view/ActionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/alensw/ui/view/ActionLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/ActionLayout;->a:I

    return-void
.end method


# virtual methods
.method public onLayout(ZIIII)V
    .locals 12

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    sub-int v3, p4, p2

    sub-int v4, p5, p3

    if-lez v3, :cond_6

    if-lez v4, :cond_6

    invoke-virtual {p0}, Lcom/alensw/ui/view/ActionLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/alensw/ui/view/ActionLayout;->getChildCount()I

    move-result v5

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v11, v0

    move v0, v1

    move v1, v2

    move v2, v11

    :goto_0
    if-ge v2, v5, :cond_1

    invoke-virtual {p0, v2}, Lcom/alensw/ui/view/ActionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v1, v6

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_6

    sub-int v2, v3, v1

    div-int/2addr v2, v0

    iget v6, p0, Lcom/alensw/ui/view/ActionLayout;->a:I

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v6, 0x0

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int v2, v3, v1

    mul-int v7, v6, v0

    sub-int v7, v2, v7

    const/4 v2, 0x1

    if-le v0, v2, :cond_3

    add-int/lit8 v2, v0, -0x1

    :goto_1
    div-int v2, v7, v2

    const/4 v7, 0x1

    if-ne v0, v7, :cond_4

    sub-int v0, v3, v1

    div-int/lit8 v0, v0, 0x2

    :goto_2
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v5, :cond_6

    invoke-virtual {p0, v1}, Lcom/alensw/ui/view/ActionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v6

    add-int/lit8 v9, v5, -0x1

    if-ne v1, v9, :cond_5

    sub-int v8, v3, v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v3, v4}, Landroid/view/View;->layout(IIII)V

    :cond_2
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    add-int v10, v0, v8

    invoke-virtual {v7, v0, v9, v10, v4}, Landroid/view/View;->layout(IIII)V

    add-int v7, v8, v2

    add-int/2addr v0, v7

    goto :goto_4

    :cond_6
    return-void
.end method
