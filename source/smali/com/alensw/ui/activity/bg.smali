.class Lcom/alensw/ui/activity/bg;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Landroid/view/LayoutInflater;

.field final synthetic b:Landroid/graphics/drawable/Drawable;

.field final synthetic c:Lcom/alensw/ui/activity/PathListActivity;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/PathListActivity;Landroid/view/LayoutInflater;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/bg;->c:Lcom/alensw/ui/activity/PathListActivity;

    iput-object p2, p0, Lcom/alensw/ui/activity/bg;->a:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/alensw/ui/activity/bg;->b:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/activity/bg;->c:Lcom/alensw/ui/activity/PathListActivity;

    iget-object v0, v0, Lcom/alensw/ui/activity/PathListActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const v3, 0x7f09000e

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/bg;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030014

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alensw/ui/activity/bg;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/alensw/ui/activity/bg;->c:Lcom/alensw/ui/activity/PathListActivity;

    iget-object v1, v1, Lcom/alensw/ui/activity/PathListActivity;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/activity/bg;->c:Lcom/alensw/ui/activity/PathListActivity;

    iget-object v0, v0, Lcom/alensw/ui/activity/PathListActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f09000f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method
