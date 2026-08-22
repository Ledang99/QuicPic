.class public Lcom/alensw/PicFolder/CropActivity;
.super Lcom/alensw/ui/activity/p;


# static fields
.field protected static a:[[I

.field protected static b:[[I


# instance fields
.field protected final c:Landroid/graphics/Rect;

.field private d:Lcom/alensw/PicFolder/q;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/content/Intent;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Lcom/alensw/a/as;

.field private p:Lcom/alensw/a/as;

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v0, 0x7

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    sput-object v0, Lcom/alensw/PicFolder/CropActivity;->a:[[I

    const/4 v0, 0x5

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v7

    sput-object v0, Lcom/alensw/PicFolder/CropActivity;->b:[[I

    return-void

    :array_0
    .array-data 4
        0xa00
        0x640
    .end array-data

    :array_1
    .array-data 4
        0x780
        0x4b0
    .end array-data

    :array_2
    .array-data 4
        0x500
        0x320
    .end array-data

    :array_3
    .array-data 4
        0x400
        0x300
    .end array-data

    :array_4
    .array-data 4
        0x320
        0x258
    .end array-data

    :array_5
    .array-data 4
        0x280
        0x1e0
    .end array-data

    :array_6
    .array-data 4
        0x140
        0xf0
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x2
        0x3
    .end array-data

    :array_9
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_a
    .array-data 4
        0x3
        0x5
    .end array-data

    :array_b
    .array-data 4
        0x9
        0x10
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alensw/ui/activity/p;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->c:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic a(Lcom/alensw/PicFolder/CropActivity;)Lcom/alensw/PicFolder/q;
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    return-object v0
.end method

.method private a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V
    .locals 0

    if-lez p3, :cond_0

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private a(Lcom/alensw/b/h/j;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/alensw/b/h/j;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0a0049

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/alensw/PicFolder/CropActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lcom/alensw/b/h/j;->d:I

    if-ne v0, v2, :cond_3

    iget-object v0, p1, Lcom/alensw/b/h/j;->b:Lcom/alensw/b/h/i;

    iget v0, v0, Lcom/alensw/b/h/i;->d:I

    iput v0, p0, Lcom/alensw/PicFolder/CropActivity;->n:I

    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    invoke-virtual {v0, p1}, Lcom/alensw/PicFolder/q;->b(Lcom/alensw/b/h/j;)V

    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->p:Lcom/alensw/a/as;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->p:Lcom/alensw/a/as;

    invoke-virtual {v0, v1}, Lcom/alensw/a/as;->cancel(Z)Z

    :cond_2
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->u:Lcom/alensw/a/ao;

    iget-object v1, p1, Lcom/alensw/b/h/j;->i:Landroid/net/Uri;

    const/16 v2, 0x49

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/alensw/PicFolder/CropActivity;->A:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alensw/a/ao;->a(Landroid/net/Uri;CILandroid/os/Handler;)Lcom/alensw/a/as;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->p:Lcom/alensw/a/as;

    goto :goto_0

    :cond_3
    iget v0, p1, Lcom/alensw/b/h/j;->d:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    invoke-virtual {v0, v1}, Lcom/alensw/PicFolder/q;->a(I)V

    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    invoke-virtual {v0, p1}, Lcom/alensw/PicFolder/q;->b(Lcom/alensw/b/h/j;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alensw/PicFolder/CropActivity;)I
    .locals 1

    iget v0, p0, Lcom/alensw/PicFolder/CropActivity;->l:I

    return v0
.end method

.method private b()Landroid/view/View;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alensw/ui/activity/p;->M:Z

    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    return-object v0
.end method

.method static synthetic c(Lcom/alensw/PicFolder/CropActivity;)I
    .locals 1

    iget v0, p0, Lcom/alensw/PicFolder/CropActivity;->m:I

    return v0
.end method

.method static synthetic d(Lcom/alensw/PicFolder/CropActivity;)I
    .locals 1

    iget v0, p0, Lcom/alensw/PicFolder/CropActivity;->j:I

    return v0
.end method

.method static synthetic e(Lcom/alensw/PicFolder/CropActivity;)I
    .locals 1

    iget v0, p0, Lcom/alensw/PicFolder/CropActivity;->k:I

    return v0
.end method


# virtual methods
.method protected a(Landroid/view/Menu;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    invoke-virtual {v1}, Lcom/alensw/PicFolder/q;->e()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    sget-object v1, Lcom/alensw/PicFolder/CropActivity;->a:[[I

    array-length v1, v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Lcom/alensw/PicFolder/m;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v5}, Lcom/alensw/PicFolder/m;-><init>(Lcom/alensw/PicFolder/CropActivity;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    invoke-virtual {v1}, Lcom/alensw/PicFolder/q;->getPictureWidth()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    invoke-virtual {v1}, Lcom/alensw/PicFolder/q;->getPictureHeight()I

    move-result v8

    mul-int v9, v7, v8

    if-lt v7, v8, :cond_2

    const/4 v1, 0x1

    :goto_1
    int-to-float v2, v7

    int-to-float v3, v8

    div-float v10, v2, v3

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_2
    sget-object v3, Lcom/alensw/PicFolder/CropActivity;->a:[[I

    array-length v3, v3

    if-ge v2, v3, :cond_6

    const/4 v3, 0x0

    cmpl-float v3, v10, v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/alensw/PicFolder/CropActivity;->a:[[I

    aget-object v11, v3, v2

    if-eqz v1, :cond_3

    const/4 v3, 0x0

    aget v3, v11, v3

    int-to-float v3, v3

    move v4, v3

    :goto_3
    if-eqz v1, :cond_4

    const/4 v3, 0x1

    aget v3, v11, v3

    int-to-float v3, v3

    :goto_4
    if-eqz v1, :cond_5

    int-to-float v3, v7

    div-float v3, v4, v3

    :goto_5
    int-to-float v4, v7

    mul-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v11, v8

    mul-float/2addr v11, v3

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    mul-int v12, v4, v11

    if-ge v12, v9, :cond_1

    const/4 v12, 0x0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v15, " x "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13, v14, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    aget v3, v11, v3

    int-to-float v3, v3

    move v4, v3

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    aget v3, v11, v3

    int-to-float v3, v3

    goto :goto_4

    :cond_5
    int-to-float v4, v8

    div-float/2addr v3, v4

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const v4, 0x7f0a002a

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alensw/PicFolder/CropActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method protected a(ZIIIIZ)V
    .locals 2

    iput-boolean p1, p0, Lcom/alensw/PicFolder/CropActivity;->i:Z

    iput p2, p0, Lcom/alensw/PicFolder/CropActivity;->j:I

    iput p3, p0, Lcom/alensw/PicFolder/CropActivity;->k:I

    iput p4, p0, Lcom/alensw/PicFolder/CropActivity;->l:I

    iput p5, p0, Lcom/alensw/PicFolder/CropActivity;->m:I

    if-lez p4, :cond_1

    if-lez p5, :cond_1

    int-to-float v0, p4

    int-to-float v1, p5

    div-float/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/alensw/PicFolder/q;->a(ZIIF)V

    if-eqz p6, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "output_crop"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "output_width"

    invoke-direct {p0, v0, v1, p2}, Lcom/alensw/PicFolder/CropActivity;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    const-string v1, "output_height"

    invoke-direct {p0, v0, v1, p3}, Lcom/alensw/PicFolder/CropActivity;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    const-string v1, "output_ratio_x"

    invoke-direct {p0, v0, v1, p4}, Lcom/alensw/PicFolder/CropActivity;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    const-string v1, "output_ratio_y"

    invoke-direct {p0, v0, v1, p5}, Lcom/alensw/PicFolder/CropActivity;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 2

    iput-object p1, p0, Lcom/alensw/PicFolder/CropActivity;->f:Landroid/content/Intent;

    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/q;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Lcom/alensw/PicFolder/q;->d(I)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected b(Landroid/view/Menu;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    invoke-virtual {v2}, Lcom/alensw/PicFolder/q;->e()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    invoke-virtual {v2}, Lcom/alensw/PicFolder/q;->getPictureWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    invoke-virtual {v3}, Lcom/alensw/PicFolder/q;->getPictureHeight()I

    move-result v3

    mul-int v4, v2, v3

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    iget v5, v5, Lcom/alensw/PicFolder/q;->c:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    iget v5, v5, Lcom/alensw/PicFolder/q;->c:F

    mul-float/2addr v4, v5

    float-to-int v7, v4

    if-lt v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    sget-object v3, Lcom/alensw/PicFolder/CropActivity;->b:[[I

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v8, Ljava/util/ArrayList;

    sget-object v3, Lcom/alensw/PicFolder/CropActivity;->a:[[I

    array-length v3, v3

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v9, Lcom/alensw/PicFolder/n;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v6, v8}, Lcom/alensw/PicFolder/n;-><init>(Lcom/alensw/PicFolder/CropActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    const v3, 0x7f0a0061

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object v10

    const v3, 0x7f0a0090

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object v11

    const/4 v3, 0x1

    const/16 v4, 0x3e6

    const/4 v5, 0x0

    const v12, 0x7f0a0027

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    sget-object v12, Lcom/alensw/PicFolder/CropActivity;->b:[[I

    array-length v13, v12

    const/4 v3, 0x0

    move v5, v3

    :goto_2
    if-ge v5, v13, :cond_5

    aget-object v14, v12, v5

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    aget v3, v14, v3

    move v4, v3

    :goto_3
    if-eqz v2, :cond_4

    const/4 v3, 0x0

    aget v3, v14, v3

    :goto_4
    const/4 v14, 0x2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit16 v15, v15, 0x3e8

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v10, v14, v15, v0, v1}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14, v9}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    int-to-long v14, v3

    const/16 v16, 0x20

    shl-long v14, v14, v16

    int-to-long v0, v4

    move-wide/from16 v16, v0

    or-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v4, v3, :cond_1

    const/4 v14, 0x2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit16 v15, v15, 0x3e8

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v10, v14, v15, v0, v1}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14, v9}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    int-to-long v14, v4

    const/16 v4, 0x20

    shl-long/2addr v14, v4

    int-to-long v0, v3

    move-wide/from16 v16, v0

    or-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto/16 :goto_2

    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_3
    const/4 v3, 0x0

    aget v3, v14, v3

    move v4, v3

    goto/16 :goto_3

    :cond_4
    const/4 v3, 0x1

    aget v3, v14, v3

    goto/16 :goto_4

    :cond_5
    const/4 v3, 0x2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit16 v4, v4, 0x3e8

    const/4 v5, 0x0

    const v12, 0x7f0a0029

    invoke-interface {v10, v3, v4, v5, v12}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-interface {v10, v3, v4, v5}, Landroid/view/SubMenu;->setGroupCheckable(IZZ)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alensw/PicFolder/CropActivity;->m:I

    int-to-long v4, v3

    const/16 v3, 0x20

    shl-long/2addr v4, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alensw/PicFolder/CropActivity;->l:I

    int-to-long v12, v3

    or-long/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alensw/PicFolder/CropActivity;->l:I

    if-lez v4, :cond_6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alensw/PicFolder/CropActivity;->m:I

    if-lez v4, :cond_6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_6
    sget-object v12, Lcom/alensw/PicFolder/CropActivity;->a:[[I

    array-length v13, v12

    const/4 v4, 0x0

    move v6, v4

    :goto_5
    if-ge v6, v13, :cond_a

    aget-object v14, v12, v6

    if-eqz v2, :cond_8

    const/4 v4, 0x0

    aget v4, v14, v4

    move v5, v4

    :goto_6
    if-eqz v2, :cond_9

    const/4 v4, 0x1

    aget v4, v14, v4

    :goto_7
    mul-int v14, v5, v4

    if-gt v14, v7, :cond_7

    const/4 v14, 0x3

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit16 v15, v15, 0x7d0

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " x "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v11, v14, v15, v0, v1}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14, v9}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    int-to-long v14, v4

    const/16 v4, 0x20

    shl-long/2addr v14, v4

    int-to-long v4, v5

    or-long/2addr v4, v14

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_5

    :cond_8
    const/4 v4, 0x1

    aget v4, v14, v4

    move v5, v4

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    aget v4, v14, v4

    goto :goto_7

    :cond_a
    const/4 v2, 0x3

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit16 v4, v4, 0x7d0

    const/4 v5, 0x0

    const v6, 0x7f0a0029

    invoke-interface {v11, v2, v4, v5, v6}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/4 v2, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-interface {v11, v2, v4, v5}, Landroid/view/SubMenu;->setGroupCheckable(IZZ)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alensw/PicFolder/CropActivity;->k:I

    int-to-long v4, v2

    const/16 v2, 0x20

    shl-long/2addr v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alensw/PicFolder/CropActivity;->j:I

    int-to-long v6, v2

    or-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alensw/PicFolder/CropActivity;->j:I

    if-lez v4, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alensw/PicFolder/CropActivity;->k:I

    if-lez v4, :cond_b

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_b
    if-ltz v3, :cond_c

    add-int/lit16 v2, v3, 0x3e8

    invoke-interface {v10, v2}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_c
    if-ltz v2, :cond_d

    add-int/lit16 v2, v2, 0x7d0

    invoke-interface {v11, v2}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_d
    const/16 v2, 0x3e6

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method public finish()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    iget-boolean v0, v0, Lcom/alensw/PicFolder/q;->k:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/alensw/PicFolder/CropActivity;->q:Z

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->u:Lcom/alensw/a/ao;

    invoke-virtual {v0, v1}, Lcom/alensw/a/ao;->b(Lcom/alensw/b/h/j;)V

    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->o:Lcom/alensw/a/as;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->o:Lcom/alensw/a/as;

    invoke-virtual {v0, v2}, Lcom/alensw/a/as;->cancel(Z)Z

    iput-object v1, p0, Lcom/alensw/PicFolder/CropActivity;->o:Lcom/alensw/a/as;

    :cond_1
    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->p:Lcom/alensw/a/as;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->p:Lcom/alensw/a/as;

    invoke-virtual {v0, v2}, Lcom/alensw/a/as;->cancel(Z)Z

    iput-object v1, p0, Lcom/alensw/PicFolder/CropActivity;->p:Lcom/alensw/a/as;

    :cond_2
    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    invoke-virtual {v0, v1}, Lcom/alensw/PicFolder/q;->a(Landroid/graphics/Bitmap$Config;)Lcom/alensw/b/h/j;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    iget v2, p0, Lcom/alensw/PicFolder/CropActivity;->n:I

    invoke-virtual {v1, v2}, Lcom/alensw/PicFolder/q;->c(I)V

    iget-object v1, p0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    invoke-virtual {v1, v0, v3}, Lcom/alensw/PicFolder/q;->a(Lcom/alensw/b/h/j;Z)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->m()I

    :cond_3
    invoke-super {p0}, Lcom/alensw/ui/activity/p;->finish()V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 9

    const v7, 0x7f0a0069

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return v1

    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/alensw/b/h/j;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alensw/b/h/j;

    iget-boolean v2, p0, Lcom/alensw/PicFolder/CropActivity;->q:Z

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/alensw/PicFolder/CropActivity;->a(Lcom/alensw/b/h/j;)V

    :cond_1
    invoke-virtual {v0}, Lcom/alensw/b/h/j;->m()I

    goto :goto_0

    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_4

    iget v3, p1, Landroid/os/Message;->arg1:I

    :goto_2
    invoke-virtual {p0, v3}, Lcom/alensw/PicFolder/CropActivity;->setTitle(I)V

    invoke-virtual {p0, v0}, Lcom/alensw/PicFolder/CropActivity;->i(Z)V

    iget-object v3, p0, Lcom/alensw/PicFolder/CropActivity;->e:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alensw/PicFolder/CropActivity;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    const/16 v2, 0x8

    :cond_2
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    iget-boolean v3, v3, Lcom/alensw/PicFolder/q;->i:Z

    if-eqz v3, :cond_5

    const v3, 0x7f0a008d

    goto :goto_2

    :cond_5
    const v3, 0x7f0a0032

    goto :goto_2

    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_9

    move v3, v1

    :goto_3
    iget v4, p1, Landroid/os/Message;->arg1:I

    const v6, 0x7f090009

    if-ne v4, v6, :cond_d

    if-eqz v3, :cond_b

    if-eqz v5, :cond_7

    sget-object v4, Lcom/alensw/PicFolder/QuickApp;->o:Lcom/alensw/a/x;

    invoke-virtual {v4, p0, v5}, Lcom/alensw/a/x;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/alensw/a/e;

    move-result-object v6

    if-eqz v6, :cond_6

    sget-object v7, Lcom/alensw/PicFolder/QuickApp;->o:Lcom/alensw/a/x;

    iget v4, v6, Lcom/alensw/a/e;->c:I

    const/4 v8, 0x4

    if-ge v4, v8, :cond_a

    move v4, v1

    :goto_4
    invoke-virtual {v7, v6, v4}, Lcom/alensw/a/x;->a(Lcom/alensw/a/e;Z)V

    :cond_6
    iget-object v4, p0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    iget-boolean v4, v4, Lcom/alensw/PicFolder/q;->j:Z

    if-eqz v4, :cond_7

    sget-object v4, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alensw/a/ba;->f(Ljava/lang/String;)V

    :cond_7
    :goto_5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz v3, :cond_8

    const/4 v2, -0x1

    :cond_8
    invoke-virtual {p0, v2, v0}, Lcom/alensw/PicFolder/CropActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/alensw/PicFolder/CropActivity;->finish()V

    goto/16 :goto_0

    :cond_9
    move v3, v2

    goto :goto_3

    :cond_a
    move v4, v2

    goto :goto_4

    :cond_b
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/alensw/PicFolder/CropActivity;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_c
    invoke-static {p0, v7, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_5

    :cond_d
    iget v2, p1, Landroid/os/Message;->arg1:I

    const v4, 0x7f09000a

    if-ne v2, v4, :cond_0

    if-eqz v3, :cond_e

    if-eqz v5, :cond_e

    iget-object v2, p0, Lcom/alensw/PicFolder/CropActivity;->f:Landroid/content/Intent;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alensw/PicFolder/CropActivity;->f:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/alensw/PicFolder/CropActivity;->f:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/alensw/PicFolder/CropActivity;->f:Landroid/content/Intent;

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->f:Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->f:Landroid/content/Intent;

    goto/16 :goto_0

    :cond_e
    invoke-static {p0, v7, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1e -> :sswitch_0
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v8, 0x0

    const/16 v10, 0x10

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/alensw/ui/activity/p;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alensw/PicFolder/CropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/alensw/PicFolder/CropActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v0, "android.intent.action.SET_WALLPAPER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    if-eqz v4, :cond_1d

    const-string v0, "setWallpaper"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "set-as-wallpaper"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_2
    move v0, v7

    :goto_1
    move v2, v0

    :goto_2
    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/alensw/b/l/b;->b(Landroid/content/Context;)I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_9

    move v0, v6

    :goto_3
    invoke-virtual {p0, v0}, Lcom/alensw/PicFolder/CropActivity;->setRequestedOrientation(I)V

    :cond_3
    if-eqz v2, :cond_a

    const-string v0, "com.android.camera.action.CROP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v1, v7

    :goto_4
    if-nez v1, :cond_1c

    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "lockscreen"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v7

    :goto_5
    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/alensw/PicFolder/CropActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.CROP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_b

    :goto_6
    invoke-virtual {v1, v9, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v1, v6}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, ".android.gallery3d"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "com.cooliris.media"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "com.htc.album"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_6
    invoke-static {p0, v3, v0}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    :cond_7
    invoke-virtual {p0}, Lcom/alensw/PicFolder/CropActivity;->finish()V

    goto/16 :goto_0

    :cond_8
    move v0, v6

    goto/16 :goto_1

    :cond_9
    move v0, v7

    goto/16 :goto_3

    :cond_a
    move v1, v6

    goto :goto_4

    :cond_b
    const-string v0, "image/*"

    goto :goto_6

    :cond_c
    new-instance v0, Lcom/alensw/PicFolder/q;

    invoke-direct {v0, p0}, Lcom/alensw/PicFolder/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    invoke-direct {p0}, Lcom/alensw/PicFolder/CropActivity;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alensw/PicFolder/CropActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    invoke-virtual {p0}, Lcom/alensw/PicFolder/CropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v3, p0, Lcom/alensw/PicFolder/CropActivity;->A:Landroid/os/Handler;

    sget-object v4, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alensw/PicFolder/q;->a(Landroid/content/Intent;ZLandroid/os/Handler;Lcom/alensw/a/ba;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/alensw/PicFolder/CropActivity;->finish()V

    goto/16 :goto_0

    :cond_d
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    sget-boolean v0, Lcom/alensw/PicFolder/CropActivity;->H:Z

    if-eqz v0, :cond_15

    :goto_7
    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    iget-boolean v0, v0, Lcom/alensw/PicFolder/q;->g:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    iget-boolean v0, v0, Lcom/alensw/PicFolder/q;->i:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    iget-object v0, v0, Lcom/alensw/PicFolder/q;->l:Ljava/lang/String;

    if-eqz v0, :cond_16

    move v0, v7

    :goto_8
    iput-boolean v0, p0, Lcom/alensw/PicFolder/CropActivity;->h:Z

    const v0, 0x7f030004

    invoke-static {p0, v0, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->e:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->J:Landroid/app/ActionBar;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->J:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/alensw/PicFolder/CropActivity;->e:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->J:Landroid/app/ActionBar;

    invoke-virtual {v0, v10, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    :cond_e
    :goto_9
    new-instance v1, Lcom/alensw/PicFolder/i;

    invoke-direct {v1, p0}, Lcom/alensw/PicFolder/i;-><init>(Lcom/alensw/PicFolder/CropActivity;)V

    invoke-virtual {p0}, Lcom/alensw/PicFolder/CropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->e:Landroid/widget/LinearLayout;

    const v3, 0x7f09000a

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/alensw/PicFolder/CropActivity;->h:Z

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/alensw/PicFolder/CropActivity;->Z:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v3, 0x7f050015

    iget v4, p0, Lcom/alensw/PicFolder/CropActivity;->X:I

    invoke-static {v2, v3, v4}, Lcom/b/a/b;->a(Landroid/content/res/Resources;II)Lcom/b/a/l;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_a
    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->e:Landroid/widget/LinearLayout;

    const v3, 0x7f090009

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/alensw/PicFolder/CropActivity;->Z:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v1, 0x7f05000a

    iget v3, p0, Lcom/alensw/PicFolder/CropActivity;->X:I

    invoke-static {v2, v1, v3}, Lcom/b/a/b;->a(Landroid/content/res/Resources;II)Lcom/b/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    iget-boolean v0, v0, Lcom/alensw/PicFolder/q;->f:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    iget v0, v0, Lcom/alensw/PicFolder/q;->a:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_19

    move v0, v7

    :goto_b
    iput-boolean v0, p0, Lcom/alensw/PicFolder/CropActivity;->g:Z

    iget-boolean v0, p0, Lcom/alensw/PicFolder/CropActivity;->g:Z

    if-eqz v0, :cond_f

    const-string v0, "output_crop"

    invoke-interface {v5, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v0, "output_width"

    invoke-interface {v5, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v0, "output_height"

    invoke-interface {v5, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "output_ratio_x"

    invoke-interface {v5, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v0, "output_ratio_y"

    invoke-interface {v5, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alensw/PicFolder/CropActivity;->a(ZIIIIZ)V

    :cond_f
    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/q;->e()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->u:Lcom/alensw/a/ao;

    invoke-virtual {v1, v9}, Lcom/alensw/a/ao;->a(Landroid/net/Uri;)Lcom/alensw/b/h/j;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alensw/a/ao;->d()Lcom/alensw/b/h/j;

    move-result-object v0

    if-eqz v0, :cond_11

    if-eqz v2, :cond_10

    invoke-virtual {v0, v9}, Lcom/alensw/b/h/j;->a(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_11

    :cond_10
    invoke-virtual {v0}, Lcom/alensw/b/h/j;->m()I

    move-object v0, v8

    :cond_11
    invoke-virtual {v1}, Lcom/alensw/a/ao;->b()V

    if-eqz v2, :cond_12

    iget-object v3, v2, Lcom/alensw/b/h/j;->b:Lcom/alensw/b/h/i;

    iget v3, v3, Lcom/alensw/b/h/i;->d:I

    iput v3, p0, Lcom/alensw/PicFolder/CropActivity;->n:I

    :cond_12
    if-eqz v2, :cond_13

    if-eqz v0, :cond_13

    move v6, v7

    :cond_13
    if-eqz v6, :cond_1a

    iget-object v1, p0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    invoke-virtual {v1, v2}, Lcom/alensw/PicFolder/q;->b(Lcom/alensw/b/h/j;)V

    iget-object v1, p0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    invoke-virtual {v1, v0}, Lcom/alensw/PicFolder/q;->b(Lcom/alensw/b/h/j;)V

    :goto_c
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/alensw/b/h/j;->m()I

    :cond_14
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->m()I

    goto/16 :goto_0

    :cond_15
    invoke-virtual {p0}, Lcom/alensw/PicFolder/CropActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_7

    :cond_16
    move v0, v6

    goto/16 :goto_8

    :cond_17
    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->K:Lcom/alensw/ui/view/TitleBar;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->K:Lcom/alensw/ui/view/TitleBar;

    iget-object v1, p0, Lcom/alensw/PicFolder/CropActivity;->e:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/alensw/ui/view/TitleBar;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_9

    :cond_18
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_a

    :cond_19
    move v0, v6

    goto/16 :goto_b

    :cond_1a
    iget-object v3, p0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    const v4, 0x7f0a0048

    invoke-virtual {v3, v4}, Lcom/alensw/PicFolder/q;->a(I)V

    sget-boolean v3, Lcom/alensw/b/h/n;->a:Z

    if-eqz v3, :cond_1b

    :goto_d
    const/16 v3, 0x49

    iget-object v4, p0, Lcom/alensw/PicFolder/CropActivity;->A:Landroid/os/Handler;

    invoke-virtual {v1, v9, v3, v7, v4}, Lcom/alensw/a/ao;->a(Landroid/net/Uri;CILandroid/os/Handler;)Lcom/alensw/a/as;

    move-result-object v1

    iput-object v1, p0, Lcom/alensw/PicFolder/CropActivity;->o:Lcom/alensw/a/as;

    goto :goto_c

    :cond_1b
    const/4 v7, 0x4

    goto :goto_d

    :cond_1c
    move v0, v1

    goto/16 :goto_5

    :cond_1d
    move v2, v0

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const v4, 0x7f090059

    const v3, 0x7f090058

    const/4 v2, 0x2

    const/4 v1, 0x1

    const v0, 0x7f0c0003

    invoke-static {p0, v0, p1}, Lcom/alensw/b/g/b;->a(Landroid/content/Context;ILandroid/view/Menu;)V

    iget-boolean v0, p0, Lcom/alensw/PicFolder/CropActivity;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v3, v1}, Lcom/alensw/PicFolder/CropActivity;->a(Landroid/view/Menu;II)V

    invoke-virtual {p0, p1, v4, v1}, Lcom/alensw/PicFolder/CropActivity;->a(Landroid/view/Menu;II)V

    :goto_0
    const v0, 0x7f09005a

    invoke-virtual {p0, p1, v0, v2}, Lcom/alensw/PicFolder/CropActivity;->a(Landroid/view/Menu;II)V

    const v0, 0x7f09005b

    invoke-virtual {p0, p1, v0, v2}, Lcom/alensw/PicFolder/CropActivity;->a(Landroid/view/Menu;II)V

    return v1

    :cond_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    invoke-interface {p1, v4}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    iget-boolean v2, v2, Lcom/alensw/PicFolder/q;->k:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-eq v2, v3, :cond_2

    const v3, 0x7f090033

    if-ne v2, v3, :cond_3

    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/alensw/PicFolder/CropActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/alensw/PicFolder/CropActivity;->finish()V

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    invoke-virtual {v3}, Lcom/alensw/PicFolder/q;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/alensw/PicFolder/CropActivity;->c(I)Landroid/view/View;

    move-result-object v3

    sparse-switch v2, :sswitch_data_0

    :goto_1
    move v0, v1

    goto :goto_0

    :sswitch_0
    new-instance v0, Lcom/alensw/PicFolder/j;

    invoke-direct {v0, p0}, Lcom/alensw/PicFolder/j;-><init>(Lcom/alensw/PicFolder/CropActivity;)V

    invoke-static {p0, v3, v0}, Lcom/alensw/b/g/b;->a(Landroid/content/Context;Landroid/view/View;Lcom/alensw/b/g/k;)V

    goto :goto_1

    :sswitch_1
    invoke-static {p0, v3}, Lcom/alensw/ui/activity/a;->c(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_1

    :sswitch_2
    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    const/16 v2, -0x5a

    invoke-virtual {v0, v2}, Lcom/alensw/PicFolder/q;->b(I)V

    goto :goto_1

    :sswitch_3
    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    const/16 v2, 0x5a

    invoke-virtual {v0, v2}, Lcom/alensw/PicFolder/q;->b(I)V

    goto :goto_1

    :sswitch_4
    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    const/16 v2, 0xb4

    invoke-virtual {v0, v2}, Lcom/alensw/PicFolder/q;->b(I)V

    goto :goto_1

    :sswitch_5
    invoke-static {p0, v3}, Lcom/alensw/ui/activity/a;->b(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_1

    :sswitch_6
    iget-object v3, p0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    const v4, 0x7f09005c

    if-ne v2, v4, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {v3, v0}, Lcom/alensw/PicFolder/q;->a(Z)V

    goto :goto_1

    :sswitch_7
    new-instance v0, Lcom/alensw/PicFolder/k;

    invoke-direct {v0, p0}, Lcom/alensw/PicFolder/k;-><init>(Lcom/alensw/PicFolder/CropActivity;)V

    invoke-static {p0, v3, v0}, Lcom/alensw/b/g/b;->a(Landroid/content/Context;Landroid/view/View;Lcom/alensw/b/g/k;)V

    goto :goto_1

    :sswitch_8
    invoke-virtual {p0}, Lcom/alensw/PicFolder/CropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const v0, 0x7f0a0073

    new-instance v4, Lcom/alensw/PicFolder/l;

    invoke-direct {v4, p0}, Lcom/alensw/PicFolder/l;-><init>(Lcom/alensw/PicFolder/CropActivity;)V

    invoke-static {p0, v2, v0, v3, v4}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;ILandroid/view/View;Lcom/alensw/ui/activity/o;)I

    goto :goto_1

    :sswitch_9
    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    invoke-virtual {v0, v2}, Lcom/alensw/PicFolder/q;->d(I)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x7f090009 -> :sswitch_9
        0x7f09000a -> :sswitch_8
        0x7f090058 -> :sswitch_0
        0x7f090059 -> :sswitch_7
        0x7f09005a -> :sswitch_1
        0x7f09005b -> :sswitch_5
        0x7f09005c -> :sswitch_6
        0x7f09005d -> :sswitch_6
        0x7f090070 -> :sswitch_2
        0x7f090071 -> :sswitch_3
        0x7f090072 -> :sswitch_4
    .end sparse-switch
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Lcom/alensw/ui/activity/p;->onStart()V

    iget-object v0, p0, Lcom/alensw/PicFolder/CropActivity;->d:Lcom/alensw/PicFolder/q;

    const/4 v1, 0x0

    iget v2, p0, Lcom/alensw/PicFolder/CropActivity;->U:I

    invoke-virtual {v0, v1, v2}, Lcom/alensw/PicFolder/q;->b(II)V

    return-void
.end method
