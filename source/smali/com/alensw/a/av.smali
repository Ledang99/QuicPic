.class public Lcom/alensw/a/av;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/b/k/k;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Z

.field private final c:Ljava/util/Set;

.field private final d:Z

.field private final e:Z

.field private final f:Ljava/lang/String;

.field private final g:Lcom/alensw/a/az;

.field private final h:Lcom/alensw/bean/CommonFolder;

.field private final i:Landroid/content/ContentResolver;

.field private final j:Landroid/os/Handler;

.field private volatile k:Z


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/alensw/bean/CommonFolder;ZLjava/util/Set;Landroid/os/Handler;Lcom/alensw/a/az;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "QueryCursorTask"

    iput-object v0, p0, Lcom/alensw/a/av;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alensw/a/av;->b:Z

    iput-object p4, p0, Lcom/alensw/a/av;->c:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/alensw/bean/CommonFolder;->c()I

    move-result v3

    const/high16 v0, 0x10000000

    and-int/2addr v0, v3

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alensw/a/av;->d:Z

    const/high16 v0, 0x20000000

    and-int/2addr v0, v3

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alensw/a/av;->e:Z

    iput-object p1, p0, Lcom/alensw/a/av;->i:Landroid/content/ContentResolver;

    iput-object p5, p0, Lcom/alensw/a/av;->j:Landroid/os/Handler;

    iput-object p6, p0, Lcom/alensw/a/av;->g:Lcom/alensw/a/az;

    invoke-virtual {p2, v2}, Lcom/alensw/bean/CommonFolder;->a(Z)Lcom/alensw/bean/CommonFolder;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/a/av;->h:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {p2}, Lcom/alensw/bean/CommonFolder;->l()I

    move-result v0

    iget-boolean v2, p0, Lcom/alensw/a/av;->d:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    const-string v0, "datetaken ASC"

    iput-object v0, p0, Lcom/alensw/a/av;->f:Ljava/lang/String;

    :goto_2
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    iget-boolean v2, p0, Lcom/alensw/a/av;->d:Z

    if-eqz v2, :cond_3

    if-ne v0, v1, :cond_3

    const-string v0, "datetaken DESC"

    iput-object v0, p0, Lcom/alensw/a/av;->f:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/a/av;->f:Ljava/lang/String;

    goto :goto_2
.end method

.method static synthetic a(Lcom/alensw/a/av;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/av;->i:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic b(Lcom/alensw/a/av;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/a/av;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/alensw/a/av;)Lcom/alensw/bean/CommonFolder;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/av;->h:Lcom/alensw/bean/CommonFolder;

    return-object v0
.end method

.method static synthetic d(Lcom/alensw/a/av;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/av;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alensw/a/av;)Lcom/alensw/a/az;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/av;->g:Lcom/alensw/a/az;

    return-object v0
.end method

.method static synthetic f(Lcom/alensw/a/av;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/av;->j:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alensw/a/av;->k:Z

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()Ljava/lang/Void;
    .locals 9

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/alensw/a/av;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/a/av;->h:Lcom/alensw/bean/CommonFolder;

    iget-object v2, p0, Lcom/alensw/a/av;->i:Landroid/content/ContentResolver;

    invoke-virtual {v0, v2}, Lcom/alensw/bean/CommonFolder;->a(Landroid/content/ContentResolver;)[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/alensw/a/av;->h:Lcom/alensw/bean/CommonFolder;

    iget-object v3, p0, Lcom/alensw/a/av;->i:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/alensw/a/av;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lcom/alensw/bean/CommonFolder;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-boolean v2, p0, Lcom/alensw/a/av;->k:Z

    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v5}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v3, "loading"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v2, v6, :cond_6

    invoke-interface {v5}, Landroid/database/Cursor;->getNotificationUri()Landroid/net/Uri;

    move-result-object v2

    :goto_3
    iget-object v6, p0, Lcom/alensw/a/av;->i:Landroid/content/ContentResolver;

    new-instance v7, Lcom/alensw/a/aw;

    iget-object v8, p0, Lcom/alensw/a/av;->j:Landroid/os/Handler;

    invoke-direct {v7, p0, v8, v0}, Lcom/alensw/a/aw;-><init>(Lcom/alensw/a/av;Landroid/os/Handler;[Ljava/lang/Object;)V

    invoke-virtual {v6, v2, v4, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_3
    iget-boolean v0, p0, Lcom/alensw/a/av;->b:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alensw/a/av;->h:Lcom/alensw/bean/CommonFolder;

    iget-object v2, p0, Lcom/alensw/a/av;->c:Ljava/util/Set;

    invoke-virtual {v0, v5, v2}, Lcom/alensw/bean/CommonFolder;->a(Landroid/database/Cursor;Ljava/util/Set;)V

    :goto_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move v0, v3

    :goto_5
    iget-boolean v2, p0, Lcom/alensw/a/av;->k:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/alensw/a/av;->d:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/alensw/a/av;->h:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v2}, Lcom/alensw/bean/CommonFolder;->m()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/alensw/a/av;->h:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v2}, Lcom/alensw/bean/CommonFolder;->s()V

    :cond_4
    iget-boolean v2, p0, Lcom/alensw/a/av;->k:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alensw/a/av;->j:Landroid/os/Handler;

    new-instance v3, Lcom/alensw/a/ay;

    invoke-direct {v3, p0, v5, v0}, Lcom/alensw/a/ay;-><init>(Lcom/alensw/a/av;Landroid/database/Cursor;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_5
    move v3, v4

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/alensw/a/av;->h:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v2}, Lcom/alensw/bean/CommonFolder;->q()Landroid/net/Uri;

    move-result-object v2

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/alensw/a/av;->h:Lcom/alensw/bean/CommonFolder;

    iget-object v2, p0, Lcom/alensw/a/av;->c:Ljava/util/Set;

    invoke-virtual {v0, v5, v2}, Lcom/alensw/bean/CommonFolder;->b(Landroid/database/Cursor;Ljava/util/Set;)V

    goto :goto_4

    :cond_8
    move v0, v4

    goto :goto_5
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/a/av;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
