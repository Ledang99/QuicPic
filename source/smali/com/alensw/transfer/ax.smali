.class Lcom/alensw/transfer/ax;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/ac;


# direct methods
.method private constructor <init>(Lcom/alensw/transfer/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/ax;->a:Lcom/alensw/transfer/ac;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alensw/transfer/ac;Lcom/alensw/transfer/ad;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alensw/transfer/ax;-><init>(Lcom/alensw/transfer/ac;)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/alensw/transfer/a/t;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/ax;->a:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->g(Lcom/alensw/transfer/ac;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/transfer/a/t;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/ax;->a:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->g(Lcom/alensw/transfer/ac;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alensw/transfer/ax;->a(I)Lcom/alensw/transfer/a/t;

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

    const v3, 0x7f09000e

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/alensw/transfer/ax;->a:Lcom/alensw/transfer/ac;

    invoke-virtual {v0}, Lcom/alensw/transfer/ac;->g()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f030007

    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/alensw/transfer/ax;->a(I)Lcom/alensw/transfer/a/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/transfer/a/t;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alensw/transfer/ax;->a:Lcom/alensw/transfer/ac;

    invoke-static {v2}, Lcom/alensw/transfer/ac;->k(Lcom/alensw/transfer/ac;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f09000f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090010

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alensw/transfer/ax;->a:Lcom/alensw/transfer/ac;

    invoke-static {v2}, Lcom/alensw/transfer/ac;->l(Lcom/alensw/transfer/ac;)Lcom/alensw/transfer/TransferService;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alensw/transfer/ax;->a:Lcom/alensw/transfer/ac;

    invoke-static {v2}, Lcom/alensw/transfer/ac;->l(Lcom/alensw/transfer/ac;)Lcom/alensw/transfer/TransferService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alensw/transfer/TransferService;->a(Ljava/lang/String;)Lcom/alensw/transfer/d;

    move-result-object v1

    if-eqz v1, :cond_1

    const v1, 0x7f0a00d6

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-object p2

    :cond_1
    const v1, 0x7f0a00d5

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
