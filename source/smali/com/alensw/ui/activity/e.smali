.class Lcom/alensw/ui/activity/e;
.super Lcom/alensw/b/g/a;


# instance fields
.field final synthetic k:Lcom/alensw/ui/activity/d;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/d;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/e;->k:Lcom/alensw/ui/activity/d;

    invoke-direct {p0, p2, p3}, Lcom/alensw/b/g/a;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;
    .locals 4

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    sget-object v1, Lcom/alensw/ui/activity/e;->i:[I

    const v2, 0x7f05000a

    invoke-static {p1, v2, p2, p3}, Lcom/b/a/b;->a(Landroid/content/res/Resources;III)Lcom/b/a/l;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v1, Lcom/alensw/ui/activity/e;->j:[I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public b(Landroid/content/res/Resources;IIZ)Landroid/graphics/drawable/Drawable;
    .locals 7

    new-instance v6, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-instance v0, Lcom/alensw/ui/activity/f;

    const v1, 0x7f050002

    invoke-static {p1, v1, p2, p3}, Lcom/b/a/b;->a(Landroid/content/res/Resources;III)Lcom/b/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/l;->a()Landroid/graphics/Picture;

    move-result-object v2

    move-object v1, p0

    move v3, p3

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alensw/ui/activity/f;-><init>(Lcom/alensw/ui/activity/e;Landroid/graphics/Picture;IIZ)V

    sget-object v1, Lcom/alensw/ui/activity/e;->i:[I

    invoke-virtual {v6, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v1, Lcom/alensw/ui/activity/e;->j:[I

    invoke-virtual {v6, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v6
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    invoke-super {p0, p1, p2, p3}, Lcom/alensw/b/g/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/alensw/ui/activity/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/g/l;

    invoke-virtual {v0}, Lcom/alensw/b/g/l;->getItemId()I

    move-result v0

    iget-object v2, p0, Lcom/alensw/ui/activity/e;->k:Lcom/alensw/ui/activity/d;

    iget v2, v2, Lcom/alensw/ui/activity/d;->f:I

    if-ne v0, v2, :cond_0

    const v0, 0x7f09001a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/alensw/ui/activity/e;->k:Lcom/alensw/ui/activity/d;

    iget v3, v3, Lcom/alensw/ui/activity/d;->f:I

    const v4, 0x7f090073

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/alensw/ui/activity/e;->b:I

    iget v4, p0, Lcom/alensw/ui/activity/e;->a:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/alensw/ui/activity/e;->a(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget v3, p0, Lcom/alensw/ui/activity/e;->b:I

    iget v4, p0, Lcom/alensw/ui/activity/e;->a:I

    iget-object v5, p0, Lcom/alensw/ui/activity/e;->k:Lcom/alensw/ui/activity/d;

    iget-boolean v5, v5, Lcom/alensw/ui/activity/d;->g:Z

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/alensw/ui/activity/e;->b(Landroid/content/res/Resources;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
