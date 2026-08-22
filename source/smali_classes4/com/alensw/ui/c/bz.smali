.class public Lcom/alensw/ui/c/bz;
.super Lcom/alensw/ui/c/a;
.source "bz.java"


# static fields
.field protected static final B:[Ljava/lang/String;

.field private static final N:Lcom/alensw/b/a/h;

.field protected static f:Ljava/lang/String;

.field protected static g:I

.field protected static h:F

.field protected static i:I


# instance fields
.field protected final A:Ljava/util/LinkedHashSet;

.field private final L:Landroid/graphics/Rect;

.field private M:Lcom/alensw/a/e;

.field private final O:Lcom/alensw/ui/view/aj;

.field protected j:Lcom/alensw/ui/view/ImageGridView;

.field protected k:Lcom/alensw/ui/view/PathBar;

.field protected l:Lcom/alensw/a/x;

.field protected m:Lcom/alensw/b/h/h;

.field protected n:Z

.field protected o:Z

.field protected p:Z

.field protected q:I

.field protected r:I

.field protected s:I

.field protected t:I

.field protected u:I

.field protected v:I

.field protected w:I

.field protected x:I

.field protected y:F

.field protected z:Lcom/alensw/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Pictures"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Photos"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Picture"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Photo"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alensw/ui/c/bz;->B:[Ljava/lang/String;

    new-instance v0, Lcom/alensw/b/a/h;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lcom/alensw/b/a/h;-><init>(I)V

    sput-object v0, Lcom/alensw/ui/c/bz;->N:Lcom/alensw/b/a/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/alensw/ui/c/a;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alensw/ui/c/bz;->v:I

    new-instance v0, Lcom/alensw/a/e;

    sget-object v1, Lcom/alensw/a/e;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alensw/a/e;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/alensw/ui/c/bz;->z:Lcom/alensw/a/e;

    new-instance v0, Ljava/util/LinkedHashSet;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/ui/c/bz;->A:Ljava/util/LinkedHashSet;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/c/bz;->L:Landroid/graphics/Rect;

    new-instance v0, Lcom/alensw/ui/c/ci;

    invoke-direct {v0, p0}, Lcom/alensw/ui/c/ci;-><init>(Lcom/alensw/ui/c/bz;)V

    iput-object v0, p0, Lcom/alensw/ui/c/bz;->O:Lcom/alensw/ui/view/aj;

    return-void
.end method

.method public static c(I)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/alensw/ui/c/bz;->N:Lcom/alensw/b/a/h;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/b/a/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x3e8

    int-to-long v2, p0

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/alensw/PicFolder/QuickApp;->b(J)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alensw/ui/c/bz;->N:Lcom/alensw/b/a/h;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alensw/b/a/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method protected static t()Ljava/io/File;
    .locals 7

    sget-object v2, Lcom/alensw/ui/c/bz;->B:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/alensw/a/e;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-char v6, Ljava/io/File;->separatorChar:C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/alensw/a/e;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/alensw/ui/c/a;->a()V

    iget-object v2, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iget-object v2, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    const-string v4, "horizontal_scroll"

    iget-object v5, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    iget-boolean v5, v5, Lcom/alensw/ui/view/ImageGridView;->c:Z

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/alensw/ui/view/ImageGridView;->setHorizontal(Z)V

    iget-boolean v2, p0, Lcom/alensw/ui/c/bz;->o:Z

    iget v4, p0, Lcom/alensw/ui/c/bz;->s:I

    iget v5, p0, Lcom/alensw/ui/c/bz;->t:I

    invoke-static {v2, v4, v5}, Lcom/alensw/a/x;->a(ZII)I

    move-result v2

    iget-object v4, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v4}, Lcom/alensw/a/x;->e()I

    move-result v4

    if-eq v2, v4, :cond_5

    move v2, v1

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {p0, v4}, Lcom/alensw/ui/c/bz;->b(I)V

    :cond_0
    iget v4, p0, Lcom/alensw/ui/c/bz;->u:I

    invoke-virtual {p0, v4}, Lcom/alensw/ui/c/bz;->a(I)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v2, :cond_6

    :cond_1
    move v2, v1

    :goto_1
    if-nez v2, :cond_8

    iget-boolean v4, p0, Lcom/alensw/ui/c/bz;->o:Z

    if-eqz v4, :cond_8

    iget-object v2, p0, Lcom/alensw/ui/c/bz;->z:Lcom/alensw/a/e;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alensw/ui/c/bz;->z:Lcom/alensw/a/e;

    iget v2, v2, Lcom/alensw/a/e;->e:I

    sget v4, Lcom/alensw/ui/c/bz;->g:I

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/alensw/ui/c/bz;->z:Lcom/alensw/a/e;

    invoke-virtual {v2}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/alensw/ui/c/bz;->f:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    :goto_2
    if-eqz v0, :cond_7

    invoke-virtual {p0, v1}, Lcom/alensw/ui/c/bz;->a(Z)V

    :goto_3
    iget v0, p0, Lcom/alensw/ui/c/bz;->u:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    const-string v0, "dest_folder"

    const/4 v1, 0x0

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/alensw/a/e;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2}, Lcom/alensw/a/e;-><init>(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v0}, Lcom/alensw/a/q;->a(Landroid/content/Context;)Lcom/alensw/a/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alensw/a/q;->a(Lcom/alensw/a/e;)I

    move-result v0

    iput v0, v1, Lcom/alensw/a/e;->d:I

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v0, v1}, Lcom/alensw/a/x;->a(Lcom/alensw/a/e;)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    new-instance v2, Lcom/alensw/ui/c/ca;

    invoke-direct {v2, p0, v0}, Lcom/alensw/ui/c/ca;-><init>(Lcom/alensw/ui/c/bz;I)V

    invoke-virtual {v1, v2}, Lcom/alensw/ui/view/ImageGridView;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void

    :cond_5
    move v2, v0

    goto :goto_0

    :cond_6
    move v2, v0

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/alensw/ui/c/bz;->u()V

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_2
.end method

