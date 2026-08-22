.class Lcom/alensw/PicFolder/be;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/alensw/PicFolder/WallpaperActivity;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/WallpaperActivity;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/be;->b:Lcom/alensw/PicFolder/WallpaperActivity;

    iput-object p2, p0, Lcom/alensw/PicFolder/be;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/be;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/be;->a:Ljava/util/ArrayList;

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
    .locals 2

    if-eqz p2, :cond_0

    check-cast p2, Landroid/widget/ImageView;

    :goto_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/alensw/PicFolder/be;->b:Lcom/alensw/PicFolder/WallpaperActivity;

    iget-object v0, p0, Lcom/alensw/PicFolder/be;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    invoke-virtual {v1, v0}, Lcom/alensw/PicFolder/WallpaperActivity;->a(Landroid/graphics/Point;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p2

    :cond_0
    new-instance p2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alensw/PicFolder/be;->b:Lcom/alensw/PicFolder/WallpaperActivity;

    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
