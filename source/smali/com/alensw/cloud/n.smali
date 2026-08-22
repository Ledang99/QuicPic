.class final Lcom/alensw/cloud/n;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Landroid/content/res/Resources;

.field final synthetic h:I


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;IIIILandroid/content/res/Resources;I)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/n;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/alensw/cloud/n;->b:Landroid/content/Context;

    iput p3, p0, Lcom/alensw/cloud/n;->c:I

    iput p4, p0, Lcom/alensw/cloud/n;->d:I

    iput p5, p0, Lcom/alensw/cloud/n;->e:I

    iput p6, p0, Lcom/alensw/cloud/n;->f:I

    iput-object p7, p0, Lcom/alensw/cloud/n;->g:Landroid/content/res/Resources;

    iput p8, p0, Lcom/alensw/cloud/n;->h:I

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/cloud/x;

    iget v0, v0, Lcom/alensw/cloud/x;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p2, :cond_0

    new-instance p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alensw/cloud/n;->b:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v0, 0x13

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget v0, p0, Lcom/alensw/cloud/n;->c:I

    iget v4, p0, Lcom/alensw/cloud/n;->d:I

    iget v5, p0, Lcom/alensw/cloud/n;->c:I

    iget v6, p0, Lcom/alensw/cloud/n;->d:I

    invoke-virtual {p2, v0, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    :goto_0
    iget-object v0, p0, Lcom/alensw/cloud/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/cloud/x;

    iget v4, v0, Lcom/alensw/cloud/x;->d:I

    if-nez v4, :cond_1

    :goto_1
    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    if-eqz v3, :cond_3

    iget v1, p0, Lcom/alensw/cloud/n;->e:I

    :goto_3
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v3, :cond_4

    const/high16 v1, 0x41600000    # 14.0f

    :goto_4
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/alensw/cloud/n;->g:Landroid/content/res/Resources;

    iget v3, v0, Lcom/alensw/cloud/x;->c:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, v0, Lcom/alensw/cloud/x;->b:I

    if-eqz v1, :cond_5

    :try_start_0
    iget-object v1, p0, Lcom/alensw/cloud/n;->g:Landroid/content/res/Resources;

    iget v3, v0, Lcom/alensw/cloud/x;->b:I

    iget v4, p0, Lcom/alensw/cloud/n;->e:I

    iget v5, p0, Lcom/alensw/cloud/n;->h:I

    invoke-static {v1, v3, v4, v5}, Lcom/b/a/b;->a(Landroid/content/res/Resources;III)Lcom/b/a/l;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_5
    invoke-virtual {p2, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object p2

    :cond_0
    check-cast p2, Landroid/widget/TextView;

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/alensw/cloud/n;->c:I

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/alensw/cloud/n;->f:I

    goto :goto_3

    :cond_4
    const/high16 v1, 0x41900000    # 18.0f

    goto :goto_4

    :catch_0
    move-exception v1

    :try_start_1
    iget-object v1, p0, Lcom/alensw/cloud/n;->g:Landroid/content/res/Resources;

    iget v0, v0, Lcom/alensw/cloud/x;->b:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_5

    :cond_5
    move-object v0, v2

    goto :goto_5
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/cloud/x;

    iget v0, v0, Lcom/alensw/cloud/x;->d:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
