.class public Lcom/alensw/PicFolder/WallpaperActivity;
.super Lcom/alensw/ui/activity/ao;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/net/Uri;

.field private final h:Landroid/graphics/Paint;

.field private final i:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/alensw/ui/activity/ao;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/PicFolder/WallpaperActivity;->h:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alensw/PicFolder/WallpaperActivity;->i:Landroid/graphics/RectF;

    return-void
.end method

.method static synthetic a(Lcom/alensw/PicFolder/WallpaperActivity;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/WallpaperActivity;->h:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic b(Lcom/alensw/PicFolder/WallpaperActivity;)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/WallpaperActivity;->i:Landroid/graphics/RectF;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/graphics/Point;)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {p0}, Lcom/alensw/PicFolder/WallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v5, v1

    mul-float v1, v0, v3

    float-to-int v2, v1

    const/high16 v1, 0x435c0000    # 220.0f

    mul-float/2addr v1, v0

    float-to-int v6, v1

    mul-float v4, v0, v3

    new-instance v0, Lcom/alensw/PicFolder/bg;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/alensw/PicFolder/bg;-><init>(Lcom/alensw/PicFolder/WallpaperActivity;ILandroid/graphics/Point;FII)V

    return-object v0
.end method

.method protected a(Landroid/content/Intent;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/alensw/PicFolder/WallpaperActivity;->e:I

    iget v3, p0, Lcom/alensw/PicFolder/WallpaperActivity;->f:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/alensw/PicFolder/WallpaperActivity;->c:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/alensw/PicFolder/WallpaperActivity;->d:I

    if-lez v1, :cond_0

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/alensw/PicFolder/WallpaperActivity;->c:I

    iget v3, p0, Lcom/alensw/PicFolder/WallpaperActivity;->d:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance v1, Lcom/alensw/PicFolder/be;

    invoke-direct {v1, p0, v0}, Lcom/alensw/PicFolder/be;-><init>(Lcom/alensw/PicFolder/WallpaperActivity;Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/alensw/PicFolder/WallpaperActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/alensw/PicFolder/WallpaperActivity;->a:Landroid/widget/ListView;

    new-instance v2, Lcom/alensw/PicFolder/bf;

    invoke-direct {v2, p0, v0, p1}, Lcom/alensw/PicFolder/bf;-><init>(Lcom/alensw/PicFolder/WallpaperActivity;Ljava/util/ArrayList;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_0
    iget v1, p0, Lcom/alensw/PicFolder/WallpaperActivity;->e:I

    iget v2, p0, Lcom/alensw/PicFolder/WallpaperActivity;->f:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected a(Landroid/content/Intent;II)V
    .locals 2

    :try_start_0
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v1

    if-ne p2, v1, :cond_0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v1

    if-eq p3, v1, :cond_1

    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const-string v0, "aspectX"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "aspectY"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "outputX"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "outputY"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    invoke-virtual {p0}, Lcom/alensw/PicFolder/WallpaperActivity;->finish()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/alensw/PicFolder/WallpaperActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/alensw/PicFolder/WallpaperActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/PicFolder/WallpaperActivity;->g:Landroid/net/Uri;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/alensw/ui/activity/ao;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/alensw/PicFolder/WallpaperActivity;->setContentView(I)V

    invoke-virtual {p0, v1}, Lcom/alensw/PicFolder/WallpaperActivity;->g(Z)V

    const v0, 0x7f090007

    invoke-virtual {p0, v0}, Lcom/alensw/PicFolder/WallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alensw/PicFolder/WallpaperActivity;->a:Landroid/widget/ListView;

    invoke-static {p0}, Lcom/alensw/b/l/b;->b(Landroid/content/Context;)I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alensw/PicFolder/WallpaperActivity;->b:Z

    iget-boolean v0, p0, Lcom/alensw/PicFolder/WallpaperActivity;->b:Z

    if-eqz v0, :cond_5

    :goto_1
    invoke-virtual {p0, v1}, Lcom/alensw/PicFolder/WallpaperActivity;->setRequestedOrientation(I)V

    invoke-static {p0}, Lcom/alensw/b/l/b;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alensw/PicFolder/WallpaperActivity;->b:Z

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-le v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    iput v3, v0, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    :cond_0
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/alensw/PicFolder/WallpaperActivity;->e:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/alensw/PicFolder/WallpaperActivity;->f:I

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "wallpaper_width"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alensw/PicFolder/WallpaperActivity;->c:I

    const-string v1, "wallpaper_height"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alensw/PicFolder/WallpaperActivity;->d:I

    iget v1, p0, Lcom/alensw/PicFolder/WallpaperActivity;->c:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/alensw/PicFolder/WallpaperActivity;->d:I

    if-gtz v1, :cond_2

    :cond_1
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v2

    iput v2, p0, Lcom/alensw/PicFolder/WallpaperActivity;->c:I

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v1

    iput v1, p0, Lcom/alensw/PicFolder/WallpaperActivity;->d:I

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "wallpaper_width"

    iget v2, p0, Lcom/alensw/PicFolder/WallpaperActivity;->c:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "wallpaper_height"

    iget v2, p0, Lcom/alensw/PicFolder/WallpaperActivity;->d:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    invoke-virtual {p0}, Lcom/alensw/PicFolder/WallpaperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/PicFolder/WallpaperActivity;->g:Landroid/net/Uri;

    iget-object v0, p0, Lcom/alensw/PicFolder/WallpaperActivity;->g:Landroid/net/Uri;

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    const-string v0, "uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/alensw/PicFolder/WallpaperActivity;->g:Landroid/net/Uri;

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto/16 :goto_0

    :cond_5
    move v1, v2

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/alensw/ui/activity/ao;->onResume()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/alensw/PicFolder/WallpaperActivity;->g:Landroid/net/Uri;

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-class v1, Lcom/alensw/PicFolder/GalleryActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0, v3}, Lcom/alensw/ui/activity/a;->a(Landroid/app/Activity;Landroid/content/Intent;I)Z

    :goto_0
    return-void

    :cond_0
    const-string v1, "android.intent.action.SET_WALLPAPER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alensw/PicFolder/WallpaperActivity;->g:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-class v1, Lcom/alensw/PicFolder/CropActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alensw/PicFolder/WallpaperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "noFaceDetection"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "scale"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "setWallpaper"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "set-as-wallpaper"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-boolean v1, Lcom/alensw/PicFolder/QuickApp;->b:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/alensw/PicFolder/WallpaperActivity;->c:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/alensw/PicFolder/WallpaperActivity;->d:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/alensw/PicFolder/WallpaperActivity;->c:I

    iget v2, p0, Lcom/alensw/PicFolder/WallpaperActivity;->d:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/alensw/PicFolder/WallpaperActivity;->a(Landroid/content/Intent;II)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/alensw/PicFolder/WallpaperActivity;->e:I

    iget v2, p0, Lcom/alensw/PicFolder/WallpaperActivity;->c:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/alensw/PicFolder/WallpaperActivity;->f:I

    iget v2, p0, Lcom/alensw/PicFolder/WallpaperActivity;->d:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/alensw/PicFolder/WallpaperActivity;->c:I

    iget v2, p0, Lcom/alensw/PicFolder/WallpaperActivity;->d:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/alensw/PicFolder/WallpaperActivity;->a(Landroid/content/Intent;II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/alensw/PicFolder/WallpaperActivity;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/PicFolder/WallpaperActivity;->g:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const-string v0, "uri"

    iget-object v1, p0, Lcom/alensw/PicFolder/WallpaperActivity;->g:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
