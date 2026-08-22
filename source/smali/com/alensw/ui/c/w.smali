.class Lcom/alensw/ui/c/w;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/p;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/p;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/w;->a:Lcom/alensw/ui/c/p;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/w;->a:Lcom/alensw/ui/c/p;

    invoke-static {v0}, Lcom/alensw/ui/c/p;->g(Lcom/alensw/ui/c/p;)Lcom/alensw/bean/CommonFolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->o()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/w;->a:Lcom/alensw/ui/c/p;

    invoke-static {v0}, Lcom/alensw/ui/c/p;->g(Lcom/alensw/ui/c/p;)Lcom/alensw/bean/CommonFolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alensw/bean/CommonFolder;->a(I)Lcom/alensw/bean/CommonFile;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/16 v4, 0x8

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/w;->a:Lcom/alensw/ui/c/p;

    iget-object v0, v0, Lcom/alensw/ui/c/p;->C:Lcom/alensw/ui/c/cx;

    const v1, 0x7f030007

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x7f09000f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090010

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09000e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/alensw/ui/c/w;->a:Lcom/alensw/ui/c/p;

    invoke-static {v3}, Lcom/alensw/ui/c/p;->g(Lcom/alensw/ui/c/p;)Lcom/alensw/bean/CommonFolder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/alensw/bean/CommonFolder;->a(I)Lcom/alensw/bean/CommonFile;

    move-result-object v3

    instance-of v5, v3, Lcom/alensw/bean/CommonRoot;

    if-eqz v5, :cond_2

    check-cast v3, Lcom/alensw/bean/CommonRoot;

    invoke-virtual {v3}, Lcom/alensw/bean/CommonRoot;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v3, Lcom/alensw/bean/CommonRoot;->o:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v3, Lcom/alensw/bean/CommonRoot;->o:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v3, Lcom/alensw/bean/CommonRoot;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iget-object v1, p0, Lcom/alensw/ui/c/w;->a:Lcom/alensw/ui/c/p;

    invoke-virtual {v1}, Lcom/alensw/ui/c/p;->F()Landroid/content/res/Resources;

    move-result-object v1

    iget v3, v3, Lcom/alensw/bean/CommonRoot;->l:I

    invoke-static {v1, v3, v0}, Lcom/alensw/b/l/b;->a(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-object p2

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    if-nez p1, :cond_4

    const-string v3, ".."

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alensw/ui/c/w;->a:Lcom/alensw/ui/c/p;

    invoke-static {v0}, Lcom/alensw/ui/c/p;->h(Lcom/alensw/ui/c/p;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/c/w;->a:Lcom/alensw/ui/c/p;

    iget-object v3, p0, Lcom/alensw/ui/c/w;->a:Lcom/alensw/ui/c/p;

    invoke-virtual {v3}, Lcom/alensw/ui/c/p;->F()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05000d

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iget-object v5, p0, Lcom/alensw/ui/c/w;->a:Lcom/alensw/ui/c/p;

    invoke-static {v5}, Lcom/alensw/ui/c/p;->i(Lcom/alensw/ui/c/p;)I

    move-result v5

    invoke-static {v3, v4, v1, v5}, Lcom/b/a/b;->a(Landroid/content/res/Resources;III)Lcom/b/a/l;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alensw/ui/c/p;->a(Lcom/alensw/ui/c/p;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object v0, p0, Lcom/alensw/ui/c/w;->a:Lcom/alensw/ui/c/p;

    invoke-static {v0}, Lcom/alensw/ui/c/p;->h(Lcom/alensw/ui/c/p;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lcom/alensw/bean/CommonFile;->a()Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method