.method public a(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/alensw/ui/c/a;->a(IIII)V

    invoke-virtual {p0}, Lcom/alensw/ui/c/bz;->p()V

    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/bz;->M:Lcom/alensw/a/e;

    if-eqz v1, :cond_0

    const/16 v1, 0x49

    invoke-virtual {p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/alensw/bean/UriFile;->a(CLandroid/net/Uri;Ljava/lang/String;)Lcom/alensw/bean/CommonFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v1}, Lcom/alensw/a/n;->a(Landroid/content/Context;)Lcom/alensw/a/n;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/ui/c/bz;->M:Lcom/alensw/a/e;

    invoke-virtual {v2}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alensw/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->M:Lcom/alensw/a/e;

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/bz;->c(Lcom/alensw/a/e;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/ui/c/bz;->M:Lcom/alensw/a/e;

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/alensw/ui/c/a;->a(Landroid/os/Bundle;)V

    const v0, 0x7f030002

    invoke-super {p0, v0}, Lcom/alensw/ui/c/a;->h(I)V

    sget v0, Lcom/alensw/ui/c/bz;->i:I

    iget-object v1, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    iget v1, v1, Lcom/alensw/ui/c/cx;->U:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    iget v0, v0, Lcom/alensw/ui/c/cx;->U:I

    sput v0, Lcom/alensw/ui/c/bz;->i:I

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->v:Lcom/alensw/b/a/a;

    invoke-virtual {v0}, Lcom/alensw/b/a/a;->c()V

    :cond_0
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->o:Lcom/alensw/a/x;

    iput-object v0, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->E:Landroid/content/Intent;

    invoke-static {v0}, Lcom/alensw/ui/activity/p;->b(Landroid/content/Intent;)I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/c/bz;->u:I

    iget v0, p0, Lcom/alensw/ui/c/bz;->u:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alensw/ui/c/bz;->n:Z

    :cond_1
    invoke-virtual {p0}, Lcom/alensw/ui/c/bz;->F()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/alensw/ui/c/bz;->y:F

    if-eqz p1, :cond_3

    const-string v0, "current_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/alensw/a/e;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/alensw/a/e;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/alensw/ui/c/bz;->z:Lcom/alensw/a/e;

    :cond_2
    const-string v0, "scroll_pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/alensw/ui/c/bz;->h:F

    :cond_3
    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/bz;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alensw/ui/c/bz;->c:Landroid/view/ViewGroup;

    const v0, 0x7f090005

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/bz;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alensw/ui/view/ImageGridView;

    iput-object v0, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/ImageGridView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    sget v1, Lcom/alensw/PicFolder/QuickApp;->h:I

    div-int/lit16 v1, v1, 0x140

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/ImageGridView;->setSpaceWidth(I)V

    const v0, 0x7f0a00ba

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/bz;->g(I)Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lcom/alensw/ui/c/bz;->u:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->E:Landroid/content/Intent;

    const-string v2, "activity_title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/bz;->b(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "gallery_mode"

    iget-object v2, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v2}, Lcom/alensw/a/x;->e()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/bz;->b(I)V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0a005e

    invoke-virtual {p0, v1}, Lcom/alensw/ui/c/bz;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method protected a(Lcom/alensw/a/e;I)V
    .locals 4

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget v2, p0, Lcom/alensw/ui/c/bz;->u:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v2}, Lcom/alensw/ui/c/cx;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    :goto_0
    iget-object v0, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    const-class v2, Lcom/alensw/ui/c/bf;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/alensw/ui/c/cx;->a(Ljava/lang/Class;Landroid/content/Intent;Landroid/os/Bundle;)Lcom/alensw/ui/c/cu;

    return-void

    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public a(Lcom/alensw/a/e;Lcom/alensw/a/d;)V
    .locals 3

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->t:Lcom/alensw/a/ah;

    const/4 v1, 0x1

    new-instance v2, Lcom/alensw/ui/c/cd;

    invoke-direct {v2, p0, p1}, Lcom/alensw/ui/c/cd;-><init>(Lcom/alensw/ui/c/bz;Lcom/alensw/a/e;)V

    invoke-virtual {v0, p2, v1, v2}, Lcom/alensw/a/ah;->a(Lcom/alensw/a/d;ZLcom/alensw/a/aj;)V

    return-void
.end method

