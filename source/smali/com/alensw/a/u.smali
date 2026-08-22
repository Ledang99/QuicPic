.class Lcom/alensw/a/u;
.super Lcom/alensw/b/k/g;


# instance fields
.field final synthetic a:Lcom/alensw/a/s;

.field private b:Landroid/os/Handler;

.field private c:Lcom/alensw/a/o;

.field private d:Lcom/alensw/a/q;

.field private e:Ljava/util/HashMap;

.field private f:[Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private final h:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(Lcom/alensw/a/s;)V
    .locals 2

    iput-object p1, p0, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-direct {p0}, Lcom/alensw/b/k/g;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/alensw/a/s;->a:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/a/u;->h:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alensw/a/s;Lcom/alensw/a/t;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alensw/a/u;-><init>(Lcom/alensw/a/s;)V

    return-void
.end method

.method static synthetic a(Lcom/alensw/a/u;)Lcom/alensw/a/o;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/u;->c:Lcom/alensw/a/o;

    return-object v0
.end method

.method static synthetic a(Lcom/alensw/a/u;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    iput-object p1, p0, Lcom/alensw/a/u;->e:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic a(Lcom/alensw/a/u;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alensw/a/u;->f:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alensw/a/u;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/u;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/alensw/a/u;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alensw/a/u;->g:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/alensw/a/u;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/u;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic d(Lcom/alensw/a/u;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/u;->f:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alensw/a/u;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/u;->g:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alensw/a/u;)Lcom/alensw/a/q;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/u;->d:Lcom/alensw/a/q;

    return-object v0
.end method


# virtual methods
.method protected varargs a(III[Ljava/lang/Object;)Lcom/alensw/b/k/e;
    .locals 3

    new-instance v1, Lcom/alensw/a/v;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/alensw/a/v;-><init>(Lcom/alensw/a/u;Lcom/alensw/a/t;)V

    iput p1, v1, Lcom/alensw/a/v;->a:I

    const/4 v0, 0x0

    aget-object v0, p4, v0

    iput-object v0, v1, Lcom/alensw/a/v;->b:Ljava/lang/Object;

    const/4 v0, 0x1

    aget-object v0, p4, v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, v1, Lcom/alensw/a/v;->c:Landroid/os/Handler;

    iget-object v0, p0, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    iget-boolean v0, v0, Lcom/alensw/a/s;->b:Z

    iput-boolean v0, v1, Lcom/alensw/a/v;->d:Z

    iget v0, v1, Lcom/alensw/a/v;->a:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    new-instance v0, Lcom/alensw/a/al;

    invoke-direct {v0}, Lcom/alensw/a/al;-><init>()V

    invoke-static {v1, v0}, Lcom/alensw/a/v;->a(Lcom/alensw/a/v;Lcom/alensw/a/al;)Lcom/alensw/a/al;

    invoke-static {v1}, Lcom/alensw/a/v;->a(Lcom/alensw/a/v;)Lcom/alensw/a/al;

    move-result-object v0

    iget-object v2, p0, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v2}, Lcom/alensw/a/s;->f(Lcom/alensw/a/s;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alensw/a/al;->a(Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method public a()V
    .locals 11

    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v0}, Lcom/alensw/a/s;->e(Lcom/alensw/a/s;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/a/o;->a(Landroid/content/Context;)Lcom/alensw/a/o;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/a/u;->c:Lcom/alensw/a/o;

    iget-object v0, p0, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v0}, Lcom/alensw/a/s;->e(Lcom/alensw/a/s;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/a/q;->a(Landroid/content/Context;)Lcom/alensw/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/a/u;->d:Lcom/alensw/a/q;

    iget-object v0, p0, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v0}, Lcom/alensw/a/s;->e(Lcom/alensw/a/s;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/a/n;->a(Landroid/content/Context;)Lcom/alensw/a/n;

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->p:Lcom/alensw/a/bh;

    invoke-virtual {v0}, Lcom/alensw/a/bh;->a()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    sget-object v6, Lcom/alensw/a/s;->a:[Ljava/lang/String;

    array-length v7, v6

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_1

    aget-object v8, v6, v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-char v10, Ljava/io/File;->separatorChar:C

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/alensw/a/u;->h:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/alensw/a/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/alensw/a/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/tencent/MicroMsg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/alensw/a/e;-><init>(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-virtual {v2, v0, v1}, Lcom/alensw/a/s;->a(Lcom/alensw/a/e;Z)I

    move-result v1

    if-lez v1, :cond_4

    iget-object v0, v0, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    if-le v3, v4, :cond_3

    invoke-static {v2}, Lcom/alensw/b/l/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/alensw/a/u;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method protected a(Lcom/alensw/b/k/e;)V
    .locals 2

    const/4 v1, 0x1

    check-cast p1, Lcom/alensw/a/v;

    iput-boolean v1, p1, Lcom/alensw/a/v;->e:Z

    invoke-static {p1}, Lcom/alensw/a/v;->a(Lcom/alensw/a/v;)Lcom/alensw/a/al;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/alensw/a/v;->a(Lcom/alensw/a/v;)Lcom/alensw/a/al;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alensw/a/al;->a(Z)V

    :cond_0
    return-void
.end method

.method protected b(Lcom/alensw/b/k/e;)I
    .locals 8

    const/16 v7, 0xb

    const/16 v6, 0xa

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    check-cast p1, Lcom/alensw/a/v;

    iget-object v0, p1, Lcom/alensw/a/v;->c:Landroid/os/Handler;

    iput-object v0, p0, Lcom/alensw/a/u;->b:Landroid/os/Handler;

    iget v0, p1, Lcom/alensw/a/v;->a:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/a/u;->b:Landroid/os/Handler;

    return v2

    :pswitch_0
    iget-object v0, p0, Lcom/alensw/a/u;->b:Landroid/os/Handler;

    iget v3, p1, Lcom/alensw/a/v;->a:I

    invoke-virtual {v0, v6, v3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-static {p1}, Lcom/alensw/a/v;->b(Lcom/alensw/a/v;)V

    iget-boolean v0, p1, Lcom/alensw/a/v;->e:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/alensw/a/u;->b:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v3, p0, Lcom/alensw/a/u;->b:Landroid/os/Handler;

    iget v4, p1, Lcom/alensw/a/v;->a:I

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v7, v4, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :pswitch_1
    iget v0, p1, Lcom/alensw/a/v;->a:I

    if-ne v0, v4, :cond_6

    move v3, v1

    :goto_3
    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v0}, Lcom/alensw/a/s;->g(Lcom/alensw/a/s;)Lcom/alensw/b/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/b/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v0}, Lcom/alensw/a/s;->g(Lcom/alensw/a/s;)Lcom/alensw/b/c/d;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v5}, Lcom/alensw/a/s;->h(Lcom/alensw/a/s;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    iget v5, v5, Lcom/alensw/a/s;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alensw/b/c/d;->d(Ljava/lang/String;)Z

    :cond_4
    iget-object v0, p0, Lcom/alensw/a/u;->b:Landroid/os/Handler;

    iget v4, p1, Lcom/alensw/a/v;->a:I

    invoke-virtual {v0, v6, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-static {p1}, Lcom/alensw/a/v;->c(Lcom/alensw/a/v;)I

    iget-boolean v0, p1, Lcom/alensw/a/v;->e:Z

    if-nez v0, :cond_7

    move v0, v1

    :goto_4
    if-nez v0, :cond_5

    iget-object v4, p0, Lcom/alensw/a/u;->b:Landroid/os/Handler;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    iget-object v4, p0, Lcom/alensw/a/u;->b:Landroid/os/Handler;

    iget v5, p1, Lcom/alensw/a/v;->a:I

    if-eqz v0, :cond_8

    :goto_5
    invoke-virtual {v4, v7, v5, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v0}, Lcom/alensw/a/s;->g(Lcom/alensw/a/s;)Lcom/alensw/b/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/b/c/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v0}, Lcom/alensw/a/s;->g(Lcom/alensw/a/s;)Lcom/alensw/b/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/b/c/d;->h()V

    goto/16 :goto_0

    :cond_6
    move v3, v2

    goto :goto_3

    :cond_7
    move v0, v2

    goto :goto_4

    :cond_8
    move v1, v2

    goto :goto_5

    :pswitch_2
    iget-object v0, p1, Lcom/alensw/a/v;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v1}, Lcom/alensw/a/s;->a(Lcom/alensw/a/s;)Lcom/alensw/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alensw/a/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v1}, Lcom/alensw/a/s;->b(Lcom/alensw/a/s;)Lcom/alensw/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alensw/a/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v1}, Lcom/alensw/a/s;->g(Lcom/alensw/a/s;)Lcom/alensw/b/c/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alensw/b/c/d;->c(Ljava/lang/String;)Ljava/lang/Object;

    :cond_9
    iget-object v0, p0, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v0}, Lcom/alensw/a/s;->a(Lcom/alensw/a/s;)Lcom/alensw/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/a/b;->h()V

    iget-object v0, p0, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v0}, Lcom/alensw/a/s;->b(Lcom/alensw/a/s;)Lcom/alensw/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/a/b;->h()V

    iget-object v0, p0, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v0}, Lcom/alensw/a/s;->g(Lcom/alensw/a/s;)Lcom/alensw/b/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/b/c/d;->h()V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v0}, Lcom/alensw/a/s;->a(Lcom/alensw/a/s;)Lcom/alensw/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/a/b;->d()V

    iget-object v0, p0, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v0}, Lcom/alensw/a/s;->b(Lcom/alensw/a/s;)Lcom/alensw/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/a/b;->d()V

    iget-object v0, p0, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v0}, Lcom/alensw/a/s;->g(Lcom/alensw/a/s;)Lcom/alensw/b/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/b/c/d;->d()V

    iget-object v0, p0, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v0}, Lcom/alensw/a/s;->c(Lcom/alensw/a/s;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/b/l/b;->c(Ljava/io/File;)Z

    iget-object v0, p0, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v0}, Lcom/alensw/a/s;->d(Lcom/alensw/a/s;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/b/l/b;->c(Ljava/io/File;)Z

    :goto_6
    if-gt v1, v4, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alensw/a/u;->a:Lcom/alensw/a/s;

    invoke-static {v3}, Lcom/alensw/a/s;->h(Lcom/alensw/a/s;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/b/l/b;->i(Ljava/lang/String;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
