.class Lcom/alensw/ui/activity/bk;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/alensw/ui/activity/SelectThemeActivity;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/SelectThemeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/bk;->a:Lcom/alensw/ui/activity/SelectThemeActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/activity/bk;->a:Lcom/alensw/ui/activity/SelectThemeActivity;

    invoke-static {v0}, Lcom/alensw/ui/activity/SelectThemeActivity;->c(Lcom/alensw/ui/activity/SelectThemeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/activity/bk;->a:Lcom/alensw/ui/activity/SelectThemeActivity;

    invoke-static {v0}, Lcom/alensw/ui/activity/SelectThemeActivity;->c(Lcom/alensw/ui/activity/SelectThemeActivity;)Ljava/util/ArrayList;

    move-result-object v0

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
    .locals 8

    const/4 v2, 0x0

    const v7, 0x7f090034

    const v6, 0x7f090033

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/bk;->a:Lcom/alensw/ui/activity/SelectThemeActivity;

    const v1, 0x7f030015

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Landroid/support/a/a/m;

    iget-object v3, p0, Lcom/alensw/ui/activity/bk;->a:Lcom/alensw/ui/activity/SelectThemeActivity;

    invoke-direct {v1, v3}, Landroid/support/a/a/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alensw/ui/activity/bk;->a:Lcom/alensw/ui/activity/SelectThemeActivity;

    invoke-virtual {v1}, Lcom/alensw/ui/activity/SelectThemeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f05000f

    iget-object v4, p0, Lcom/alensw/ui/activity/bk;->a:Lcom/alensw/ui/activity/SelectThemeActivity;

    iget v4, v4, Lcom/alensw/ui/activity/SelectThemeActivity;->X:I

    iget-object v5, p0, Lcom/alensw/ui/activity/bk;->a:Lcom/alensw/ui/activity/SelectThemeActivity;

    invoke-static {v5}, Lcom/alensw/ui/activity/SelectThemeActivity;->d(Lcom/alensw/ui/activity/SelectThemeActivity;)I

    move-result v5

    invoke-static {v1, v3, v4, v5}, Lcom/b/a/b;->a(Landroid/content/res/Resources;III)Lcom/b/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/activity/bk;->a:Lcom/alensw/ui/activity/SelectThemeActivity;

    invoke-static {v0}, Lcom/alensw/ui/activity/SelectThemeActivity;->c(Lcom/alensw/ui/activity/SelectThemeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/ui/activity/bl;

    const v1, 0x7f090032

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v3, v0, Lcom/alensw/ui/activity/bl;->c:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/support/a/a/m;

    iget v3, v0, Lcom/alensw/ui/activity/bl;->e:I

    invoke-virtual {v1, v3}, Landroid/support/a/a/m;->a(I)V

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v1, p0, Lcom/alensw/ui/activity/bk;->a:Lcom/alensw/ui/activity/SelectThemeActivity;

    invoke-static {v1}, Lcom/alensw/ui/activity/SelectThemeActivity;->e(Lcom/alensw/ui/activity/SelectThemeActivity;)Ljava/util/HashMap;

    move-result-object v1

    iget v4, v0, Lcom/alensw/ui/activity/bl;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/ColorFilter;

    if-nez v1, :cond_1

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v4, v0, Lcom/alensw/ui/activity/bl;->e:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v4, p0, Lcom/alensw/ui/activity/bk;->a:Lcom/alensw/ui/activity/SelectThemeActivity;

    invoke-static {v4}, Lcom/alensw/ui/activity/SelectThemeActivity;->e(Lcom/alensw/ui/activity/SelectThemeActivity;)Ljava/util/HashMap;

    move-result-object v4

    iget v5, v0, Lcom/alensw/ui/activity/bl;->e:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const v1, 0x7f09001a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget v3, v0, Lcom/alensw/ui/activity/bl;->a:I

    iget-object v4, p0, Lcom/alensw/ui/activity/bk;->a:Lcom/alensw/ui/activity/SelectThemeActivity;

    iget v4, v4, Lcom/alensw/ui/activity/SelectThemeActivity;->T:I

    if-ne v3, v4, :cond_2

    iget v3, v0, Lcom/alensw/ui/activity/bl;->c:I

    iget-object v4, p0, Lcom/alensw/ui/activity/bk;->a:Lcom/alensw/ui/activity/SelectThemeActivity;

    iget v4, v4, Lcom/alensw/ui/activity/SelectThemeActivity;->V:I

    if-ne v3, v4, :cond_2

    iget-object v2, p0, Lcom/alensw/ui/activity/bk;->a:Lcom/alensw/ui/activity/SelectThemeActivity;

    invoke-static {v2}, Lcom/alensw/ui/activity/SelectThemeActivity;->f(Lcom/alensw/ui/activity/SelectThemeActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v0, v0, Lcom/alensw/ui/activity/bl;->d:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p2
.end method
