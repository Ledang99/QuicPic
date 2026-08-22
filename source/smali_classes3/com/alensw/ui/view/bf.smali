.class Lcom/alensw/ui/view/bf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/b/k/k;


# instance fields
.field final synthetic a:Landroid/content/ContentResolver;

.field final synthetic b:Landroid/content/res/Resources;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Lcom/alensw/ui/view/bc;

.field private final f:Ljava/util/ArrayList;

.field private g:Z

.field private h:Z


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/bc;Landroid/content/ContentResolver;Landroid/content/res/Resources;Ljava/lang/String;Z)V
    .locals 2

    iput-object p1, p0, Lcom/alensw/ui/view/bf;->e:Lcom/alensw/ui/view/bc;

    iput-object p2, p0, Lcom/alensw/ui/view/bf;->a:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/alensw/ui/view/bf;->b:Landroid/content/res/Resources;

    iput-object p4, p0, Lcom/alensw/ui/view/bf;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/alensw/ui/view/bf;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/ui/view/bf;->f:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alensw/ui/view/bf;->g:Z

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 12

    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v1, :cond_0

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v10, v9

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, v10, :cond_0

    aget-object v11, v9, v7

    :try_start_0
    iget-object v0, v11, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {v0}, Lcom/alensw/b/j/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v11, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {v0}, Lcom/alensw/b/j/a;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/alensw/ui/view/bf;->a:Landroid/content/ContentResolver;

    sget-object v2, Lcom/alensw/bean/DocumentRoot;->s:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v11, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alensw/bean/DocumentRoot;->a(Ljava/lang/String;Landroid/database/Cursor;)Lcom/alensw/bean/DocumentRoot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/bean/DocumentRoot;->l()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/alensw/bean/DocumentRoot;->l:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alensw/ui/view/bf;->b:Landroid/content/res/Resources;

    iget v3, v0, Lcom/alensw/bean/DocumentRoot;->l:I

    iget-object v4, p0, Lcom/alensw/ui/view/bf;->e:Lcom/alensw/ui/view/bc;

    invoke-static {v4}, Lcom/alensw/ui/view/bc;->b(Lcom/alensw/ui/view/bc;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/alensw/b/l/b;->a(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/alensw/bean/DocumentRoot;->p:Landroid/graphics/drawable/Drawable;

    :cond_2
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_3
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_4
    move-object v1, v6

    :cond_5
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_4
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :cond_7
    return-void

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/view/bf;->e:Lcom/alensw/ui/view/bc;

    invoke-static {v0}, Lcom/alensw/ui/view/bc;->a(Lcom/alensw/ui/view/bc;)Lcom/alensw/PicFolder/GalleryActivity;

    move-result-object v0

    new-instance v1, Lcom/alensw/ui/view/bg;

    invoke-direct {v1, p0}, Lcom/alensw/ui/view/bg;-><init>(Lcom/alensw/ui/view/bf;)V

    invoke-virtual {v0, v1}, Lcom/alensw/PicFolder/GalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()Ljava/lang/Void;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/alensw/ui/view/bf;->e:Lcom/alensw/ui/view/bc;

    invoke-static {v0}, Lcom/alensw/ui/view/bc;->a(Lcom/alensw/ui/view/bc;)Lcom/alensw/PicFolder/GalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/PicFolder/GalleryActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/alensw/ui/view/bf;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/alensw/ui/view/bf;->f:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2}, Lcom/alensw/ui/view/bf;->a(Ljava/util/List;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/alensw/ui/view/bf;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/bf;->e:Lcom/alensw/ui/view/bc;

    iget-object v2, p0, Lcom/alensw/ui/view/bf;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/alensw/ui/view/bc;->b(Ljava/util/ArrayList;)V

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alensw/ui/view/bf;->h:Z

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/ui/view/bf;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected d()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/view/bf;->e:Lcom/alensw/ui/view/bc;

    invoke-static {v0}, Lcom/alensw/ui/view/bc;->c(Lcom/alensw/ui/view/bc;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/alensw/ui/view/bf;->e:Lcom/alensw/ui/view/bc;

    invoke-static {v0}, Lcom/alensw/ui/view/bc;->c(Lcom/alensw/ui/view/bc;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/view/bf;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/alensw/ui/view/bf;->e:Lcom/alensw/ui/view/bc;

    iget-object v1, p0, Lcom/alensw/ui/view/bf;->e:Lcom/alensw/ui/view/bc;

    invoke-static {v1}, Lcom/alensw/ui/view/bc;->c(Lcom/alensw/ui/view/bc;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/bc;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/alensw/ui/view/bf;->e:Lcom/alensw/ui/view/bc;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bc;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/alensw/ui/view/bf;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/bf;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/bf;->e:Lcom/alensw/ui/view/bc;

    iget-object v1, p0, Lcom/alensw/ui/view/bf;->c:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alensw/ui/view/bf;->d:Z

    invoke-virtual {v0, v1, v2}, Lcom/alensw/ui/view/bc;->a(Ljava/lang/String;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/alensw/ui/view/bf;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alensw/ui/view/bf;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alensw/ui/view/bf;->g:Z

    sget-object v0, Lcom/alensw/ui/a/ao;->d:Lcom/alensw/b/k/a;

    invoke-virtual {v0, p0}, Lcom/alensw/b/k/a;->a(Lcom/alensw/b/k/k;)Lcom/alensw/b/k/d;

    goto :goto_0
.end method
