.class public Lcom/alensw/ui/c/a;
.super Lcom/alensw/ui/c/cu;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final a:Z

.field private static f:Ljava/lang/String;


# instance fields
.field protected b:Landroid/os/Handler;

.field protected c:Landroid/view/ViewGroup;

.field protected d:Landroid/view/View$OnClickListener;

.field protected e:Lcom/alensw/ui/c/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alensw/ui/c/a;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/ui/c/cu;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alensw/b/h/j;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/alensw/b/h/j;->d:I

    if-ge v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/alensw/b/h/j;->h:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "unknown"

    :cond_2
    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "video"

    :goto_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "source"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alensw/b/f/b;->e:Lcom/alensw/b/f/b;

    invoke-static {p0, v0, v1}, Lcom/alensw/b/f/a;->a(Landroid/content/Context;Lcom/alensw/b/f/b;Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    const-string v1, "/gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "gif"

    goto :goto_1

    :cond_4
    const-string v0, "image"

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/alensw/b/f/b;->d:Lcom/alensw/b/f/b;

    invoke-static {p0, v0, p1}, Lcom/alensw/b/f/a;->a(Landroid/content/Context;Lcom/alensw/b/f/b;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/alensw/ui/c/a;->f:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(ZLandroid/graphics/RectF;)J
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/a;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/a;->c:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alensw/ui/c/cu;->a(ZLandroid/graphics/RectF;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a()V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    const/16 v4, 0x400

    const/4 v8, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/alensw/ui/c/cu;->a()V

    invoke-virtual {p0}, Lcom/alensw/ui/c/a;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alensw/PicFolder/QuickApp;->a(Ljava/lang/String;)V

    :cond_0
    instance-of v0, p0, Lcom/alensw/ui/c/dp;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/alensw/ui/c/as;

    if-eqz v0, :cond_4

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    iget-object v3, p0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v3}, Lcom/alensw/ui/c/cx;->getWindow()Landroid/view/Window;

    move-result-object v6

    const-string v3, "screen_orientation"

    const-string v7, "-1"

    invoke-interface {v5, v3, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/alensw/b/l/b;->a(Ljava/lang/String;I)I

    move-result v3

    if-eqz v0, :cond_5

    const/4 v7, -0x2

    if-eq v3, v7, :cond_2

    iget-object v7, p0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v7, v3}, Lcom/alensw/ui/c/cx;->a(I)V

    :cond_2
    :goto_1
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    if-eqz v0, :cond_6

    const-string v7, "auto_max_brightness"

    invoke-interface {v5, v7, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_6

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    :goto_2
    invoke-virtual {v6, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const-string v3, "hide_status_bar"

    invoke-interface {v5, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iget-object v7, p0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    const-string v8, "auto_hide_navigate_bar"

    invoke-interface {v5, v8, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v7, v5}, Lcom/alensw/ui/c/cx;->e(Z)Z

    move-result v5

    if-nez v5, :cond_3

    or-int/2addr v3, v0

    :cond_3
    if-eqz v3, :cond_7

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3, v4}, Landroid/view/Window;->setFlags(II)V

    iget-object v3, p0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    iget-object v4, p0, Lcom/alensw/ui/c/a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Lcom/alensw/ui/c/cx;->a(Landroid/view/ViewGroup;)V

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    iget-object v1, p0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v1, v2}, Lcom/alensw/ui/c/cx;->b(Z)J

    move-result-wide v2

    long-to-int v1, v2

    add-int/lit8 v1, v1, 0x32

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/cx;->f(I)V

    :goto_4
    return-void

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v3, v8}, Lcom/alensw/ui/c/cx;->a(I)V

    goto :goto_1

    :cond_6
    const/high16 v7, -0x40800000    # -1.0f

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_2

    :cond_7
    move v3, v1

    goto :goto_3

    :cond_8
    iget-object v3, p0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    if-nez v0, :cond_9

    :goto_5
    invoke-virtual {v3, v2}, Lcom/alensw/ui/c/cx;->a(Z)V

    goto :goto_4

    :cond_9
    move v2, v1

    goto :goto_5
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/alensw/ui/c/cx;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->finish()V

    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/c/a;->e:Lcom/alensw/ui/c/m;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alensw/ui/c/a;->e:Lcom/alensw/ui/c/m;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "vnd.android.document/directory"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/alensw/ui/c/a;->b:Landroid/os/Handler;

    new-instance v3, Lcom/alensw/ui/c/b;

    invoke-direct {v3, p0, v0, v1}, Lcom/alensw/ui/c/b;-><init>(Lcom/alensw/ui/c/a;Lcom/alensw/ui/c/m;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/alensw/ui/c/a;->E()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "vnd.android.document/directory"

    invoke-virtual {p0, p1, v0}, Lcom/alensw/ui/c/a;->a(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/a;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alensw/ui/c/cu;->a(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/alensw/ui/c/a;->b:Landroid/os/Handler;

    iget-object v0, p0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    iget-object v0, v0, Lcom/alensw/ui/c/cx;->Z:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/alensw/ui/c/a;->d:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final a(Landroid/view/Menu;II)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/alensw/ui/c/cx;->a(Landroid/view/MenuItem;I)V

    return-void
.end method

.method public final a(Landroid/view/Menu;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alensw/ui/c/cx;->a(Landroid/view/Menu;IZ)V

    return-void
.end method

.method public final a(Landroid/view/MenuItem;I)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0, p1, p2}, Lcom/alensw/ui/c/cx;->a(Landroid/view/MenuItem;I)V

    return-void
.end method

.method public a(Lcom/alensw/a/e;)V
    .locals 3

    invoke-virtual {p1}, Lcom/alensw/a/e;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/alensw/a/e;->d(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/alensw/ui/c/a;->a(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method

.method public a(Lcom/alensw/a/e;ILcom/alensw/ui/c/o;)V
    .locals 9

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, p2}, Lcom/alensw/a/e;->c(I)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/b/l/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    const v7, 0x7f0a0062

    const/4 v8, 0x0

    new-instance v0, Lcom/alensw/ui/c/g;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alensw/ui/c/g;-><init>(Lcom/alensw/ui/c/a;Ljava/lang/String;Lcom/alensw/a/e;ILcom/alensw/ui/c/o;)V

    invoke-static {v6, v7, v2, v8, v0}, Lcom/alensw/ui/a/f;->a(Landroid/content/Context;ILjava/lang/Object;Ljava/lang/CharSequence;Lcom/alensw/ui/a/s;)V

    goto :goto_0
.end method

.method public a(Lcom/alensw/a/e;Lcom/alensw/ui/a/s;)V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-gtz v3, :cond_2

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    const v2, 0x7f0a0033

    const v3, 0x7f0a0034

    invoke-static {v0, v2, v3, v1, p2}, Lcom/alensw/ui/a/f;->a(Landroid/content/Context;IILjava/util/List;Lcom/alensw/ui/a/s;)V

    return-void

    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/alensw/a/e;Ljava/lang/Runnable;)V
    .locals 3

    new-instance v0, Lcom/alensw/a/e;

    invoke-virtual {p1}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/alensw/a/e;->e:I

    invoke-direct {v0, v1, v2}, Lcom/alensw/a/e;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alensw/a/e;->a(Lcom/alensw/a/e;Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alensw/ui/c/a;->c(Z)V

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->u:Lcom/alensw/a/ao;

    new-instance v2, Lcom/alensw/ui/c/h;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/alensw/ui/c/h;-><init>(Lcom/alensw/ui/c/a;Lcom/alensw/a/e;Lcom/alensw/a/e;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/alensw/a/ao;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/alensw/ui/c/m;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/a;->e:Lcom/alensw/ui/c/m;

    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dest_folder"

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/a;->a(Landroid/net/Uri;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const-wide/16 v4, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v8, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v1}, Lcom/alensw/a/n;->a(Landroid/content/Context;)Lcom/alensw/a/n;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/alensw/a/n;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    new-instance v2, Lcom/alensw/b/h/a;

    invoke-direct {v2}, Lcom/alensw/b/h/a;-><init>()V

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/alensw/a/bc;->a(Ljava/lang/String;JLcom/alensw/b/h/a;)Lcom/alensw/b/h/h;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alensw/b/h/h;->j()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_1
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    new-instance v1, Lcom/alensw/b/h/a;

    invoke-direct {v1}, Lcom/alensw/b/h/a;-><init>()V

    invoke-virtual {v0, p3, v4, v5, v1}, Lcom/alensw/a/bc;->a(Landroid/net/Uri;JLcom/alensw/b/h/a;)Lcom/alensw/b/h/h;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alensw/b/h/h;->j()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/alensw/ui/c/a;->F()Landroid/content/res/Resources;

    move-result-object v2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_4

    iget-object v0, p0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Lcom/alensw/ui/c/cx;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v0

    :goto_2
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v3}, Lcom/alensw/b/h/b;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    new-instance v5, Landroid/graphics/RectF;

    int-to-float v6, v0

    int-to-float v7, v0

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x7

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    mul-int/lit8 v8, v4, 0x2

    sub-int v8, v0, v8

    int-to-float v8, v8

    mul-int/lit8 v9, v4, 0x2

    sub-int v9, v0, v9

    int-to-float v9, v9

    const/4 v10, 0x2

    invoke-virtual {v1, v7, v8, v9, v10}, Lcom/alensw/b/h/h;->a(Landroid/graphics/Matrix;FFI)V

    int-to-float v8, v4

    int-to-float v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v8, -0x1

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    const v8, -0xbbbbbc

    invoke-virtual {v6, v2, v2, v2, v8}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-virtual {v5, v11, v11}, Landroid/graphics/RectF;->inset(FF)V

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    sub-int v5, v0, v4

    sub-int/2addr v0, v4

    invoke-virtual {v2, v4, v4, v5, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-virtual {v6}, Landroid/graphics/Paint;->clearShadowLayer()V

    invoke-virtual {v1}, Lcom/alensw/b/h/h;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v1}, Lcom/alensw/b/h/h;->m()I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v2}, Lcom/alensw/ui/c/cx;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/alensw/PicFolder/GalleryActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x4280000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "duplicate"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/cx;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_4
    const/high16 v0, 0x1050000

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_2

    :cond_5
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public a(Ljava/util/HashSet;ZLcom/alensw/ui/c/n;)V
    .locals 7

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/cx;->d(Z)V

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v0, Lcom/alensw/ui/c/c;

    move-object v1, p0

    move-object v2, p3

    move v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/alensw/ui/c/c;-><init>(Lcom/alensw/ui/c/a;Lcom/alensw/ui/c/n;ZILjava/util/HashSet;Landroid/content/ContentResolver;)V

    if-eqz p2, :cond_2

    const v1, 0x7f0a0024

    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "vnd.android.document/directory"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "activity_title"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/alensw/ui/c/a;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    const-class v3, Lcom/alensw/ui/c/bz;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Lcom/alensw/ui/c/cx;->a(Ljava/lang/Class;Landroid/content/Intent;Landroid/os/Bundle;)Lcom/alensw/ui/c/cu;

    move-result-object v1

    check-cast v1, Lcom/alensw/ui/c/a;

    invoke-virtual {v1, v0}, Lcom/alensw/ui/c/a;->a(Lcom/alensw/ui/c/m;)V

    goto :goto_0

    :cond_2
    const v1, 0x7f0a004b

    goto :goto_1
.end method

.method public a(I)Z
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    sget-object v3, Lcom/alensw/PicFolder/QuickApp;->q:Lcom/alensw/a/s;

    iget v3, v3, Lcom/alensw/a/s;->c:I

    if-ne p1, v2, :cond_3

    move v0, v2

    :cond_0
    :goto_0
    sget-object v3, Lcom/alensw/PicFolder/QuickApp;->q:Lcom/alensw/a/s;

    iget v3, v3, Lcom/alensw/a/s;->c:I

    if-eq v3, v0, :cond_5

    move v3, v2

    :goto_1
    if-eqz v3, :cond_1

    sget-object v5, Lcom/alensw/PicFolder/QuickApp;->q:Lcom/alensw/a/s;

    invoke-virtual {v5, v0, v4}, Lcom/alensw/a/s;->a(ILandroid/content/SharedPreferences;)V

    :cond_1
    const-string v0, "sort_logical"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/alensw/b/b/b;->a(Z)Z

    move-result v0

    or-int/2addr v0, v3

    if-eqz v0, :cond_2

    invoke-static {v2}, Lcom/alensw/PicFolder/QuickApp;->a(Z)Z

    :cond_2
    invoke-static {v1}, Lcom/alensw/PicFolder/QuickApp;->a(Z)Z

    move-result v0

    return v0

    :cond_3
    if-eq p1, v0, :cond_0

    const-string v3, "include_video"

    invoke-interface {v4, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v3, v1

    goto :goto_1
.end method

.method public a(Lcom/alensw/a/e;ZLjava/lang/Runnable;)Z
    .locals 10

    const v3, 0x7f0a0068

    const/4 v9, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v7

    if-eqz p2, :cond_2

    iget v0, p1, Lcom/alensw/a/e;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    const v1, 0x7f0a001e

    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return v4

    :cond_0
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->p:Lcom/alensw/a/bh;

    invoke-virtual {v0, v7}, Lcom/alensw/a/bh;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    const-string v1, "Can\'t hide the SD folder!"

    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    new-instance v0, Lcom/alensw/ui/c/j;

    iget-object v2, p0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {p0, v3}, Lcom/alensw/ui/c/a;->g(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v5, p1

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/alensw/ui/c/j;-><init>(Lcom/alensw/ui/c/a;Landroid/app/Activity;Ljava/lang/String;ILcom/alensw/a/e;Lcom/alensw/a/ba;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/alensw/ui/c/j;->c()V

    move v4, v9

    goto :goto_0

    :cond_2
    invoke-static {p1, v4}, Lcom/alensw/b/l/b;->a(Ljava/io/File;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v9}, Lcom/alensw/a/e;->a(Z)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    invoke-virtual {v0}, Lcom/alensw/a/ba;->a()V

    new-instance v0, Lcom/alensw/ui/c/l;

    iget-object v2, p0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {p0, v3}, Lcom/alensw/ui/c/a;->g(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/alensw/ui/c/l;-><init>(Lcom/alensw/ui/c/a;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/alensw/ui/c/l;->c()V

    :goto_1
    move v4, v9

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/a;->a(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/c/cx;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x20

    const/4 v1, 0x0

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    if-gt v0, v2, :cond_1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2026

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public b()V
    .locals 1

    invoke-super {p0}, Lcom/alensw/ui/c/cu;->b()V

    iget-object v0, p0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->u()V

    invoke-virtual {p0}, Lcom/alensw/ui/c/a;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alensw/PicFolder/QuickApp;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    const v1, 0x104000c

    sget-object v2, Lcom/alensw/ui/c/a;->f:Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Lcom/alensw/ui/c/e;

    invoke-direct {v4, p0, p1}, Lcom/alensw/ui/c/e;-><init>(Lcom/alensw/ui/c/a;Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alensw/ui/a/f;->a(Landroid/content/Context;ILjava/lang/Object;Ljava/lang/CharSequence;Lcom/alensw/ui/a/s;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->u:Lcom/alensw/a/ao;

    new-instance v1, Lcom/alensw/ui/c/f;

    invoke-direct {v1, p0, p1}, Lcom/alensw/ui/c/f;-><init>(Lcom/alensw/ui/c/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alensw/a/ao;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public d()Z
    .locals 3

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    invoke-virtual {v0}, Lcom/alensw/a/ba;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    const v1, 0x1040014

    const v2, 0x7f0a001f

    invoke-virtual {p0, v2}, Lcom/alensw/ui/c/a;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alensw/ui/a/f;->a(Landroid/content/Context;ILjava/lang/CharSequence;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()[I
    .locals 4

    invoke-virtual {p0}, Lcom/alensw/ui/c/a;->F()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sget v1, Lcom/alensw/PicFolder/QuickApp;->h:I

    div-int/lit16 v1, v1, 0x190

    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x48

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    iget v1, v1, Lcom/alensw/a/bc;->d:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    sget-object v2, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    iget v2, v2, Lcom/alensw/a/bc;->e:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    return-object v2
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
