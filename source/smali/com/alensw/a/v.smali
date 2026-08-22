.class Lcom/alensw/a/v;
.super Lcom/alensw/b/k/e;


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public c:Landroid/os/Handler;

.field public d:Z

.field public volatile e:Z

.field final synthetic f:Lcom/alensw/a/u;

.field private h:Lcom/alensw/a/al;

.field private final i:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/alensw/a/u;)V
    .locals 2

    iput-object p1, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    invoke-direct {p0}, Lcom/alensw/b/k/e;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/a/v;->i:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alensw/a/u;Lcom/alensw/a/t;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alensw/a/v;-><init>(Lcom/alensw/a/u;)V

    return-void
.end method

.method private a(Lcom/alensw/a/e;)I
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    const/16 v0, 0x80

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    invoke-virtual {v4, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    :goto_0
    iget-boolean v0, p0, Lcom/alensw/a/v;->e:Z

    if-nez v0, :cond_3

    :cond_0
    :goto_1
    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alensw/a/v;->i:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/alensw/PicFolder/QuickApp;->p:Lcom/alensw/a/bh;

    invoke-virtual {v6, v5}, Lcom/alensw/a/bh;->g(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_1
    invoke-direct {p0, v5, v7, v7}, Lcom/alensw/a/v;->a(Ljava/lang/String;ZZ)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0, v5, v2}, Lcom/alensw/a/v;->a(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/alensw/a/v;->e:Z

    if-eqz v0, :cond_4

    :cond_3
    return v1

    :cond_4
    invoke-direct {p0, v3, v2, v2, v4}, Lcom/alensw/a/v;->a(Ljava/util/ArrayList;ZZLjava/util/Stack;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move v1, v0

    goto :goto_0
.end method

.method private a(Lcom/alensw/a/e;Z)I
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->p:Lcom/alensw/a/bh;

    invoke-virtual {v0, v3}, Lcom/alensw/a/bh;->a(Ljava/lang/String;)Z

    move-result v4

    iget-boolean v0, p0, Lcom/alensw/a/v;->d:Z

    if-nez v0, :cond_2

    move v0, v2

    :goto_0
    if-eqz v4, :cond_0

    move v0, v1

    move p2, v1

    :cond_0
    invoke-virtual {p1}, Lcom/alensw/a/e;->n()V

    if-eqz p2, :cond_3

    iget v4, p1, Lcom/alensw/a/e;->e:I

    invoke-direct {p0, v3, v4}, Lcom/alensw/a/v;->a(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    :goto_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    invoke-static {v1}, Lcom/alensw/a/u;->f(Lcom/alensw/a/u;)Lcom/alensw/a/q;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alensw/a/q;->a(Lcom/alensw/a/e;)I

    move-result v1

    iput v1, p1, Lcom/alensw/a/e;->d:I

    iget-object v1, p1, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0x40

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p1, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    :goto_2
    iget-object v1, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    iget-object v1, v1, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    iget-object v3, p0, Lcom/alensw/a/v;->h:Lcom/alensw/a/al;

    invoke-static {v1, v3, p1, v0, p2}, Lcom/alensw/a/s;->a(Lcom/alensw/a/s;Lcom/alensw/a/al;Lcom/alensw/a/e;ZZ)I

    move-result v1

    if-eqz p2, :cond_1

    if-lez v1, :cond_1

    invoke-virtual {p1, v2}, Lcom/alensw/a/e;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/alensw/a/v;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    iget-object v0, v0, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v0}, Lcom/alensw/a/s;->b(Lcom/alensw/a/s;)Lcom/alensw/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alensw/a/b;->a(Lcom/alensw/a/e;)V

    goto :goto_1

    :cond_4
    iget-object v1, p1, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    iget-object v0, v0, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v0}, Lcom/alensw/a/s;->a(Lcom/alensw/a/s;)Lcom/alensw/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alensw/a/b;->a(Lcom/alensw/a/e;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alensw/a/v;Lcom/alensw/a/e;Z)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alensw/a/v;->a(Lcom/alensw/a/e;Z)I

    move-result v0

    return v0
.end method

.method private a(Ljava/util/ArrayList;ZZLjava/util/Stack;)I
    .locals 9

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alensw/a/e;

    new-instance v0, Lcom/alensw/a/w;

    move-object v1, p0

    move v2, p2

    move-object v5, p4

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/alensw/a/w;-><init>(Lcom/alensw/a/v;ZLcom/alensw/a/e;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/Stack;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/alensw/a/v;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alensw/a/s;->d()Lcom/alensw/b/k/a;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/alensw/b/k/a;->invokeAll(Ljava/util/Collection;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method static synthetic a(Lcom/alensw/a/v;)Lcom/alensw/a/al;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/v;->h:Lcom/alensw/a/al;

    return-object v0
.end method

.method static synthetic a(Lcom/alensw/a/v;Lcom/alensw/a/al;)Lcom/alensw/a/al;
    .locals 0

    iput-object p1, p0, Lcom/alensw/a/v;->h:Lcom/alensw/a/al;

    return-object p1
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 6

    const/4 v2, 0x0

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->o:Lcom/alensw/a/x;

    invoke-virtual {v0}, Lcom/alensw/a/x;->d()Z

    move-result v3

    new-instance v0, Lcom/alensw/b/c/d;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Lcom/alensw/b/c/d;-><init>(I)V

    iget-object v1, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    iget-object v1, v1, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v1}, Lcom/alensw/a/s;->d(Lcom/alensw/a/s;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/b/c/d;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/alensw/b/c/d;->c()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-virtual {v0}, Lcom/alensw/b/c/d;->f()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/alensw/a/v;->a(Ljava/lang/String;ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0, v2}, Lcom/alensw/a/v;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v5, Lcom/alensw/a/e;

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/alensw/jni/JniUtils;->fuGetFileTime(Ljava/lang/String;)I

    move-result v1

    :goto_1
    invoke-direct {v5, v0, v1}, Lcom/alensw/a/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->o:Lcom/alensw/a/x;

    iget-object v0, v0, Lcom/alensw/a/x;->a:Ljava/util/Comparator;

    invoke-static {p1, v0}, Lcom/alensw/b/l/b;->a(Ljava/util/ArrayList;Ljava/util/Comparator;)Z

    return-void
.end method

.method private a(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    iget-object v0, v0, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v0}, Lcom/alensw/a/s;->a(Lcom/alensw/a/s;)Lcom/alensw/a/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alensw/a/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/alensw/a/v;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    iget-object v0, v0, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v0}, Lcom/alensw/a/s;->b(Lcom/alensw/a/s;)Lcom/alensw/a/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alensw/a/b;->a(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Z)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    invoke-static {v2}, Lcom/alensw/a/u;->e(Lcom/alensw/a/u;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    invoke-static {v2}, Lcom/alensw/a/u;->e(Lcom/alensw/a/u;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    invoke-static {v2}, Lcom/alensw/a/u;->e(Lcom/alensw/a/u;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    invoke-static {v5, p1}, Lcom/alensw/b/l/b;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz p2, :cond_2

    invoke-static {p1, v5}, Lcom/alensw/b/l/b;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;ZZ)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    invoke-static {v0}, Lcom/alensw/a/u;->c(Lcom/alensw/a/u;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    invoke-static {v0}, Lcom/alensw/a/u;->c(Lcom/alensw/a/u;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    invoke-static {v0}, Lcom/alensw/a/u;->d(Lcom/alensw/a/u;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    invoke-static {v0}, Lcom/alensw/a/u;->d(Lcom/alensw/a/u;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v2

    :goto_1
    if-ge v0, v4, :cond_4

    aget-object v5, v3, v0

    invoke-static {v5, p1}, Lcom/alensw/b/l/b;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method private b(Lcom/alensw/a/e;)I
    .locals 9

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v7, 0x0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0x40

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p1, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v7}, Lcom/alensw/a/v;->a(Lcom/alensw/a/e;Z)I

    move-result v0

    iget-object v3, p1, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    iput-object v8, p1, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/a/v;->c:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v7, v7, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->o:Lcom/alensw/a/x;

    invoke-virtual {v0}, Lcom/alensw/a/x;->d()Z

    move-result v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_4

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v7, v1}, Lcom/alensw/a/v;->a(Ljava/lang/String;ZZ)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0, v5, v1}, Lcom/alensw/a/v;->a(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_2

    iget v5, v0, Lcom/alensw/a/e;->e:I

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/alensw/a/e;->n()V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->o:Lcom/alensw/a/x;

    iget-object v0, v0, Lcom/alensw/a/x;->a:Ljava/util/Comparator;

    invoke-static {v3, v0}, Lcom/alensw/b/l/b;->a(Ljava/util/ArrayList;Ljava/util/Comparator;)Z

    iget-boolean v0, p0, Lcom/alensw/a/v;->e:Z

    if-nez v0, :cond_5

    invoke-direct {p0, v3, v7, v1, v8}, Lcom/alensw/a/v;->a(Ljava/util/ArrayList;ZZLjava/util/Stack;)I

    move-result v0

    add-int/2addr v0, v1

    :goto_2
    return v0

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method private b()V
    .locals 10

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/alensw/a/v;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    iget-object v1, v1, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v1}, Lcom/alensw/a/s;->a(Lcom/alensw/a/s;)Lcom/alensw/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alensw/a/b;->g()Ljava/util/HashMap;

    move-result-object v5

    iget-object v1, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    iget-object v1, v1, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v1}, Lcom/alensw/a/s;->b(Lcom/alensw/a/s;)Lcom/alensw/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alensw/a/b;->g()Ljava/util/HashMap;

    move-result-object v6

    iget-object v1, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    iget-object v1, v1, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v1}, Lcom/alensw/a/s;->a(Lcom/alensw/a/s;)Lcom/alensw/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alensw/a/b;->d()V

    iget-object v1, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    iget-object v1, v1, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v1}, Lcom/alensw/a/s;->b(Lcom/alensw/a/s;)Lcom/alensw/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alensw/a/b;->d()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alensw/a/e;

    invoke-virtual {v1}, Lcom/alensw/a/e;->h()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alensw/a/a;

    if-eqz v2, :cond_1

    iget-boolean v9, p0, Lcom/alensw/a/v;->d:Z

    if-eqz v9, :cond_0

    invoke-virtual {v1, v3}, Lcom/alensw/a/e;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    iget-object v1, v1, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v1}, Lcom/alensw/a/s;->b(Lcom/alensw/a/s;)Lcom/alensw/a/b;

    move-result-object v1

    invoke-virtual {v1, v8, v2}, Lcom/alensw/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alensw/a/a;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    iget-object v2, v2, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v2}, Lcom/alensw/a/s;->a(Lcom/alensw/a/s;)Lcom/alensw/a/b;

    move-result-object v2

    invoke-virtual {v2, v8, v1}, Lcom/alensw/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    iget-object v1, v1, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v1}, Lcom/alensw/a/s;->a(Lcom/alensw/a/s;)Lcom/alensw/a/b;

    move-result-object v2

    iget-object v1, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    iget-object v1, v1, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v1}, Lcom/alensw/a/s;->a(Lcom/alensw/a/s;)Lcom/alensw/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alensw/a/b;->c()I

    move-result v1

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-eq v1, v5, :cond_4

    move v1, v3

    :goto_1
    invoke-virtual {v2, v1}, Lcom/alensw/a/b;->a(Z)V

    iget-object v1, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    iget-object v1, v1, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v1}, Lcom/alensw/a/s;->b(Lcom/alensw/a/s;)Lcom/alensw/a/b;

    move-result-object v2

    iget-object v1, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    iget-object v1, v1, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v1}, Lcom/alensw/a/s;->b(Lcom/alensw/a/s;)Lcom/alensw/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alensw/a/b;->c()I

    move-result v1

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v5

    if-eq v1, v5, :cond_5

    move v1, v3

    :goto_2
    invoke-virtual {v2, v1}, Lcom/alensw/a/b;->a(Z)V

    iget-boolean v1, p0, Lcom/alensw/a/v;->e:Z

    if-nez v1, :cond_3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v3, v4, v1}, Lcom/alensw/a/v;->a(Ljava/util/ArrayList;ZZLjava/util/Stack;)I

    :cond_3
    return-void

    :cond_4
    move v1, v4

    goto :goto_1

    :cond_5
    move v1, v4

    goto :goto_2
