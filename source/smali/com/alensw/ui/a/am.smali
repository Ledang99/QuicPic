.class Lcom/alensw/ui/a/am;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/alensw/ui/a/ae;


# direct methods
.method constructor <init>(Lcom/alensw/ui/a/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/a/am;->a:Lcom/alensw/ui/a/ae;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/a/am;->a:Lcom/alensw/ui/a/ae;

    iget-object v0, v0, Lcom/alensw/ui/a/ae;->k:Lcom/alensw/a/e;

    iget-object v0, v0, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/a/am;->a:Lcom/alensw/ui/a/ae;

    iget-object v0, v0, Lcom/alensw/ui/a/ae;->k:Lcom/alensw/a/e;

    iget-object v0, v0, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    if-nez p2, :cond_0

    new-instance p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alensw/ui/a/am;->a:Lcom/alensw/ui/a/ae;

    iget-object v0, v0, Lcom/alensw/ui/a/ae;->a:Landroid/content/Context;

    const v1, 0x1010041

    invoke-direct {p2, v0, v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iget-object v0, p0, Lcom/alensw/ui/a/am;->a:Lcom/alensw/ui/a/ae;

    iget v0, v0, Lcom/alensw/ui/a/ae;->j:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v0, 0x13

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/alensw/ui/a/am;->a:Lcom/alensw/ui/a/ae;

    iget v0, v0, Lcom/alensw/ui/a/ae;->i:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/alensw/ui/a/am;->a:Lcom/alensw/ui/a/ae;

    iget v0, v0, Lcom/alensw/ui/a/ae;->j:I

    iget-object v1, p0, Lcom/alensw/ui/a/am;->a:Lcom/alensw/ui/a/ae;

    iget v1, v1, Lcom/alensw/ui/a/ae;->j:I

    iget-object v2, p0, Lcom/alensw/ui/a/am;->a:Lcom/alensw/ui/a/ae;

    iget v2, v2, Lcom/alensw/ui/a/ae;->j:I

    iget-object v3, p0, Lcom/alensw/ui/a/am;->a:Lcom/alensw/ui/a/ae;

    iget v3, v3, Lcom/alensw/ui/a/ae;->j:I

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_0
    iget-object v0, p0, Lcom/alensw/ui/a/am;->a:Lcom/alensw/ui/a/ae;

    iget-object v0, v0, Lcom/alensw/ui/a/ae;->k:Lcom/alensw/a/e;

    iget-object v0, v0, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    const v2, 0xffffff

    and-int/2addr v2, v1

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, -0x1000000

    :goto_1
    or-int/2addr v1, v2

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/alensw/ui/a/am;->a:Lcom/alensw/ui/a/ae;

    iget-object v1, v1, Lcom/alensw/ui/a/ae;->l:Lcom/alensw/a/e;

    if-ne v0, v1, :cond_2

    const-string v0, ".."

    :goto_2
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alensw/ui/a/am;->a:Lcom/alensw/ui/a/ae;

    iget-object v0, v0, Lcom/alensw/ui/a/ae;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object p2

    :cond_0
    check-cast p2, Landroid/widget/TextView;

    goto :goto_0

    :cond_1
    const/high16 v1, -0x80000000

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
