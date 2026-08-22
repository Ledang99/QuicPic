.class Lcom/alensw/cloud/aj;
.super Lcom/alensw/ui/view/z;


# instance fields
.field final synthetic a:Lcom/alensw/cloud/UrlTaskActivity;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/UrlTaskActivity;II)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/aj;->a:Lcom/alensw/cloud/UrlTaskActivity;

    invoke-direct {p0, p2, p3}, Lcom/alensw/ui/view/z;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(ILandroid/view/View;)Landroid/net/Uri;
    .locals 9

    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/cloud/ak;

    iget-object v1, p0, Lcom/alensw/cloud/aj;->a:Lcom/alensw/cloud/UrlTaskActivity;

    invoke-static {v1}, Lcom/alensw/cloud/UrlTaskActivity;->f(Lcom/alensw/cloud/UrlTaskActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alensw/cloud/ad;

    iget v7, v1, Lcom/alensw/cloud/ad;->d:I

    iget-object v5, v0, Lcom/alensw/cloud/ak;->a:Landroid/widget/TextView;

    if-ne v7, v6, :cond_1

    iget-object v2, p0, Lcom/alensw/cloud/aj;->a:Lcom/alensw/cloud/UrlTaskActivity;

    invoke-static {v2}, Lcom/alensw/cloud/UrlTaskActivity;->h(Lcom/alensw/cloud/UrlTaskActivity;)I

    move-result v2

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    if-ne v7, v3, :cond_2

    move v2, v3

    :goto_1
    iget-object v8, v0, Lcom/alensw/cloud/ak;->b:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_3

    move v5, v4

    :goto_2
    invoke-virtual {v8, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v5, v0, Lcom/alensw/cloud/ak;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v1}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/alensw/cloud/ak;->b:Landroid/widget/ProgressBar;

    iget v5, v1, Lcom/alensw/cloud/ad;->c:I

    if-nez v5, :cond_4

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v2, v0, Lcom/alensw/cloud/ak;->b:Landroid/widget/ProgressBar;

    iget v3, v1, Lcom/alensw/cloud/ad;->c:I

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    iget-object v2, v0, Lcom/alensw/cloud/ak;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/alensw/cloud/ak;->c:Landroid/widget/ImageView;

    if-ne v7, v6, :cond_5

    iget-object v0, p0, Lcom/alensw/cloud/aj;->a:Lcom/alensw/cloud/UrlTaskActivity;

    invoke-static {v0}, Lcom/alensw/cloud/UrlTaskActivity;->i(Lcom/alensw/cloud/UrlTaskActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_4
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v1, Lcom/alensw/cloud/ad;->a:Landroid/net/Uri;

    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/alensw/cloud/aj;->a:Lcom/alensw/cloud/UrlTaskActivity;

    iget v2, v2, Lcom/alensw/cloud/UrlTaskActivity;->Y:I

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v5, v6

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/alensw/cloud/aj;->a:Lcom/alensw/cloud/UrlTaskActivity;

    invoke-static {v0}, Lcom/alensw/cloud/UrlTaskActivity;->j(Lcom/alensw/cloud/UrlTaskActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_4
.end method

.method public a(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/alensw/cloud/aj;->a:Lcom/alensw/cloud/UrlTaskActivity;

    invoke-virtual {v0}, Lcom/alensw/cloud/UrlTaskActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030019

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/alensw/cloud/ak;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lcom/alensw/cloud/ak;-><init>(Lcom/alensw/cloud/af;)V

    const v0, 0x7f09000f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/alensw/cloud/ak;->a:Landroid/widget/TextView;

    const v0, 0x7f09003c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v2, Lcom/alensw/cloud/ak;->b:Landroid/widget/ProgressBar;

    iget-object v0, v2, Lcom/alensw/cloud/ak;->b:Landroid/widget/ProgressBar;

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    const v0, 0x7f090042

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/alensw/cloud/ak;->c:Landroid/widget/ImageView;

    iget-object v0, v2, Lcom/alensw/cloud/ak;->c:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/alensw/cloud/aj;->a:Lcom/alensw/cloud/UrlTaskActivity;

    invoke-static {v3}, Lcom/alensw/cloud/UrlTaskActivity;->g(Lcom/alensw/cloud/UrlTaskActivity;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method

.method public a(I)Lcom/alensw/cloud/ad;
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/aj;->a:Lcom/alensw/cloud/UrlTaskActivity;

    invoke-static {v0}, Lcom/alensw/cloud/UrlTaskActivity;->f(Lcom/alensw/cloud/UrlTaskActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/cloud/ad;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/aj;->a:Lcom/alensw/cloud/UrlTaskActivity;

    invoke-static {v0}, Lcom/alensw/cloud/UrlTaskActivity;->f(Lcom/alensw/cloud/UrlTaskActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alensw/cloud/aj;->a(I)Lcom/alensw/cloud/ad;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