.end method

.method static synthetic b(Lcom/alensw/a/v;)V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/a/v;->b()V

    return-void
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/alensw/b/c/d;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Lcom/alensw/b/c/d;-><init>(I)V

    iget-object v1, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    iget-object v1, v1, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v1}, Lcom/alensw/a/s;->c(Lcom/alensw/a/s;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/b/c/d;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/alensw/b/c/d;->c()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-virtual {v0}, Lcom/alensw/b/c/d;->f()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v4, v3}, Lcom/alensw/a/v;->a(Ljava/lang/String;ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0, v3}, Lcom/alensw/a/v;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/alensw/a/e;

    invoke-direct {v2, v0, v3}, Lcom/alensw/a/e;-><init>(Ljava/lang/String;I)V

    sget-object v0, Lcom/alensw/a/x;->j:Ljava/util/Comparator;

    invoke-static {p1, v2, v0}, Lcom/alensw/b/l/b;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_0

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/alensw/a/am;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v4, v3}, Lcom/alensw/a/v;->a(Ljava/lang/String;ZZ)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v0, v3}, Lcom/alensw/a/v;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/alensw/a/e;

    invoke-direct {v2, v0, v3}, Lcom/alensw/a/e;-><init>(Ljava/lang/String;I)V

    sget-object v0, Lcom/alensw/a/x;->j:Ljava/util/Comparator;

    invoke-static {p1, v2, v0}, Lcom/alensw/b/l/b;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_2

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->o:Lcom/alensw/a/x;

    invoke-virtual {v0}, Lcom/alensw/a/x;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->n()V

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->o:Lcom/alensw/a/x;

    iget-object v0, v0, Lcom/alensw/a/x;->a:Ljava/util/Comparator;

    invoke-static {p1, v0}, Lcom/alensw/b/l/b;->a(Ljava/util/ArrayList;Ljava/util/Comparator;)Z

    return-void
