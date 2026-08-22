.class Lcom/alensw/cloud/c;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/alensw/cloud/CloudConfigActivity;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/CloudConfigActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/c;->a:Lcom/alensw/cloud/CloudConfigActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/c;->a:Lcom/alensw/cloud/CloudConfigActivity;

    invoke-static {v0}, Lcom/alensw/cloud/CloudConfigActivity;->b(Lcom/alensw/cloud/CloudConfigActivity;)Lcom/alensw/bean/CommonFolder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/c;->a:Lcom/alensw/cloud/CloudConfigActivity;

    invoke-static {v0}, Lcom/alensw/cloud/CloudConfigActivity;->b(Lcom/alensw/cloud/CloudConfigActivity;)Lcom/alensw/bean/CommonFolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->o()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/c;->a:Lcom/alensw/cloud/CloudConfigActivity;

    invoke-static {v0}, Lcom/alensw/cloud/CloudConfigActivity;->b(Lcom/alensw/cloud/CloudConfigActivity;)Lcom/alensw/bean/CommonFolder;

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
    .locals 9

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/alensw/cloud/c;->a:Lcom/alensw/cloud/CloudConfigActivity;

    const v1, 0x7f03000b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f09000e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f09000f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09001a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    new-instance v3, Lcom/alensw/cloud/d;

    iget-object v5, p0, Lcom/alensw/cloud/c;->a:Lcom/alensw/cloud/CloudConfigActivity;

    invoke-direct {v3, v5}, Lcom/alensw/cloud/d;-><init>(Lcom/alensw/cloud/CloudConfigActivity;)V

    iput-object v1, v3, Lcom/alensw/cloud/d;->a:Landroid/widget/TextView;

    iput-object v0, v3, Lcom/alensw/cloud/d;->b:Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/alensw/cloud/d;->c:Landroid/widget/CheckBox;

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/alensw/cloud/c;->a:Lcom/alensw/cloud/CloudConfigActivity;

    invoke-virtual {v0}, Lcom/alensw/cloud/CloudConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/cloud/c;->a:Lcom/alensw/cloud/CloudConfigActivity;

    iget v1, v1, Lcom/alensw/cloud/CloudConfigActivity;->d:I

    iget-object v5, p0, Lcom/alensw/cloud/c;->a:Lcom/alensw/cloud/CloudConfigActivity;

    iget v5, v5, Lcom/alensw/cloud/CloudConfigActivity;->c:I

    invoke-static {v0, v1, v5, v4}, Lcom/alensw/b/g/a;->a(Landroid/content/res/Resources;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    move-object v0, v3

    :goto_0
    iget-object v1, p0, Lcom/alensw/cloud/c;->a:Lcom/alensw/cloud/CloudConfigActivity;

    invoke-static {v1}, Lcom/alensw/cloud/CloudConfigActivity;->b(Lcom/alensw/cloud/CloudConfigActivity;)Lcom/alensw/bean/CommonFolder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alensw/bean/CommonFolder;->a(I)Lcom/alensw/bean/CommonFile;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/cloud/c;->a:Lcom/alensw/cloud/CloudConfigActivity;

    invoke-static {v2, p1}, Lcom/alensw/cloud/CloudConfigActivity;->a(Lcom/alensw/cloud/CloudConfigActivity;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alensw/cloud/c;->a:Lcom/alensw/cloud/CloudConfigActivity;

    iget-object v3, v3, Lcom/alensw/cloud/CloudConfigActivity;->e:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/alensw/cloud/c;->a:Lcom/alensw/cloud/CloudConfigActivity;

    iget-object v5, p0, Lcom/alensw/cloud/c;->a:Lcom/alensw/cloud/CloudConfigActivity;

    invoke-virtual {v5}, Lcom/alensw/cloud/CloudConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f05000d

    iget-object v7, v0, Lcom/alensw/cloud/d;->a:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    const v8, 0xffffff

    and-int/2addr v7, v8

    const/high16 v8, -0x40000000    # -2.0f

    or-int/2addr v7, v8

    iget-object v8, p0, Lcom/alensw/cloud/c;->a:Lcom/alensw/cloud/CloudConfigActivity;

    iget v8, v8, Lcom/alensw/cloud/CloudConfigActivity;->b:I

    invoke-static {v5, v6, v7, v8}, Lcom/b/a/b;->a(Landroid/content/res/Resources;III)Lcom/b/a/l;

    move-result-object v5

    iput-object v5, v3, Lcom/alensw/cloud/CloudConfigActivity;->e:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v3, v0, Lcom/alensw/cloud/d;->b:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/alensw/cloud/c;->a:Lcom/alensw/cloud/CloudConfigActivity;

    iget-object v5, v5, Lcom/alensw/cloud/CloudConfigActivity;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lcom/alensw/cloud/d;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/alensw/bean/CommonFile;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/alensw/cloud/d;->c:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/alensw/cloud/c;->a:Lcom/alensw/cloud/CloudConfigActivity;

    invoke-static {v0}, Lcom/alensw/cloud/CloudConfigActivity;->a(Lcom/alensw/cloud/CloudConfigActivity;)Lcom/alensw/cloud/aa;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alensw/cloud/aa;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-object p2

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/cloud/d;

    goto :goto_0

    :cond_4
    move v0, v4

    goto :goto_1
.end method