.method protected a(Lcom/alensw/a/e;Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/alensw/ui/c/bz;->M:Lcom/alensw/a/e;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    const-class v2, Lcom/alensw/PicFolder/GalleryActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/alensw/ui/activity/a;->a(Landroid/app/Activity;Landroid/content/Intent;I)Z

    :goto_0
    return-void

    :cond_0
    iput-object v2, p0, Lcom/alensw/ui/c/bz;->M:Lcom/alensw/a/e;

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v0}, Lcom/alensw/a/n;->a(Landroid/content/Context;)Lcom/alensw/a/n;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/alensw/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/alensw/ui/c/bz;->c(Lcom/alensw/a/e;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/ui/c/bz;->v()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alensw/ui/c/bz;->v:I

    if-eqz p1, :cond_0

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->v:Lcom/alensw/b/a/a;

    invoke-virtual {v0}, Lcom/alensw/b/a/a;->c()V

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->w:Lcom/alensw/b/a/a;

    invoke-virtual {v0}, Lcom/alensw/b/a/a;->c()V

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v0}, Lcom/alensw/a/x;->g()V

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->A:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alensw/PicFolder/QuickApp;->x:Z

    invoke-virtual {p0}, Lcom/alensw/ui/c/bz;->u()V

    return-void
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const v5, 0x7f090067

    const v4, 0x7f090051

    const/4 v0, 0x1

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    iget-boolean v1, v1, Lcom/alensw/ui/view/ImageGridView;->d:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    const v2, 0x7f0c0006

    invoke-static {v1, v2, p1}, Lcom/alensw/b/g/b;->a(Landroid/content/Context;ILandroid/view/Menu;)V

    iget v1, p0, Lcom/alensw/ui/c/bz;->u:I

    if-nez v1, :cond_2

    invoke-virtual {p0, p1, v4, v3}, Lcom/alensw/ui/c/bz;->a(Landroid/view/Menu;II)V

    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/alensw/ui/c/bz;->n:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, v5, v3}, Lcom/alensw/ui/c/bz;->a(Landroid/view/Menu;II)V

    goto :goto_0

    :cond_2
    invoke-interface {p1, v4}, Landroid/view/Menu;->removeItem(I)V

    const v1, 0x7f090056

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    const v1, 0x7f090057

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    iget v1, p0, Lcom/alensw/ui/c/bz;->u:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const v1, 0x7f090040

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/alensw/ui/c/bz;->a(Landroid/view/MenuItem;I)V

    iget-boolean v1, p0, Lcom/alensw/ui/c/bz;->o:Z

    if-eqz v1, :cond_1

    const v1, 0x7f090009

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/alensw/ui/c/bz;->a(Landroid/view/MenuItem;I)V

    goto :goto_1

    :cond_3
    invoke-interface {p1, v5}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v9, 0x0

    const/4 v4, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0, v6}, Lcom/alensw/ui/c/cx;->c(I)Landroid/view/View;

    move-result-object v7

    iget-boolean v0, p0, Lcom/alensw/ui/c/bz;->o:Z

    iget v5, p0, Lcom/alensw/ui/c/bz;->s:I

    iget v8, p0, Lcom/alensw/ui/c/bz;->t:I

    invoke-static {v0, v5, v8}, Lcom/alensw/a/x;->a(ZII)I

    move-result v8

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->A:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->A:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/e;

    move-object v5, v0

    :goto_0
    sparse-switch v6, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/alensw/ui/c/a;->a(Landroid/view/MenuItem;)Z

    move-result v3

    :cond_0
    :goto_1
    return v3

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    iget v5, p0, Lcom/alensw/ui/c/bz;->v:I

    invoke-virtual {v0, v5}, Lcom/alensw/a/x;->b(I)Lcom/alensw/a/e;

    move-result-object v5

    goto :goto_0

    :sswitch_0
    if-eqz v5, :cond_2

    invoke-virtual {v5, v3}, Lcom/alensw/a/e;->a(Z)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/alensw/ui/c/bz;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    :goto_2
    iget-boolean v0, p0, Lcom/alensw/ui/c/bz;->o:Z

    iget v1, p0, Lcom/alensw/ui/c/bz;->s:I

    iget v4, p0, Lcom/alensw/ui/c/bz;->t:I

    invoke-static {v0, v1, v4}, Lcom/alensw/a/x;->a(ZII)I

    move-result v1

    if-eq v1, v8, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v0}, Lcom/alensw/a/x;->b()Z

    move-result v0

    iget-boolean v4, p0, Lcom/alensw/ui/c/bz;->o:Z

    if-eq v0, v4, :cond_12

    move v0, v3

    :goto_3
    iget-object v4, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v4}, Lcom/alensw/a/x;->a()I

    move-result v4

    iget v5, p0, Lcom/alensw/ui/c/bz;->s:I

    if-eq v4, v5, :cond_3

    move v2, v3

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/alensw/ui/c/bz;->v()V

    :cond_4
    iget-object v4, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "gallery_mode"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0, v1}, Lcom/alensw/ui/c/bz;->b(I)V

    invoke-virtual {p0}, Lcom/alensw/ui/c/bz;->n()V

    if-eqz v0, :cond_13

    invoke-virtual {p0, v3}, Lcom/alensw/ui/c/bz;->a(Z)V

    :cond_5
    :goto_4
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    iget-boolean v2, p0, Lcom/alensw/ui/c/bz;->o:Z

    invoke-virtual {v1, v2}, Lcom/alensw/ui/c/cx;->c(Z)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    const v1, 0x7f0a003e

    const v4, 0x7f0a0040

    invoke-virtual {p0, v4}, Lcom/alensw/ui/c/bz;->g(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/alensw/ui/c/cj;

    invoke-direct {v6, p0, v5}, Lcom/alensw/ui/c/cj;-><init>(Lcom/alensw/ui/c/bz;Lcom/alensw/a/e;)V

    invoke-static {v0, v1, v4, v6, v9}, Lcom/alensw/ui/a/f;->a(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v5, v2, v9}, Lcom/alensw/ui/c/bz;->a(Lcom/alensw/a/e;ZLjava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->invalidate()V

    goto :goto_2

    :sswitch_1
    invoke-virtual {p0}, Lcom/alensw/ui/c/bz;->z()V

    goto :goto_2

    :sswitch_2
    iget-object v0, p0, Lcom/alensw/ui/c/bz;->A:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->j()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    new-instance v4, Lcom/alensw/ui/c/cl;

    invoke-direct {v4, p0}, Lcom/alensw/ui/c/cl;-><init>(Lcom/alensw/ui/c/bz;)V

    invoke-static {v0, v1, v7, v4}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;ILandroid/view/View;Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :sswitch_3
    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/alensw/ui/c/bz;->d()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    const v1, 0x7f0a0062

    invoke-virtual {v5}, Lcom/alensw/a/e;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/alensw/ui/c/cm;

    invoke-direct {v6, p0, v5}, Lcom/alensw/ui/c/cm;-><init>(Lcom/alensw/ui/c/bz;Lcom/alensw/a/e;)V

    invoke-static {v0, v1, v4, v9, v6}, Lcom/alensw/ui/a/f;->a(Landroid/content/Context;ILjava/lang/Object;Ljava/lang/CharSequence;Lcom/alensw/ui/a/s;)V

    goto/16 :goto_2

    :sswitch_4
    if-eqz v5, :cond_2

    const v0, 0x7f090064

    if-ne v6, v0, :cond_9

    move v0, v3

    :goto_6
    invoke-virtual {p0, v5, v0}, Lcom/alensw/ui/c/bz;->a(Lcom/alensw/a/e;Z)V

    goto/16 :goto_2

    :cond_9
    move v0, v2

    goto :goto_6

    :sswitch_5
    if-eqz v5, :cond_2

    invoke-virtual {p0, v5}, Lcom/alensw/ui/c/bz;->a(Lcom/alensw/a/e;)V

    goto/16 :goto_2

    :sswitch_6
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/alensw/a/e;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_7
    invoke-virtual {v5}, Lcom/alensw/a/e;->a()I

    move-result v1

    invoke-virtual {v5}, Lcom/alensw/a/e;->d()I

    move-result v4

    invoke-static {v0, v1, v4}, Lcom/alensw/a/e;->a(III)I

    move-result v0

    iput v0, v5, Lcom/alensw/a/e;->d:I

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v0}, Lcom/alensw/a/x;->i()V

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->requestLayout()V

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v0}, Lcom/alensw/a/q;->a(Landroid/content/Context;)Lcom/alensw/a/q;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alensw/a/q;->b(Lcom/alensw/a/e;)V

    goto/16 :goto_2

    :cond_a
    move v0, v3

    goto :goto_7

    :sswitch_7
    iget-object v0, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    iget-boolean v0, v0, Lcom/alensw/ui/view/ImageGridView;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v0}, Lcom/alensw/a/x;->f()I

    move-result v0

    iget-object v1, p0, Lcom/alensw/ui/c/bz;->A:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    if-ge v1, v0, :cond_b

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->A:Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v1}, Lcom/alensw/a/x;->h()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    :goto_8
    iget-object v0, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->b()V

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alensw/ui/c/bz;->A:Ljava/util/LinkedHashSet;

    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v4}, Lcom/alensw/a/x;->f()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/alensw/ui/c/cx;->a(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2

    :cond_b
    iget-object v0, p0, Lcom/alensw/ui/c/bz;->A:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    goto :goto_8

    :sswitch_8
    iget-object v0, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v0, v7}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_2

    :sswitch_9
    invoke-virtual {p0}, Lcom/alensw/ui/c/bz;->o()V

    goto/16 :goto_2

    :sswitch_a
    iget-boolean v0, p0, Lcom/alensw/ui/c/bz;->o:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->z:Lcom/alensw/a/e;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    const v1, 0x7f0a004c

    const-string v4, ""

    new-instance v5, Lcom/alensw/ui/c/co;

    invoke-direct {v5, p0}, Lcom/alensw/ui/c/co;-><init>(Lcom/alensw/ui/c/bz;)V

    invoke-static {v0, v1, v4, v9, v5}, Lcom/alensw/ui/a/f;->a(Landroid/content/Context;ILjava/lang/Object;Ljava/lang/CharSequence;Lcom/alensw/ui/a/s;)V

    goto/16 :goto_2

    :cond_c
    iget-object v0, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    invoke-static {}, Lcom/alensw/ui/c/bz;->t()Ljava/io/File;

    move-result-object v4

    new-instance v5, Lcom/alensw/ui/c/cp;

    invoke-direct {v5, p0}, Lcom/alensw/ui/c/cp;-><init>(Lcom/alensw/ui/c/bz;)V

    invoke-static {v0, v1, v4, v5}, Lcom/alensw/ui/a/ae;->a(Landroid/content/Context;ILjava/io/File;Lcom/alensw/ui/a/an;)V

    goto/16 :goto_2

    :sswitch_b
    const-string v0, "folders"

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/bz;->c(Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_c
    iget-object v0, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    new-instance v1, Lcom/alensw/ui/c/cq;

    invoke-direct {v1, p0}, Lcom/alensw/ui/c/cq;-><init>(Lcom/alensw/ui/c/bz;)V

    invoke-static {v0, v7, v1}, Lcom/alensw/b/g/b;->a(Landroid/content/Context;Landroid/view/View;Lcom/alensw/b/g/k;)V

    goto/16 :goto_2

    :sswitch_d
    iput v2, p0, Lcom/alensw/ui/c/bz;->s:I

    goto/16 :goto_2

    :sswitch_e
    iput v3, p0, Lcom/alensw/ui/c/bz;->s:I

    goto/16 :goto_2

    :sswitch_f
    iput v1, p0, Lcom/alensw/ui/c/bz;->s:I

    goto/16 :goto_2

    :sswitch_10
    iput v4, p0, Lcom/alensw/ui/c/bz;->s:I

    goto/16 :goto_2

    :sswitch_11
    iget-boolean v0, p0, Lcom/alensw/ui/c/bz;->o:Z

    if-nez v0, :cond_d

    move v0, v3

    :goto_9
    iput-boolean v0, p0, Lcom/alensw/ui/c/bz;->o:Z

    goto/16 :goto_2

    :cond_d
    move v0, v2

    goto :goto_9

    :sswitch_12
    iget v0, p0, Lcom/alensw/ui/c/bz;->t:I

    packed-switch v0, :pswitch_data_0

    move v0, v2

    move v1, v2

    :goto_a
    iget-object v5, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-static {v5, v7, v4, v1, v0}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/view/View;[IIZ)V

    goto/16 :goto_2

    :pswitch_0
    move v0, v3

    :goto_b
    const v1, 0x7f090074

    goto :goto_a

    :pswitch_1
    move v0, v3

    :goto_c
    const v1, 0x7f090075

    goto :goto_a

    :pswitch_2
    move v0, v3

    :goto_d
    const v1, 0x7f090078

    goto :goto_a

    :sswitch_13
    iget v0, p0, Lcom/alensw/ui/c/bz;->t:I

    if-ne v0, v3, :cond_e

    :goto_e
    iput v1, p0, Lcom/alensw/ui/c/bz;->t:I

    goto/16 :goto_2

    :cond_e
    move v1, v3

    goto :goto_e

    :sswitch_14
    iget v0, p0, Lcom/alensw/ui/c/bz;->t:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    move v0, v4

    :goto_f
    iput v0, p0, Lcom/alensw/ui/c/bz;->t:I

    goto/16 :goto_2

    :cond_f
    const/4 v0, 0x4

    goto :goto_f

    :sswitch_15
    iget v0, p0, Lcom/alensw/ui/c/bz;->t:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_10

    const/4 v0, 0x6

    :goto_10
    iput v0, p0, Lcom/alensw/ui/c/bz;->t:I

    goto/16 :goto_2

    :cond_10
    const/4 v0, 0x5

    goto :goto_10

    :sswitch_16
    iget v0, p0, Lcom/alensw/ui/c/bz;->u:I

    if-ne v0, v4, :cond_2

    if-nez v5, :cond_14

    iget-boolean v0, p0, Lcom/alensw/ui/c/bz;->o:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->z:Lcom/alensw/a/e;

    :goto_11
    if-eqz v0, :cond_11

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/bz;->a(Ljava/io/File;)V

    goto/16 :goto_2

    :cond_11
    iget-object v0, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    const v1, 0x7f0a0070

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    :cond_12
    move v0, v2

    goto/16 :goto_3

    :cond_13
    if-eqz v2, :cond_5

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->v:Lcom/alensw/b/a/a;

    invoke-virtual {v1}, Lcom/alensw/b/a/a;->c()V

    goto/16 :goto_4

    :cond_14
    move-object v0, v5

    goto :goto_11

    :pswitch_3
    move v0, v2

    goto :goto_b

    :pswitch_4
    move v0, v2

    goto :goto_c

    :pswitch_5
    move v0, v2

    goto :goto_d

    :sswitch_data_0
    .sparse-switch
        0x102001f -> :sswitch_7
        0x7f090009 -> :sswitch_16
        0x7f090040 -> :sswitch_a
        0x7f090048 -> :sswitch_c
        0x7f090049 -> :sswitch_d
        0x7f09004a -> :sswitch_e
        0x7f09004b -> :sswitch_10
        0x7f09004c -> :sswitch_f
        0x7f09004d -> :sswitch_11
        0x7f09004e -> :sswitch_2
        0x7f090051 -> :sswitch_b
        0x7f090054 -> :sswitch_12
        0x7f090055 -> :sswitch_5
        0x7f09005f -> :sswitch_0
        0x7f090060 -> :sswitch_6
        0x7f090061 -> :sswitch_1
        0x7f090062 -> :sswitch_3
        0x7f090064 -> :sswitch_4
        0x7f090065 -> :sswitch_4
        0x7f090067 -> :sswitch_8
        0x7f090068 -> :sswitch_9
        0x7f090074 -> :sswitch_13
        0x7f090075 -> :sswitch_14
        0x7f090078 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch

    :array_0
    .array-data 4
        0x7f090074
        0x7f090075
        0x7f090078
    .end array-data
.end method

.method public b()V
    .locals 0

    invoke-super {p0}, Lcom/alensw/ui/c/a;->b()V

    invoke-virtual {p0}, Lcom/alensw/ui/c/bz;->v()V

    return-void
.end method

.method protected b(I)V
    .locals 10

    const/4 v9, 0x0

    const/4 v0, 0x2

    const/4 v2, 0x3

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v3}, Lcom/alensw/a/x;->b()Z

    move-result v5

    iget-object v3, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v3, p1}, Lcom/alensw/a/x;->a(I)V

    iget-object v3, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v3}, Lcom/alensw/a/x;->b()Z

    move-result v3

    iput-boolean v3, p0, Lcom/alensw/ui/c/bz;->o:Z

    iget-object v3, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v3}, Lcom/alensw/a/x;->a()I

    move-result v3

    iput v3, p0, Lcom/alensw/ui/c/bz;->s:I

    iget-object v3, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v3}, Lcom/alensw/a/x;->c()I

    move-result v3

    iput v3, p0, Lcom/alensw/ui/c/bz;->t:I

    iget-object v3, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    iget v3, v3, Lcom/alensw/ui/view/ImageGridView;->e:I

    iget v6, p0, Lcom/alensw/ui/c/bz;->s:I

    packed-switch v6, :pswitch_data_0

    move v0, v3

    :goto_0
    sget-object v3, Lcom/alensw/PicFolder/QuickApp;->v:Lcom/alensw/b/a/a;

    sget v6, Lcom/alensw/b/h/b;->b:I

    const v7, 0xfa000

    mul-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x5

    iget v7, p0, Lcom/alensw/ui/c/bz;->w:I

    iget v8, p0, Lcom/alensw/ui/c/bz;->x:I

    mul-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x2

    div-int/2addr v6, v7

    invoke-virtual {v3, v6}, Lcom/alensw/b/a/a;->a(I)V

    iget v3, p0, Lcom/alensw/ui/c/bz;->q:I

    invoke-static {v3}, Lcom/alensw/a/p;->b(I)I

    move-result v3

    iput v3, p0, Lcom/alensw/ui/c/bz;->r:I

    iget-object v3, p0, Lcom/alensw/ui/c/bz;->m:Lcom/alensw/b/h/h;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alensw/ui/c/bz;->m:Lcom/alensw/b/h/h;

    invoke-virtual {v3}, Lcom/alensw/b/h/h;->m()I

    iput-object v9, p0, Lcom/alensw/ui/c/bz;->m:Lcom/alensw/b/h/h;

    :cond_0
    iget-boolean v3, p0, Lcom/alensw/ui/c/bz;->o:Z

    if-eq v5, v3, :cond_1

    iget v3, p0, Lcom/alensw/ui/c/bz;->u:I

    if-ne v3, v2, :cond_1

    iget-object v2, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v2}, Lcom/alensw/ui/c/cx;->invalidateOptionsMenu()V

    :cond_1
    iget-boolean v2, p0, Lcom/alensw/ui/c/bz;->o:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/alensw/ui/view/PathBar;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alensw/ui/c/bz;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sput-object v9, Lcom/alensw/ui/c/bz;->f:Ljava/lang/String;

    :cond_2
    sget-object v2, Lcom/alensw/ui/c/bz;->f:Ljava/lang/String;

    if-eqz v2, :cond_3

    new-instance v2, Lcom/alensw/a/e;

    sget-object v3, Lcom/alensw/ui/c/bz;->f:Ljava/lang/String;

    sget v5, Lcom/alensw/ui/c/bz;->g:I

    invoke-direct {v2, v3, v5}, Lcom/alensw/a/e;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/alensw/ui/c/bz;->z:Lcom/alensw/a/e;

    :cond_3
    sget-object v2, Lcom/alensw/a/e;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alensw/ui/c/bz;->z:Lcom/alensw/a/e;

    invoke-virtual {v3}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v2}, Lcom/alensw/a/o;->a(Landroid/content/Context;)Lcom/alensw/a/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alensw/a/o;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v3, Lcom/alensw/a/e;

    invoke-direct {v3, v2, v4}, Lcom/alensw/a/e;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/alensw/ui/c/bz;->z:Lcom/alensw/a/e;

    :cond_4
    invoke-virtual {p0}, Lcom/alensw/ui/c/bz;->q()V

    iget-object v2, p0, Lcom/alensw/ui/c/bz;->k:Lcom/alensw/ui/view/PathBar;

    iget-object v3, p0, Lcom/alensw/ui/c/bz;->z:Lcom/alensw/a/e;

    invoke-virtual {v2, v3}, Lcom/alensw/ui/view/PathBar;->setPath(Ljava/io/File;)V

    :cond_5
    iget-object v3, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    sget-boolean v2, Lcom/alensw/ui/view/ImageGridView;->a:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/alensw/ui/c/bz;->r:I

    if-ne v2, v1, :cond_7

    move v2, v1

    :goto_1
    iput-boolean v2, v3, Lcom/alensw/ui/view/ImageGridView;->b:Z

    iget-object v2, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    iget-object v3, p0, Lcom/alensw/ui/c/bz;->O:Lcom/alensw/ui/view/aj;

    iget v5, p0, Lcom/alensw/ui/c/bz;->w:I

    iget v6, p0, Lcom/alensw/ui/c/bz;->x:I

    invoke-virtual {v2, v3, v5, v6}, Lcom/alensw/ui/view/ImageGridView;->a(Lcom/alensw/ui/view/aj;II)V

    iget-object v2, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v2, v0, v1}, Lcom/alensw/ui/view/ImageGridView;->a(IZ)V

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->getHeight()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {p0}, Lcom/alensw/ui/c/bz;->p()V

    :cond_6
    iget-object v0, p0, Lcom/alensw/ui/c/bz;->c:Landroid/view/ViewGroup;

    iget-boolean v1, p0, Lcom/alensw/ui/c/bz;->o:Z

    if-eqz v1, :cond_8

    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :pswitch_0
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    iget v0, v0, Lcom/alensw/a/bc;->f:I

    iput v0, p0, Lcom/alensw/ui/c/bz;->w:I

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    iget v0, v0, Lcom/alensw/a/bc;->g:I

    iput v0, p0, Lcom/alensw/ui/c/bz;->x:I

    iput v4, p0, Lcom/alensw/ui/c/bz;->q:I

    move v0, v1

    goto/16 :goto_0

    :pswitch_1
    sget-object v3, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    iget v3, v3, Lcom/alensw/a/bc;->f:I

    iput v3, p0, Lcom/alensw/ui/c/bz;->w:I

    sget-object v3, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    iget v3, v3, Lcom/alensw/a/bc;->g:I

    sget-object v6, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    iget v6, v6, Lcom/alensw/a/bc;->e:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/alensw/ui/c/bz;->x:I

    iput v0, p0, Lcom/alensw/ui/c/bz;->q:I

    move v0, v2

    goto/16 :goto_0

    :pswitch_2
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    iget v0, v0, Lcom/alensw/a/bc;->f:I

    iput v0, p0, Lcom/alensw/ui/c/bz;->w:I

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    iget v0, v0, Lcom/alensw/a/bc;->g:I

    iput v0, p0, Lcom/alensw/ui/c/bz;->x:I

    iput v1, p0, Lcom/alensw/ui/c/bz;->q:I

    move v0, v2

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/alensw/ui/c/bz;->e()[I

    move-result-object v3

    aget v6, v3, v4

    iput v6, p0, Lcom/alensw/ui/c/bz;->w:I

    aget v3, v3, v1

    iput v3, p0, Lcom/alensw/ui/c/bz;->x:I

    iput v4, p0, Lcom/alensw/ui/c/bz;->q:I

    goto/16 :goto_0

    :cond_7
    move v2, v4

    goto :goto_1

    :cond_8
    const/16 v4, 0x8

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public b(Landroid/content/Intent;)V
    .locals 4

    const/4 v1, -0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    iget v0, p0, Lcom/alensw/ui/c/bz;->v:I

    iget-object v3, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v3, v0}, Lcom/alensw/a/x;->b(I)Lcom/alensw/a/e;

    move-result-object v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Lcom/alensw/a/e;

    invoke-direct {v0, v2, v1}, Lcom/alensw/a/e;-><init>(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v2}, Lcom/alensw/a/q;->a(Landroid/content/Context;)Lcom/alensw/a/q;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alensw/a/q;->a(Lcom/alensw/a/e;)I

    move-result v2

    iput v2, v0, Lcom/alensw/a/e;->d:I

    iget-object v2, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v2, v0}, Lcom/alensw/a/x;->b(Lcom/alensw/a/e;)I

    move-result v0

    :cond_0
    if-ltz v0, :cond_2

    :goto_0
    iput v0, p0, Lcom/alensw/ui/c/bz;->v:I

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    iget v1, p0, Lcom/alensw/ui/c/bz;->v:I

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/ImageGridView;->c(I)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->z:Lcom/alensw/a/e;

    if-eqz v0, :cond_0

    const-string v0, "current_uri"

    iget-object v1, p0, Lcom/alensw/ui/c/bz;->z:Lcom/alensw/a/e;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_0
    iget-object v0, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->getScrollPos()F

    move-result v0

    sput v0, Lcom/alensw/ui/c/bz;->h:F

    const-string v0, "scroll_pos"

    sget v1, Lcom/alensw/ui/c/bz;->h:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void

    :cond_0
    const-string v0, "current_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b(Lcom/alensw/a/e;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/alensw/a/e;

    sget-object v0, Lcom/alensw/a/e;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/alensw/a/e;-><init>(Ljava/lang/String;I)V

    :cond_0
    iput-object p1, p0, Lcom/alensw/ui/c/bz;->z:Lcom/alensw/a/e;

    const/4 v0, -0x1

    iput v0, p0, Lcom/alensw/ui/c/bz;->v:I

    invoke-virtual {p0}, Lcom/alensw/ui/c/bz;->q()V

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->k:Lcom/alensw/ui/view/PathBar;

    iget-object v1, p0, Lcom/alensw/ui/c/bz;->z:Lcom/alensw/a/e;

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/PathBar;->setPath(Ljava/io/File;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/bz;->a(Z)V

    return-void
.end method

.method protected b(Ljava/io/File;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/alensw/b/l/b;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/bz;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create folder \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->q:Lcom/alensw/a/s;

    const/4 v1, 0x4

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/alensw/a/s;->a(ILjava/lang/Object;Landroid/os/Handler;)V

    new-instance v0, Lcom/alensw/a/e;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Lcom/alensw/a/e;-><init>(Ljava/io/File;I)V

    iget-object v1, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v1}, Lcom/alensw/a/q;->a(Landroid/content/Context;)Lcom/alensw/a/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alensw/a/q;->a(Lcom/alensw/a/e;)I

    move-result v1

    iput v1, v0, Lcom/alensw/a/e;->d:I

    iget v1, p0, Lcom/alensw/ui/c/bz;->u:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/bz;->a(Ljava/io/File;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/alensw/ui/c/cb;

    invoke-direct {v1, p0, v0}, Lcom/alensw/ui/c/cb;-><init>(Lcom/alensw/ui/c/bz;Lcom/alensw/a/e;)V

    sget-object v2, Lcom/alensw/PicFolder/QuickApp;->q:Lcom/alensw/a/s;

    iget-boolean v2, v2, Lcom/alensw/a/s;->b:Z

    if-nez v2, :cond_3

    invoke-virtual {v0, v3}, Lcom/alensw/a/e;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    const-string v2, "protect_hidden"

    invoke-static {v0, v2, v1, v4}, Lcom/alensw/ui/a/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public b(Landroid/view/Menu;)Z
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    iget-boolean v0, v0, Lcom/alensw/ui/view/ImageGridView;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f090068

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->q:Lcom/alensw/a/s;

    iget-boolean v0, v0, Lcom/alensw/a/s;->b:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0a0077

    :goto_1
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const v0, 0x7f0a0076

    goto :goto_1
.end method

.method public c(Lcom/alensw/a/e;)V
    .locals 2

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->v:Lcom/alensw/b/a/a;

    invoke-virtual {v0, p1}, Lcom/alensw/b/a/a;->c(Ljava/lang/Object;)Lcom/alensw/b/a/c;

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    iget-object v1, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v1, p1}, Lcom/alensw/a/x;->a(Lcom/alensw/a/e;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/ImageGridView;->d(I)Z

    invoke-virtual {p0, p1}, Lcom/alensw/ui/c/bz;->d(Lcom/alensw/a/e;)V

    return-void
.end method

.method protected c(Landroid/view/Menu;)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    const v1, 0x7f0c0005

    invoke-static {v0, v1, p1}, Lcom/alensw/b/g/b;->a(Landroid/content/Context;ILandroid/view/Menu;)V

    const v0, 0x7f09005f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    const v0, 0x7f090061

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    const v0, 0x102001f

    const v1, 0x104000d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const v0, 0x7f090052

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    const v0, 0x7f090048

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    const v0, 0x7f090054

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    const v0, 0x7f090066

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    const v0, 0x7f09005e

    invoke-virtual {p0, p1, v0, v2}, Lcom/alensw/ui/c/bz;->a(Landroid/view/Menu;IZ)V

    sget-boolean v0, Lcom/alensw/ui/activity/ao;->F:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const v0, 0x7f09004e

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/alensw/ui/c/bz;->a(Landroid/view/Menu;II)V

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->A:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0, v3}, Lcom/alensw/ui/view/ImageGridView;->setMultiSelect(Z)V

    return v3
.end method

.method public d(Lcom/alensw/a/e;)V
    .locals 9

    const/4 v8, 0x0

    iget v0, p0, Lcom/alensw/ui/c/bz;->r:I

    invoke-virtual {p1}, Lcom/alensw/a/e;->j()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v0}, Lcom/alensw/a/n;->a(Landroid/content/Context;)Lcom/alensw/a/n;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/a/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->v:Lcom/alensw/b/a/a;

    invoke-virtual {v1, p1}, Lcom/alensw/b/a/a;->a(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/alensw/a/d;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x49

    const/4 v3, -0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/alensw/a/d;-><init>(Ljava/io/File;CI)V

    invoke-virtual {p0, p1, v1}, Lcom/alensw/ui/c/bz;->a(Lcom/alensw/a/e;Lcom/alensw/a/d;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne v5, v0, :cond_2

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->v:Lcom/alensw/b/a/a;

    invoke-virtual {v0, p1}, Lcom/alensw/b/a/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v8}, Lcom/alensw/a/e;->e(I)Lcom/alensw/a/d;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alensw/ui/c/bz;->a(Lcom/alensw/a/e;Lcom/alensw/a/d;)V

    goto :goto_0

    :cond_2
    if-lez v5, :cond_0

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->v:Lcom/alensw/b/a/a;

    invoke-virtual {v0, p1}, Lcom/alensw/b/a/a;->b(Ljava/lang/Object;)Lcom/alensw/b/a/c;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/h/h;

    instance-of v1, v0, Lcom/alensw/a/p;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/alensw/a/p;

    invoke-virtual {v0}, Lcom/alensw/a/p;->b()Z

    move-result v1

    if-nez v1, :cond_0

    move v6, v8

    :goto_1
    if-ge v6, v5, :cond_3

    invoke-virtual {v0, v6}, Lcom/alensw/a/p;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    move-object v4, v0

    :goto_2
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->t:Lcom/alensw/a/ah;

    invoke-virtual {p1, v6}, Lcom/alensw/a/e;->e(I)Lcom/alensw/a/d;

    move-result-object v7

    new-instance v1, Lcom/alensw/ui/c/ct;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/alensw/ui/c/ct;-><init>(Lcom/alensw/ui/c/bz;Lcom/alensw/a/e;Lcom/alensw/a/p;II)V

    invoke-virtual {v0, v7, v8, v1}, Lcom/alensw/a/ah;->a(Lcom/alensw/a/d;ZLcom/alensw/a/aj;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/alensw/a/p;

    iget v1, p0, Lcom/alensw/ui/c/bz;->q:I

    iget v2, p0, Lcom/alensw/ui/c/bz;->w:I

    iget v3, p0, Lcom/alensw/ui/c/bz;->x:I

    iget v4, p0, Lcom/alensw/ui/c/bz;->y:F

    iget-object v6, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    iget v6, v6, Lcom/alensw/ui/c/cx;->U:I

    sget-object v7, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    iget-boolean v7, v7, Lcom/alensw/a/bc;->b:Z

    invoke-direct/range {v0 .. v7}, Lcom/alensw/a/p;-><init>(IIIFIIZ)V

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->v:Lcom/alensw/b/a/a;

    invoke-virtual {v1, p1, v0}, Lcom/alensw/b/a/a;->a(Ljava/lang/Object;Lcom/alensw/b/a/c;)Lcom/alensw/b/a/c;

    move-object v4, v0

    move v6, v8

    goto :goto_2
.end method

.method protected d(Landroid/view/Menu;)Z
    .locals 8

    const v7, 0x7f090060

    const v5, 0x7f09005f

    const v6, 0x7f090055

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->A:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v4

    if-ne v4, v1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0, p1, v5, v0}, Lcom/alensw/ui/c/bz;->a(Landroid/view/Menu;IZ)V

    const v3, 0x7f090062

    if-ne v4, v1, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p0, p1, v3, v0}, Lcom/alensw/ui/c/bz;->a(Landroid/view/Menu;IZ)V

    const v3, 0x7f090063

    if-ne v4, v1, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {p0, p1, v3, v0}, Lcom/alensw/ui/c/bz;->a(Landroid/view/Menu;IZ)V

    if-ne v4, v1, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {p0, p1, v6, v0}, Lcom/alensw/ui/c/bz;->a(Landroid/view/Menu;IZ)V

    if-ne v4, v1, :cond_6

    move v0, v1

    :goto_4
    invoke-virtual {p0, p1, v7, v0}, Lcom/alensw/ui/c/bz;->a(Landroid/view/Menu;IZ)V

    if-ne v4, v1, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->A:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/e;

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-virtual {v0, v1}, Lcom/alensw/a/e;->a(Z)Z

    move-result v3

    if-eqz v3, :cond_7

    const v3, 0x7f0a003f

    :goto_5
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alensw/a/e;->c()Z

    move-result v3

    if-eqz v3, :cond_8

    const v3, 0x7f0a008b

    :goto_6
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    const v5, 0x7f090063

    invoke-virtual {v0}, Lcom/alensw/a/e;->j()I

    move-result v3

    if-lez v3, :cond_9

    move v3, v1

    :goto_7
    invoke-virtual {p0, p1, v5, v3}, Lcom/alensw/ui/c/bz;->a(Landroid/view/Menu;IZ)V

    invoke-virtual {v0}, Lcom/alensw/a/e;->j()I

    move-result v0

    if-lez v0, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {p0, p1, v6, v2}, Lcom/alensw/ui/c/bz;->a(Landroid/view/Menu;IZ)V

    :cond_1
    const v0, 0x102001f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v0}, Lcom/alensw/a/x;->f()I

    move-result v0

    if-ne v4, v0, :cond_a

    const v0, 0x7f0a002e

    :goto_8
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    return v1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    const v3, 0x7f0a003e

    goto :goto_5

    :cond_8
    const v3, 0x7f0a008a

    goto :goto_6

    :cond_9
    move v3, v2

    goto :goto_7

    :cond_a
    const v0, 0x104000d

    goto :goto_8