.end method

.method private c()I
    .locals 12

    const/16 v11, 0x80

    const/4 v2, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/alensw/PicFolder/QuickApp;->p:Lcom/alensw/a/bh;

    iget v0, p0, Lcom/alensw/a/v;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    invoke-static {v0}, Lcom/alensw/a/u;->a(Lcom/alensw/a/u;)Lcom/alensw/a/o;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alensw/a/o;->a(Z)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v0, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    invoke-static {v0}, Lcom/alensw/a/u;->a(Lcom/alensw/a/u;)Lcom/alensw/a/o;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alensw/a/o;->a(Z)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v0, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    new-instance v7, Ljava/util/HashMap;

    iget-object v8, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    invoke-static {v8}, Lcom/alensw/a/u;->b(Lcom/alensw/a/u;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0, v7}, Lcom/alensw/a/u;->a(Lcom/alensw/a/u;Ljava/util/HashMap;)Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    invoke-static {v0}, Lcom/alensw/a/u;->b(Lcom/alensw/a/u;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v8, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    invoke-static {v8}, Lcom/alensw/a/u;->c(Lcom/alensw/a/u;)Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v7, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    invoke-static {v7}, Lcom/alensw/a/u;->c(Lcom/alensw/a/u;)Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    invoke-static {v0}, Lcom/alensw/a/u;->c(Lcom/alensw/a/u;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    iget-object v2, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    invoke-static {v2}, Lcom/alensw/a/u;->c(Lcom/alensw/a/u;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/alensw/a/u;->a(Lcom/alensw/a/u;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v0, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    invoke-static {v0}, Lcom/alensw/a/u;->c(Lcom/alensw/a/u;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    invoke-static {v2}, Lcom/alensw/a/u;->d(Lcom/alensw/a/u;)[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/alensw/a/u;->b(Lcom/alensw/a/u;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v0, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    invoke-static {v0}, Lcom/alensw/a/u;->e(Lcom/alensw/a/u;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_4
    if-eqz v1, :cond_11

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v11}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v5, Lcom/alensw/a/e;

    invoke-direct {v5, v0, v3}, Lcom/alensw/a/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5}, Lcom/alensw/a/e;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4, v0}, Lcom/alensw/a/bh;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput v3, v5, Lcom/alensw/a/e;->f:I

    :cond_4
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    invoke-static {v0, v10}, Lcom/alensw/a/u;->a(Lcom/alensw/a/u;Ljava/util/HashMap;)Ljava/util/HashMap;

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    invoke-static {v0, v10}, Lcom/alensw/a/u;->b(Lcom/alensw/a/u;[Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_4

    :cond_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v4}, Lcom/alensw/a/bh;->a()[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    move v0, v3

    :goto_6
    if-ge v0, v4, :cond_9

    aget-object v5, v2, v0

    new-instance v6, Lcom/alensw/a/e;

    invoke-direct {v6, v5, v3}, Lcom/alensw/a/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6}, Lcom/alensw/a/e;->exists()Z

    move-result v5

    if-eqz v5, :cond_8

    iput v3, v6, Lcom/alensw/a/e;->f:I

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-boolean v0, p0, Lcom/alensw/a/v;->d:Z

    if-eqz v0, :cond_e

    invoke-direct {p0, v1}, Lcom/alensw/a/v;->a(Ljava/util/ArrayList;)V

    :goto_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-direct {p0, v1, v3, v3, v10}, Lcom/alensw/a/v;->a(Ljava/util/ArrayList;ZZLjava/util/Stack;)I

    move-result v0

    add-int v2, v3, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v6, "FolderScanner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "prescan: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", used="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v4, v0, v4

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/alensw/a/v;->c:Landroid/os/Handler;

    const/16 v5, 0xe

    invoke-virtual {v4, v5, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    move-wide v4, v0

    move v0, v2

    :goto_8
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_a
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/e;

    iget-boolean v6, p0, Lcom/alensw/a/v;->e:Z

    if-eqz v6, :cond_f

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    const-string v0, "FolderScanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scan: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", used="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/alensw/a/v;->e:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    iget-object v0, v0, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v0}, Lcom/alensw/a/s;->a(Lcom/alensw/a/s;)Lcom/alensw/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/a/b;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    iget-object v0, v0, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v0}, Lcom/alensw/a/s;->a(Lcom/alensw/a/s;)Lcom/alensw/a/b;

    move-result-object v0

    iget-object v2, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    iget-object v2, v2, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v2}, Lcom/alensw/a/s;->c(Lcom/alensw/a/s;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alensw/a/b;->b(Ljava/io/File;)V

    :cond_c
    iget-boolean v0, p0, Lcom/alensw/a/v;->d:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    iget-object v0, v0, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v0}, Lcom/alensw/a/s;->b(Lcom/alensw/a/s;)Lcom/alensw/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/a/b;->e()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    iget-object v0, v0, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v0}, Lcom/alensw/a/s;->b(Lcom/alensw/a/s;)Lcom/alensw/a/b;

    move-result-object v0

    iget-object v2, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    iget-object v2, v2, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v2}, Lcom/alensw/a/s;->d(Lcom/alensw/a/s;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alensw/a/b;->b(Ljava/io/File;)V

    :cond_d
    :goto_a
    iget-object v0, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    invoke-static {v0, v10}, Lcom/alensw/a/u;->a(Lcom/alensw/a/u;Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-object v0, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    invoke-static {v0, v10}, Lcom/alensw/a/u;->a(Lcom/alensw/a/u;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v0, p0, Lcom/alensw/a/v;->f:Lcom/alensw/a/u;

    invoke-static {v0, v10}, Lcom/alensw/a/u;->b(Lcom/alensw/a/u;[Ljava/lang/String;)[Ljava/lang/String;

    return v1

    :cond_e
    invoke-direct {p0, v1}, Lcom/alensw/a/v;->b(Ljava/util/ArrayList;)V

    goto/16 :goto_7

    :cond_f
    iget-boolean v6, p0, Lcom/alensw/a/v;->d:Z

    if-nez v6, :cond_10

    invoke-virtual {v0, v3}, Lcom/alensw/a/e;->a(Z)Z

    move-result v6

    if-nez v6, :cond_a

    :cond_10
    invoke-direct {p0, v0}, Lcom/alensw/a/v;->a(Lcom/alensw/a/e;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto/16 :goto_9

    :cond_11
    iget-object v0, p0, Lcom/alensw/a/v;->b:Ljava/lang/Object;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/alensw/a/v;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/alensw/a/e;

    invoke-direct {v1, v0, v3}, Lcom/alensw/a/e;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/alensw/a/v;->b(Lcom/alensw/a/e;)I

    move-result v0

    add-int v1, v3, v0

    goto :goto_a

    :cond_12
    move v1, v3

    goto :goto_a

    :cond_13
    move v0, v3

    goto/16 :goto_8
.end method

.method static synthetic c(Lcom/alensw/a/v;)I
    .locals 1

    invoke-direct {p0}, Lcom/alensw/a/v;->c()I

    move-result v0

    return v0
.end method
