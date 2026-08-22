.class Lcom/alensw/ui/view/HomeButton;
.super Landroid/widget/ImageView;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Instantiatable"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Z

.field private final e:Landroid/support/a/a/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alensw/ui/view/HomeButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/alensw/ui/view/HomeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/HomeButton;->b:I

    new-instance v0, Landroid/support/a/a/m;

    invoke-direct {v0, p1}, Landroid/support/a/a/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alensw/ui/view/HomeButton;->e:Landroid/support/a/a/m;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iput p1, p0, Lcom/alensw/ui/view/HomeButton;->a:I

    iget-object v0, p0, Lcom/alensw/ui/view/HomeButton;->e:Landroid/support/a/a/m;

    invoke-virtual {v0, p1}, Landroid/support/a/a/m;->a(I)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/alensw/ui/view/HomeButton;->c:Z

    iget-boolean v0, p0, Lcom/alensw/ui/view/HomeButton;->d:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/view/HomeButton;->e:Landroid/support/a/a/m;

    iget-boolean v0, p0, Lcom/alensw/ui/view/HomeButton;->c:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/a/a/m;->b(F)V

    iget-object v0, p0, Lcom/alensw/ui/view/HomeButton;->e:Landroid/support/a/a/m;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Z)V
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/view/HomeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000a

    iget v2, p0, Lcom/alensw/ui/view/HomeButton;->a:I

    invoke-static {v0, v1, v2}, Lcom/b/a/b;->a(Landroid/content/res/Resources;II)Lcom/b/a/l;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v0, p0, Lcom/alensw/ui/view/HomeButton;->b:I

    iget v1, p0, Lcom/alensw/ui/view/HomeButton;->b:I

    iget v2, p0, Lcom/alensw/ui/view/HomeButton;->b:I

    iget v3, p0, Lcom/alensw/ui/view/HomeButton;->b:I

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/view/HomeButton;->e:Landroid/support/a/a/m;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-super {p0, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alensw/ui/view/HomeButton;->d:Z

    instance-of v0, p1, Landroid/support/a/a/m;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/support/a/a/m;

    iget v1, p0, Lcom/alensw/ui/view/HomeButton;->a:I

    invoke-virtual {v0, v1}, Landroid/support/a/a/m;->a(I)V

    :cond_0
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/view/HomeButton;->e:Landroid/support/a/a/m;

    iget-boolean v0, p0, Lcom/alensw/ui/view/HomeButton;->c:Z

    if-eqz v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v1, v0}, Landroid/support/a/a/m;->b(F)V

    iget-object p1, p0, Lcom/alensw/ui/view/HomeButton;->e:Landroid/support/a/a/m;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method
