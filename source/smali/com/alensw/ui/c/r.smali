.class Lcom/alensw/ui/c/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/b/k/k;


# instance fields
.field final synthetic a:Landroid/content/ContentResolver;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lcom/alensw/ui/c/p;

.field private final e:Ljava/util/ArrayList;

.field private f:Z

.field private g:Z


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/p;Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 2

    iput-object p1, p0, Lcom/alensw/ui/c/r;->d:Lcom/alensw/ui/c/p;

    iput-object p2, p0, Lcom/alensw/ui/c/r;->a:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/alensw/ui/c/r;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/alensw/ui/c/r;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/ui/c/r;->e:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alensw/ui/c/r;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/alensw/ui/c/r;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/r;->e:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method protected a(Ljava/util/ArrayList;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/alensw/ui/c/r;->d:Lcom/alensw/ui/c/p;

    invoke-static {v0}, Lcom/alensw/ui/c/p;->c(Lcom/alensw/ui/c/p;)Lcom/alensw/bean/CommonFolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->r()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move v1, v2

    move v3, v4

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/bean/CommonRoot;

    iget-object v5, p0, Lcom/alensw/ui/c/r;->d:Lcom/alensw/ui/c/p;

    invoke-static {v5}, Lcom/alensw/ui/c/p;->c(Lcom/alensw/ui/c/p;)Lcom/alensw/bean/CommonFolder;

    move-result-object v5

    invoke-virtual {v5, v1, v0}, Lcom/alensw/bean/CommonFolder;->a(ILcom/alensw/bean/CommonFile;)V

    if-ne v3, v4, :cond_0

    iget-object v0, v0, Lcom/alensw/bean/CommonRoot;->n:Ljava/lang/String;

    iget-object v5, p0, Lcom/alensw/ui/c/r;->b:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v3, v1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/r;->d:Lcom/alensw/ui/c/p;

    invoke-static {v0}, Lcom/alensw/ui/c/p;->d(Lcom/alensw/ui/c/p;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/r;->d:Lcom/alensw/ui/c/p;

    iget-object v1, v1, Lcom/alensw/ui/c/p;->f:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/alensw/ui/c/r;->d:Lcom/alensw/ui/c/p;

    invoke-static {v0}, Lcom/alensw/ui/c/p;->d(Lcom/alensw/ui/c/p;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/r;->d:Lcom/alensw/ui/c/p;

    invoke-static {v1}, Lcom/alensw/ui/c/p;->e(Lcom/alensw/ui/c/p;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/alensw/ui/c/r;->d:Lcom/alensw/ui/c/p;

    iget-object v1, p0, Lcom/alensw/ui/c/r;->d:Lcom/alensw/ui/c/p;

    invoke-static {v1}, Lcom/alensw/ui/c/p;->c(Lcom/alensw/ui/c/p;)Lcom/alensw/bean/CommonFolder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/alensw/ui/c/p;->a(Lcom/alensw/bean/CommonFile;Z)V

    if-eq v3, v4, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/r;->d:Lcom/alensw/ui/c/p;

    invoke-static {v0}, Lcom/alensw/ui/c/p;->d(Lcom/alensw/ui/c/p;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/r;->d:Lcom/alensw/ui/c/p;

    invoke-static {v1}, Lcom/alensw/ui/c/p;->d(Lcom/alensw/ui/c/p;)Landroid/widget/ListView;

    move-result-object v1

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/alensw/ui/c/r;->g:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/alensw/ui/c/r;->f:Z

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lcom/alensw/ui/c/r;->f:Z

    sget-object v0, Lcom/alensw/ui/a/ao;->d:Lcom/alensw/b/k/a;

    invoke-virtual {v0, p0}, Lcom/alensw/b/k/a;->a(Lcom/alensw/b/k/k;)Lcom/alensw/b/k/d;

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/alensw/ui/c/r;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/r;->d:Lcom/alensw/ui/c/p;

    invoke-static {v0}, Lcom/alensw/ui/c/p;->f(Lcom/alensw/ui/c/p;)V

    goto :goto_1
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/r;->d:Lcom/alensw/ui/c/p;

    iget-object v0, v0, Lcom/alensw/ui/c/p;->C:Lcom/alensw/ui/c/cx;

    new-instance v1, Lcom/alensw/ui/c/s;

    invoke-direct {v1, p0}, Lcom/alensw/ui/c/s;-><init>(Lcom/alensw/ui/c/r;)V

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/cx;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()Ljava/lang/Void;
    .locals 12

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/alensw/ui/c/r;->d:Lcom/alensw/ui/c/p;

    iget-object v0, v0, Lcom/alensw/ui/c/p;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alensw/ui/c/r;->g:Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v1, :cond_2

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v10, v9

    const/4 v0, 0x0

    move v7, v0

    :goto_1
    if-ge v7, v10, :cond_2

    aget-object v11, v9, v7

    :try_start_1
    iget-object v0, v11, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {v0}, Lcom/alensw/b/j/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v11, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {v0}, Lcom/alensw/b/j/a;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/alensw/ui/c/r;->a:Landroid/content/ContentResolver;

    sget-object v2, Lcom/alensw/bean/DocumentRoot;->s:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :cond_3
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v11, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alensw/bean/DocumentRoot;->a(Ljava/lang/String;Landroid/database/Cursor;)Lcom/alensw/bean/DocumentRoot;

    move-result-object v1

    iget-object v2, v1, Lcom/alensw/bean/DocumentRoot;->n:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/alensw/bean/DocumentRoot;->l()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alensw/ui/c/r;->d:Lcom/alensw/ui/c/p;

    invoke-static {v2}, Lcom/alensw/ui/c/p;->a(Lcom/alensw/ui/c/p;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/alensw/bean/DocumentRoot;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/alensw/ui/c/r;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_4
    iget-object v2, v1, Lcom/alensw/bean/DocumentRoot;->k:Lcom/alensw/cloud/z;

    invoke-static {v2}, Lcom/alensw/cloud/e;->a(Lcom/alensw/cloud/z;)Lcom/alensw/cloud/x;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/alensw/ui/c/r;->d:Lcom/alensw/ui/c/p;

    invoke-static {v3}, Lcom/alensw/ui/c/p;->b(Lcom/alensw/ui/c/p;)[I

    move-result-object v3

    iget v2, v2, Lcom/alensw/cloud/x;->d:I

    invoke-static {v3, v2}, Lcom/alensw/cloud/e;->a([II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alensw/ui/c/r;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/alensw/ui/c/r;->d:Lcom/alensw/ui/c/p;

    invoke-static {v1}, Lcom/alensw/ui/c/p;->a(Lcom/alensw/ui/c/p;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-eqz v1, :cond_3

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_3
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v6

    :goto_4
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :cond_8
    move-object v0, v6

    goto :goto_2
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/ui/c/r;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
