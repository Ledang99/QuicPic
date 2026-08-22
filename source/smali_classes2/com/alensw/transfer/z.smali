.class Lcom/alensw/transfer/z;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/s;


# direct methods
.method private constructor <init>(Lcom/alensw/transfer/s;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/z;->a:Lcom/alensw/transfer/s;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alensw/transfer/s;Lcom/alensw/transfer/t;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alensw/transfer/z;-><init>(Lcom/alensw/transfer/s;)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/alensw/transfer/d;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/z;->a:Lcom/alensw/transfer/s;

    invoke-static {v0}, Lcom/alensw/transfer/s;->a(Lcom/alensw/transfer/s;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/transfer/d;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/z;->a:Lcom/alensw/transfer/s;

    invoke-static {v0}, Lcom/alensw/transfer/s;->a(Lcom/alensw/transfer/s;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alensw/transfer/z;->a(I)Lcom/alensw/transfer/d;

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

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/alensw/transfer/z;->a:Lcom/alensw/transfer/s;

    invoke-virtual {v0}, Lcom/alensw/transfer/s;->g()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030017

    invoke-virtual {v0, v1, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f09003a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09003b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09003c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    const v3, 0x7f090038

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    new-instance v4, Lcom/alensw/transfer/ab;

    iget-object v5, p0, Lcom/alensw/transfer/z;->a:Lcom/alensw/transfer/s;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/alensw/transfer/ab;-><init>(Lcom/alensw/transfer/s;Lcom/alensw/transfer/t;)V

    iput-object v0, v4, Lcom/alensw/transfer/ab;->a:Landroid/widget/TextView;

    iput-object v1, v4, Lcom/alensw/transfer/ab;->b:Landroid/widget/TextView;

    iput-object v2, v4, Lcom/alensw/transfer/ab;->c:Landroid/widget/ProgressBar;

    iput-object v3, v4, Lcom/alensw/transfer/ab;->d:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v4

    :goto_0
    iget-object v1, v0, Lcom/alensw/transfer/ab;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/alensw/transfer/ab;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alensw/transfer/z;->a:Lcom/alensw/transfer/s;

    invoke-static {v2}, Lcom/alensw/transfer/s;->b(Lcom/alensw/transfer/s;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/alensw/transfer/z;->a(I)Lcom/alensw/transfer/d;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/transfer/z;->a:Lcom/alensw/transfer/s;

    invoke-static {v2}, Lcom/alensw/transfer/s;->c(Lcom/alensw/transfer/s;)Lcom/alensw/transfer/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alensw/transfer/d;->a(Lcom/alensw/transfer/e;)V

    const v2, 0x7f090004

    invoke-virtual {p2, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v1}, Lcom/alensw/transfer/d;->b()Z

    move-result v2

    iget-object v3, v0, Lcom/alensw/transfer/ab;->b:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alensw/transfer/z;->a:Lcom/alensw/transfer/s;

    invoke-virtual {v4}, Lcom/alensw/transfer/s;->g()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0a00d4

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/alensw/transfer/d;->j()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/alensw/transfer/ab;->d:Landroid/widget/ImageView;

    new-instance v4, Lcom/alensw/transfer/aa;

    invoke-direct {v4, p0, v1}, Lcom/alensw/transfer/aa;-><init>(Lcom/alensw/transfer/z;Lcom/alensw/transfer/d;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/alensw/transfer/ab;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alensw/transfer/z;->a:Lcom/alensw/transfer/s;

    invoke-virtual {v3}, Lcom/alensw/transfer/s;->g()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a00d3

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/alensw/transfer/d;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v2, p0, Lcom/alensw/transfer/z;->a:Lcom/alensw/transfer/s;

    invoke-static {v2, v1, v0}, Lcom/alensw/transfer/s;->a(Lcom/alensw/transfer/s;Lcom/alensw/transfer/d;Lcom/alensw/transfer/ab;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/transfer/ab;

    goto/16 :goto_0

    :cond_1
    iget-object v2, v0, Lcom/alensw/transfer/ab;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alensw/transfer/z;->a:Lcom/alensw/transfer/s;

    invoke-virtual {v3}, Lcom/alensw/transfer/s;->g()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a00d2

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/alensw/transfer/d;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
