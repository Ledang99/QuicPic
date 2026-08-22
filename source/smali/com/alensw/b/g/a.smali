.class public Lcom/alensw/b/g/a;
.super Landroid/widget/BaseAdapter;


# static fields
.field public static final i:[I

.field public static final j:[I


# instance fields
.field protected final a:I

.field protected final b:I

.field protected final c:I

.field protected final d:Z

.field protected final e:Landroid/content/Context;

.field protected f:Z

.field protected g:I

.field protected h:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    sput-object v0, Lcom/alensw/b/g/a;->i:[I

    new-array v0, v2, [I

    sput-object v0, Lcom/alensw/b/g/a;->j:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput v0, p0, Lcom/alensw/b/g/a;->g:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object p1, p0, Lcom/alensw/b/g/a;->e:Landroid/content/Context;

    const v2, 0x7f080007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/alensw/b/g/a;->a:I

    iput p2, p0, Lcom/alensw/b/g/a;->b:I

    const v2, 0x7f070049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/alensw/b/g/a;->c:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/alensw/b/g/a;->d:Z

    return-void
.end method

.method public static a(Landroid/content/res/Resources;IIZ)Landroid/graphics/drawable/Drawable;
    .locals 4

    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    if-eqz p3, :cond_0

    const v0, 0x7f050004

    :goto_0
    invoke-static {p0, v0, p2, p1}, Lcom/b/a/b;->a(Landroid/content/res/Resources;III)Lcom/b/a/l;

    move-result-object v2

    if-eqz p3, :cond_1

    const v0, 0x7f050003

    :goto_1
    invoke-static {p0, v0, p2, p1}, Lcom/b/a/b;->a(Landroid/content/res/Resources;III)Lcom/b/a/l;

    move-result-object v0

    sget-object v3, Lcom/alensw/b/g/a;->i:[I

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v2, Lcom/alensw/b/g/a;->j:[I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v1

    :cond_0
    const v0, 0x7f050001

    goto :goto_0

    :cond_1
    const/high16 v0, 0x7f050000

    goto :goto_1
.end method

.method public static a(Landroid/widget/ListAdapter;)[I
    .locals 10

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    move v0, v1

    move-object v2, v3

    move v4, v1

    move v5, v1

    :goto_0
    if-ge v0, v8, :cond_0

    invoke-interface {p0, v0, v2, v3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v4, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v5, v0, v1

    const/4 v1, 0x1

    aput v4, v0, v1

    return-object v0
.end method


# virtual methods
.method public a(Lcom/alensw/b/g/b;)V
    .locals 4

    invoke-virtual {p1}, Lcom/alensw/b/g/b;->size()I

    move-result v2

    iget-object v0, p0, Lcom/alensw/b/g/a;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/b/g/a;->h:Ljava/util/ArrayList;

    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Lcom/alensw/b/g/b;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/g/l;

    invoke-virtual {v0}, Lcom/alensw/b/g/l;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alensw/b/g/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/alensw/b/g/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/alensw/b/g/b;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alensw/b/g/a;->f:Z

    return-void
.end method

.method public a()[I
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alensw/b/g/a;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f080012

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {p0}, Lcom/alensw/b/g/a;->a(Landroid/widget/ListAdapter;)[I

    move-result-object v2

    aget v3, v2, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    aput v0, v2, v4

    return-object v2
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/g/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/g/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/alensw/b/g/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/g/l;

    invoke-virtual {v0}, Lcom/alensw/b/g/l;->getItemId()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/16 v6, 0x8

    const v5, 0x7f09000f

    const/4 v4, 0x0

    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/alensw/b/g/a;->e:Landroid/content/Context;

    const v1, 0x7f03000b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/alensw/b/g/a;->d:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    move v1, v4

    :goto_0
    div-int/lit8 v3, v2, 0x2

    if-ge v1, v3, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    :cond_1
    iget v1, p0, Lcom/alensw/b/g/a;->g:I

    if-nez v1, :cond_9

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, p0, Lcom/alensw/b/g/a;->g:I

    move-object p2, v0

    :goto_1
    const v0, 0x7f09000e

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09001a

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CompoundButton;

    iget-object v3, p0, Lcom/alensw/b/g/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alensw/b/g/l;

    invoke-virtual {v3}, Lcom/alensw/b/g/l;->isEnabled()Z

    move-result v7

    iget-boolean v5, p0, Lcom/alensw/b/g/a;->f:Z

    if-eqz v5, :cond_4

    move v5, v4

    :goto_2
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v5, p0, Lcom/alensw/b/g/a;->f:Z

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/alensw/b/g/l;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-virtual {v3}, Lcom/alensw/b/g/l;->a()V

    invoke-virtual {v3}, Lcom/alensw/b/g/l;->b()I

    move-result v0

    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/alensw/b/g/a;->c:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    invoke-virtual {v3}, Lcom/alensw/b/g/l;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Lcom/alensw/b/g/l;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v3}, Lcom/alensw/b/g/l;->isChecked()Z

    move-result v1

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setVisibility(I)V

    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/alensw/b/g/a;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v3, p0, Lcom/alensw/b/g/a;->a:I

    iget v4, p0, Lcom/alensw/b/g/a;->b:I

    invoke-static {v1, v3, v4, v0}, Lcom/alensw/b/g/a;->a(Landroid/content/res/Resources;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_5
    return-object p2

    :cond_3
    check-cast p2, Landroid/widget/LinearLayout;

    goto :goto_1

    :cond_4
    move v5, v6

    goto :goto_2

    :cond_5
    if-nez v7, :cond_6

    iget v5, p0, Lcom/alensw/b/g/a;->g:I

    const v7, 0xffffff

    and-int/2addr v5, v7

    const/high16 v7, -0x80000000

    or-int/2addr v5, v7

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_6
    iget v5, p0, Lcom/alensw/b/g/a;->g:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_7
    move v0, v4

    goto :goto_4

    :cond_8
    invoke-virtual {v2, v6}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_5

    :cond_9
    move-object p2, v0

    goto/16 :goto_1
.end method