.end method

.method public f()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v2}, Lcom/alensw/ui/c/cx;->q()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v2}, Lcom/alensw/a/x;->f()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v1, v0}, Lcom/alensw/ui/c/cx;->d(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/alensw/ui/c/bz;->n()V

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/alensw/ui/c/bz;->s()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alensw/ui/c/bz;->z:Lcom/alensw/a/e;

    invoke-virtual {v2}, Lcom/alensw/a/e;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v1, Lcom/alensw/a/e;

    invoke-direct {v1, v2, v0}, Lcom/alensw/a/e;-><init>(Ljava/io/File;I)V

    invoke-virtual {p0, v1}, Lcom/alensw/ui/c/bz;->b(Lcom/alensw/a/e;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public g()V
    .locals 1

    invoke-super {p0}, Lcom/alensw/ui/c/a;->g()V

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->m:Lcom/alensw/b/h/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->m:Lcom/alensw/b/h/h;

    invoke-virtual {v0}, Lcom/alensw/b/h/h;->m()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/ui/c/bz;->m:Lcom/alensw/b/h/h;

    :cond_0
    return-void
.end method

.method public h()Landroid/graphics/RectF;
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    iget v2, p0, Lcom/alensw/ui/c/bz;->v:I

    invoke-virtual {v1, v2}, Lcom/alensw/ui/view/ImageGridView;->c(I)V

    iget v1, p0, Lcom/alensw/ui/c/bz;->v:I

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    iget v2, p0, Lcom/alensw/ui/c/bz;->v:I

    invoke-virtual {v1, v2, v0}, Lcom/alensw/ui/view/ImageGridView;->b(ILandroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/alensw/ui/c/bz;->s:I

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0}, Lcom/alensw/ui/c/a;->h()Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    const/4 v3, 0x0

    const v5, 0x7f0a004e

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v1

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alensw/a/e;

    iget-object v3, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v3, v0}, Lcom/alensw/a/x;->d(Lcom/alensw/a/e;)I

    iget v0, p0, Lcom/alensw/ui/c/bz;->H:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->requestLayout()V

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->a()Z

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v0}, Lcom/alensw/a/x;->f()I

    move-result v0

    iget-object v3, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v3}, Lcom/alensw/ui/view/ImageGridView;->getVisibleCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-lt v0, v3, :cond_0

    iput-boolean v2, p0, Lcom/alensw/ui/c/bz;->p:Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alensw/a/e;

    iget-object v3, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v3}, Lcom/alensw/ui/c/cx;->q()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alensw/ui/c/bz;->A:Ljava/util/LinkedHashSet;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/alensw/ui/c/bz;->A:Ljava/util/LinkedHashSet;

    invoke-virtual {v5}, Ljava/util/LinkedHashSet;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v5}, Lcom/alensw/a/x;->f()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/alensw/ui/c/cx;->a(Ljava/lang/CharSequence;Z)V

    :cond_2
    iget-object v2, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v2, v0}, Lcom/alensw/a/x;->f(Lcom/alensw/a/e;)Lcom/alensw/a/e;

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->requestLayout()V

    goto :goto_0

    :pswitch_2
    iput-boolean v2, p0, Lcom/alensw/ui/c/bz;->p:Z

    invoke-virtual {p0, v2}, Lcom/alensw/ui/c/bz;->c(Z)V

    iget v0, p0, Lcom/alensw/ui/c/bz;->H:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->requestLayout()V

    goto/16 :goto_0

    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    iget-object v4, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v4, v3}, Lcom/alensw/ui/view/ImageGridView;->setEmptyText(Ljava/lang/String;)V

    if-nez v0, :cond_0

    sput-boolean v2, Lcom/alensw/PicFolder/QuickApp;->x:Z

    iput-boolean v1, p0, Lcom/alensw/ui/c/bz;->p:Z

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v0}, Lcom/alensw/a/x;->i()V

    invoke-virtual {p0, v1}, Lcom/alensw/ui/c/bz;->c(Z)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    const v3, 0x7f0a0048

    invoke-virtual {p0, v3}, Lcom/alensw/ui/c/bz;->g(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_3
    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/alensw/PicFolder/QuickApp;->x:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v0}, Lcom/alensw/a/x;->f()I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/alensw/ui/c/bz;->w()V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v0}, Lcom/alensw/a/x;->f()I

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_4
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v1, :cond_9

    move v4, v1

    :goto_5
    sput-boolean v4, Lcom/alensw/PicFolder/QuickApp;->x:Z

    iput-boolean v2, p0, Lcom/alensw/ui/c/bz;->p:Z

    sget-boolean v4, Lcom/alensw/PicFolder/QuickApp;->x:Z

    if-eqz v4, :cond_a

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {p0, v5}, Lcom/alensw/ui/c/bz;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alensw/ui/view/ImageGridView;->setEmptyText(Ljava/lang/String;)V

    :goto_6
    invoke-virtual {p0, v2}, Lcom/alensw/ui/c/bz;->c(Z)V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto :goto_4

    :cond_9
    move v4, v2

    goto :goto_5

    :cond_a
    iget-object v4, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    if-eqz v0, :cond_b

    invoke-virtual {p0, v5}, Lcom/alensw/ui/c/bz;->g(I)Ljava/lang/String;

    move-result-object v3

    :cond_b
    invoke-virtual {v4, v3}, Lcom/alensw/ui/view/ImageGridView;->setEmptyText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->requestLayout()V

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public i()V
    .locals 0

    invoke-super {p0}, Lcom/alensw/ui/c/a;->i()V

    return-void
.end method

.method protected j()[Landroid/net/Uri;
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/ui/c/bz;->l()[Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected k()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->A:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/ImageGridView;->setMultiSelect(Z)V

    return-void
.end method

.method public l()[Landroid/net/Uri;
    .locals 9

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->A:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/bz;->A:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->j()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    move-object v0, v3

    goto :goto_0

    :cond_2
    new-array v3, v1, [Landroid/net/Uri;

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->A:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->j()I

    move-result v7

    move v4, v2

    :goto_2
    if-ge v4, v7, :cond_3

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v4}, Lcom/alensw/a/e;->d(I)Landroid/net/Uri;

    move-result-object v8

    aput-object v8, v3, v1

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v5

    goto :goto_2

    :cond_4
    move-object v0, v3

    goto :goto_0
.end method

.method protected m()Lcom/alensw/b/h/h;
    .locals 5

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->m:Lcom/alensw/b/h/h;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/c/bz;->F()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/alensw/ui/c/bz;->q:I

    iget v2, p0, Lcom/alensw/ui/c/bz;->w:I

    iget v3, p0, Lcom/alensw/ui/c/bz;->x:I

    iget-object v4, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    iget v4, v4, Lcom/alensw/ui/c/cx;->U:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alensw/a/p;->a(Landroid/content/res/Resources;IIII)Lcom/alensw/b/h/h;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/c/bz;->m:Lcom/alensw/b/h/h;

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/bz;->m:Lcom/alensw/b/h/h;

    return-object v0
.end method

.method protected n()V
    .locals 0

    return-void
.end method

.method public o()V
    .locals 4

    const/4 v1, 0x1

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->q:Lcom/alensw/a/s;

    iget-boolean v0, v0, Lcom/alensw/a/s;->b:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    const-string v2, "protect_hidden"

    new-instance v3, Lcom/alensw/ui/c/cr;

    invoke-direct {v3, p0, v0}, Lcom/alensw/ui/c/cr;-><init>(Lcom/alensw/ui/c/bz;Z)V

    const/4 v0, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/alensw/ui/a/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/alensw/PicFolder/QuickApp;->q:Lcom/alensw/a/s;

    iput-boolean v0, v2, Lcom/alensw/a/s;->b:Z

    invoke-virtual {p0}, Lcom/alensw/ui/c/bz;->v()V

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v0, v1}, Lcom/alensw/a/x;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->requestLayout()V

    :cond_2
    invoke-virtual {p0}, Lcom/alensw/ui/c/bz;->u()V

    goto :goto_1
.end method

.method protected p()V
    .locals 7

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/alensw/ui/c/bz;->o:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/c/bz;->r()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    iget-object v3, p0, Lcom/alensw/ui/c/bz;->L:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/alensw/ui/c/cx;->a(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    iget-object v3, p0, Lcom/alensw/ui/c/bz;->L:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/alensw/ui/c/bz;->L:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/alensw/ui/c/bz;->L:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/alensw/ui/c/bz;->L:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v6

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/alensw/ui/view/ImageGridView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->c:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/alensw/ui/c/bz;->L:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/alensw/ui/c/bz;->L:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/alensw/ui/c/bz;->L:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected q()V
    .locals 5

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->k:Lcom/alensw/ui/view/PathBar;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alensw/ui/c/bz;->y:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    new-instance v1, Lcom/alensw/ui/view/PathBar;

    iget-object v2, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    invoke-direct {v1, v2}, Lcom/alensw/ui/view/PathBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alensw/ui/c/bz;->k:Lcom/alensw/ui/view/PathBar;

    iget-object v1, p0, Lcom/alensw/ui/c/bz;->k:Lcom/alensw/ui/view/PathBar;

    iget-object v2, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    const v3, 0x7f010010

    invoke-static {v2, v3}, Lcom/alensw/ui/activity/ao;->b(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alensw/ui/view/PathBar;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/alensw/ui/c/bz;->k:Lcom/alensw/ui/view/PathBar;

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/alensw/ui/view/PathBar;->setPadding(IIII)V

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->k:Lcom/alensw/ui/view/PathBar;

    new-instance v1, Lcom/alensw/ui/c/cs;

    invoke-direct {v1, p0}, Lcom/alensw/ui/c/cs;-><init>(Lcom/alensw/ui/c/bz;)V

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/PathBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alensw/ui/c/bz;->k:Lcom/alensw/ui/view/PathBar;

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/alensw/ui/c/bz;->F()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method protected r()I
    .locals 2

    invoke-virtual {p0}, Lcom/alensw/ui/c/bz;->q()V

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->k:Lcom/alensw/ui/view/PathBar;

    invoke-virtual {v0}, Lcom/alensw/ui/view/PathBar;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/c/bz;->F()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method protected s()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/alensw/ui/c/bz;->o:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/bz;->z:Lcom/alensw/a/e;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/alensw/a/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alensw/ui/c/bz;->z:Lcom/alensw/a/e;

    invoke-virtual {v2}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/alensw/ui/view/PathBar;->a:Ljava/io/File;

    iget-object v2, p0, Lcom/alensw/ui/c/bz;->z:Lcom/alensw/a/e;

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public u()V
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    sget v1, Lcom/alensw/ui/c/bz;->h:F

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/ImageGridView;->setScrollPos(F)V

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->requestLayout()V

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    new-instance v1, Lcom/alensw/ui/c/ce;

    invoke-direct {v1, p0}, Lcom/alensw/ui/c/ce;-><init>(Lcom/alensw/ui/c/bz;)V

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/ImageGridView;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v0}, Lcom/alensw/a/x;->h()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->q:Lcom/alensw/a/s;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alensw/ui/c/bz;->b:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3}, Lcom/alensw/a/s;->a(ILjava/lang/Object;Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/alensw/ui/c/bz;->n()V

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alensw/ui/c/bz;->A:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v2}, Lcom/alensw/a/x;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alensw/ui/c/cx;->a(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method public v()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->getScrollPos()F

    move-result v0

    sput v0, Lcom/alensw/ui/c/bz;->h:F

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->c()V

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->q:Lcom/alensw/a/s;

    invoke-virtual {v0}, Lcom/alensw/a/s;->c()V

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->t:Lcom/alensw/a/ah;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alensw/a/ah;->a(Z)V

    invoke-virtual {p0}, Lcom/alensw/ui/c/bz;->x()V

    return-void
.end method

.method public w()V
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v0}, Lcom/alensw/a/x;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v0}, Lcom/alensw/a/x;->i()V

    :cond_0
    iget-boolean v0, p0, Lcom/alensw/ui/c/bz;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->z:Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->n()V

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->z:Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alensw/ui/c/bz;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->z:Lcom/alensw/a/e;

    iget v0, v0, Lcom/alensw/a/e;->e:I

    sput v0, Lcom/alensw/ui/c/bz;->g:I

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->q:Lcom/alensw/a/s;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alensw/ui/c/bz;->z:Lcom/alensw/a/e;

    invoke-virtual {v2}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alensw/ui/c/bz;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alensw/a/s;->a(ILjava/lang/Object;Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->q:Lcom/alensw/a/s;

    const/4 v1, 0x3

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alensw/ui/c/bz;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alensw/a/s;->a(ILjava/lang/Object;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method protected x()V
    .locals 5

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->getFirstVisible()I

    move-result v1

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->getLastVisible()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    sget-object v3, Lcom/alensw/PicFolder/QuickApp;->v:Lcom/alensw/b/a/a;

    iget-object v4, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v4, v0}, Lcom/alensw/a/x;->b(I)Lcom/alensw/a/e;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alensw/b/a/a;->b(Ljava/lang/Object;)Lcom/alensw/b/a/c;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-le v2, v1, :cond_1

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->v:Lcom/alensw/b/a/a;

    sub-int v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/alensw/b/a/a;->b(I)V

    :cond_1
    return-void
.end method

.method protected y()V
    .locals 8

    const/4 v0, 0x0

    new-instance v5, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alensw/ui/c/bz;->A:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/alensw/ui/c/bz;->A:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    move v4, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/e;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/alensw/a/e;->j()I

    move-result v0

    add-int/2addr v4, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    if-nez v4, :cond_1

    if-nez v1, :cond_1

    :goto_1
    return-void

    :cond_1
    sget-object v7, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    sget-object v6, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    new-instance v0, Lcom/alensw/ui/c/cf;

    iget-object v2, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    const v1, 0x7f0a002d

    invoke-virtual {p0, v1}, Lcom/alensw/ui/c/bz;->g(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/alensw/ui/c/cf;-><init>(Lcom/alensw/ui/c/bz;Landroid/app/Activity;Ljava/lang/String;ILjava/util/ArrayList;Lcom/alensw/a/ba;Lcom/alensw/a/bc;)V

    invoke-virtual {v0}, Lcom/alensw/ui/c/cf;->c()V

    goto :goto_1
.end method

.method protected z()V
    .locals 5

    new-instance v1, Lcom/alensw/ui/c/cg;

    invoke-direct {v1, p0}, Lcom/alensw/ui/c/cg;-><init>(Lcom/alensw/ui/c/bz;)V

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v0}, Lcom/alensw/a/o;->a(Landroid/content/Context;)Lcom/alensw/a/o;

    move-result-object v2

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->A:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/bz;->A:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/e;

    new-instance v3, Lcom/alensw/ui/c/ch;

    invoke-direct {v3, p0, v2, v1}, Lcom/alensw/ui/c/ch;-><init>(Lcom/alensw/ui/c/bz;Lcom/alensw/a/o;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, v3}, Lcom/alensw/ui/c/bz;->a(Lcom/alensw/a/e;Lcom/alensw/ui/a/s;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/bz;->A:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/e;

    invoke-virtual {v2, v0}, Lcom/alensw/a/o;->a(Lcom/alensw/a/e;)V

    iget-object v4, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v4, v0}, Lcom/alensw/a/x;->f(Lcom/alensw/a/e;)Lcom/alensw/a/e;

    iget-object v4, p0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v4, v0}, Lcom/alensw/a/x;->e(Lcom/alensw/a/e;)V

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
