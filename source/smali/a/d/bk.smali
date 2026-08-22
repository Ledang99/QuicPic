.class public final La/d/bk;
.super Ljava/lang/Object;


# static fields
.field static a:[La/b/g;

.field private static final i:Ljava/lang/String;

.field private static final j:Ljava/lang/String;

.field private static final k:Ljava/lang/String;


# instance fields
.field b:I

.field c:I

.field d:Ljava/util/Vector;

.field e:La/d/bm;

.field f:La/d/t;

.field g:J

.field h:Ljava/lang/String;

.field private l:La/a;

.field private m:I

.field private n:I

.field private o:Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, La/d/bk;->i:Ljava/lang/String;

    sput-object v0, La/d/bk;->j:Ljava/lang/String;

    sput-object v0, La/d/bk;->k:Ljava/lang/String;

    sput-object v0, La/d/bk;->a:[La/b/g;

    return-void
.end method

.method constructor <init>(La/a;ILjava/net/InetAddress;ILa/d/t;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/d/bk;->e:La/d/bm;

    iput-object v0, p0, La/d/bk;->h:Ljava/lang/String;

    iput-object p1, p0, La/d/bk;->l:La/a;

    iput p2, p0, La/d/bk;->m:I

    iput-object p3, p0, La/d/bk;->o:Ljava/net/InetAddress;

    iput p4, p0, La/d/bk;->n:I

    iput-object p5, p0, La/d/bk;->f:La/d/t;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, La/d/bk;->d:Ljava/util/Vector;

    const/4 v0, 0x0

    iput v0, p0, La/d/bk;->b:I

    return-void
.end method


# virtual methods
.method declared-synchronized a()La/d/bm;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/d/bk;->e:La/d/bm;

    if-nez v0, :cond_0

    iget-object v0, p0, La/d/bk;->l:La/a;

    iget v1, p0, La/d/bk;->m:I

    iget-object v2, p0, La/d/bk;->o:Ljava/net/InetAddress;

    iget v3, p0, La/d/bk;->n:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, La/d/bm;->a(La/a;ILjava/net/InetAddress;ILjava/lang/String;)La/d/bm;

    move-result-object v0

    iput-object v0, p0, La/d/bk;->e:La/d/bm;

    :cond_0
    iget-object v0, p0, La/d/bk;->e:La/d/bm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)La/d/bo;
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "IPC$"

    :cond_0
    iget-object v0, p0, La/d/bk;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/d/bo;

    invoke-virtual {v0, p1, p2}, La/d/bo;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    new-instance v0, La/d/bo;

    invoke-direct {v0, p0, p1, p2}, La/d/bo;-><init>(La/d/bk;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, La/d/bk;->d:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(La/d/u;La/d/u;)V
    .locals 8

    invoke-virtual {p0}, La/d/bk;->a()La/d/bm;

    move-result-object v3

    monitor-enter v3

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p2, La/d/u;->u:Z

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x88b8

    add-long/2addr v4, v6

    iput-wide v4, p0, La/d/bk;->g:J

    invoke-virtual {p0, p1, p2}, La/d/bk;->b(La/d/u;La/d/u;)V

    if-eqz p2, :cond_1

    iget-boolean v2, p2, La/d/u;->u:Z

    if-eqz v2, :cond_1

    monitor-exit v3

    :goto_0
    return-void

    :cond_1
    instance-of v2, p1, La/d/au;

    if-eqz v2, :cond_2

    move-object v0, p1

    check-cast v0, La/d/au;

    move-object v2, v0

    iget-object v4, p0, La/d/bk;->h:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v2, La/d/au;->b:Ljava/lang/String;

    const-string v5, "\\IPC$"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\\\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, La/d/bk;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\\IPC$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, La/d/au;->b:Ljava/lang/String;

    :cond_2
    iget v2, p0, La/d/bk;->c:I

    iput v2, p1, La/d/u;->p:I

    iget-object v2, p0, La/d/bk;->f:La/d/t;

    iput-object v2, p1, La/d/u;->z:La/d/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, La/d/bk;->e:La/d/bm;

    invoke-virtual {v2, p1, p2}, La/d/bm;->b(La/d/u;La/d/u;)V
    :try_end_1
    .catch La/d/bc; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catch_0
    move-exception v2

    :try_start_3
    instance-of v4, p1, La/d/au;

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, La/d/bk;->a(Z)V

    :cond_3
    const/4 v4, 0x0

    iput-object v4, p1, La/d/u;->B:La/d/v;

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method a(Z)V
    .locals 4

    invoke-virtual {p0}, La/d/bk;->a()La/d/bm;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget v0, p0, La/d/bk;->b:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, La/d/bk;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, La/d/bk;->h:Ljava/lang/String;

    iget-object v0, p0, La/d/bk;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/d/bo;

    invoke-virtual {v0, p1}, La/d/bo;->a(Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    if-nez p1, :cond_2

    :try_start_1
    iget-object v0, p0, La/d/bk;->e:La/d/bm;

    iget-object v0, v0, La/d/bm;->s:La/d/bn;

    iget v0, v0, La/d/bn;->g:I

    if-eqz v0, :cond_2

    new-instance v0, La/d/ad;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, La/d/ad;-><init>(La/d/u;)V

    iget v2, p0, La/d/bk;->c:I

    iput v2, v0, La/d/ad;->p:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, La/d/bk;->e:La/d/bm;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, La/d/bm;->b(La/d/u;La/d/u;)V
    :try_end_2
    .catch La/d/bc; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    const/4 v0, 0x0

    :try_start_3
    iput v0, p0, La/d/bk;->c:I

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, La/d/bk;->b:I

    iget-object v0, p0, La/d/bk;->e:La/d/bm;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method a(La/d/t;)Z
    .locals 1

    iget-object v0, p0, La/d/bk;->f:La/d/t;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, La/d/bk;->f:La/d/t;

    invoke-virtual {v0, p1}, La/d/t;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(La/d/u;La/d/u;)V
    .locals 11

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, La/d/bk;->a()La/d/bm;

    move-result-object v7

    monitor-enter v7

    const/16 v1, 0xa

    :goto_0
    :try_start_0
    iget v0, p0, La/d/bk;->b:I

    if-eqz v0, :cond_2

    iget v0, p0, La/d/bk;->b:I

    if-eq v0, v6, :cond_0

    iget v0, p0, La/d/bk;->b:I

    const/4 v5, 0x3

    if-ne v0, v5, :cond_1

    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, La/d/bk;->e:La/d/bm;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, La/d/bc;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, La/d/bc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    const/4 v0, 0x1

    :try_start_3
    iput v0, p0, La/d/bk;->b:I

    const/4 v0, 0x0

    new-array v0, v0, [B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v5, p0, La/d/bk;->e:La/d/bm;

    invoke-virtual {v5}, La/d/bm;->b()V

    iget-object v5, p0, La/d/bk;->e:La/d/bm;

    sget-object v5, La/d/bm;->c:La/e/e;

    sget v5, La/e/e;->a:I

    const/4 v6, 0x4

    if-lt v5, v6, :cond_3

    iget-object v5, p0, La/d/bk;->e:La/d/bm;

    sget-object v5, La/d/bm;->c:La/e/e;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sessionSetup: accountName="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, La/d/bk;->f:La/d/t;

    iget-object v8, v8, La/d/t;->i:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ",primaryDomain="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, La/d/bk;->f:La/d/t;

    iget-object v8, v8, La/d/t;->h:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, La/e/e;->println(Ljava/lang/String;)V

    :cond_3
    const/4 v5, 0x0

    iput v5, p0, La/d/bk;->c:I

    move-object v5, v0

    move v6, v1

    move-object v1, v4

    :goto_2
    sparse-switch v6, :sswitch_data_0

    new-instance v0, La/d/bc;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected session setup state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/d/bc;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch La/d/bc; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_1
    move-exception v0

    const/4 v1, 0x1

    :try_start_5
    invoke-virtual {p0, v1}, La/d/bk;->a(Z)V

    const/4 v1, 0x0

    iput v1, p0, La/d/bk;->b:I

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_6
    iget-object v1, p0, La/d/bk;->e:La/d/bm;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :sswitch_0
    :try_start_7
    iget-object v0, p0, La/d/bk;->f:La/d/t;

    sget-object v6, La/d/t;->d:La/d/t;

    if-eq v0, v6, :cond_4

    iget-object v0, p0, La/d/bk;->e:La/d/bm;

    const/high16 v6, -0x80000000

    invoke-virtual {v0, v6}, La/d/bm;->a(I)Z
    :try_end_7
    .catch La/d/bc; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v0

    if-eqz v0, :cond_4

    const/16 v6, 0x14

    move-object v0, v5

    move-object v5, v1

    move v1, v6

    :goto_3
    if-nez v1, :cond_13

    :try_start_8
    iget-object v0, p0, La/d/bk;->e:La/d/bm;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    :cond_4
    :try_start_9
    new-instance v6, La/d/aq;

    iget-object v0, p0, La/d/bk;->f:La/d/t;

    invoke-direct {v6, p0, p1, v0}, La/d/aq;-><init>(La/d/bk;La/d/u;Ljava/lang/Object;)V

    new-instance v8, La/d/ar;

    invoke-direct {v8, p2}, La/d/ar;-><init>(La/d/u;)V

    iget-object v0, p0, La/d/bk;->e:La/d/bm;

    iget-object v9, p0, La/d/bk;->f:La/d/t;

    invoke-virtual {v0, v9}, La/d/bm;->b(La/d/t;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, La/d/bk;->f:La/d/t;

    iget-boolean v0, v0, La/d/t;->m:Z

    if-eqz v0, :cond_6

    sget-object v0, La/d/t;->c:Ljava/lang/String;

    const-string v9, ""

    if-eq v0, v9, :cond_6

    iget-object v0, p0, La/d/bk;->e:La/d/bm;

    sget-object v9, La/d/t;->g:La/d/t;

    invoke-virtual {v0, v9}, La/d/bm;->a(La/d/t;)La/d/bk;

    move-result-object v0

    sget-object v9, La/d/bk;->i:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, La/d/bk;->a(Ljava/lang/String;Ljava/lang/String;)La/d/bo;

    move-result-object v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, La/d/bo;->b(La/d/u;La/d/u;)V

    :cond_5
    :goto_4
    iget-object v0, p0, La/d/bk;->f:La/d/t;

    iput-object v0, v6, La/d/aq;->z:La/d/t;
    :try_end_9
    .catch La/d/bc; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    iget-object v0, p0, La/d/bk;->e:La/d/bm;

    invoke-virtual {v0, v6, v8}, La/d/bm;->b(La/d/u;La/d/u;)V
    :try_end_a
    .catch La/d/w; {:try_start_a .. :try_end_a} :catch_2
    .catch La/d/bc; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object v0, v4

    :goto_5
    :try_start_b
    iget-boolean v4, v8, La/d/ar;->b:Z

    if-eqz v4, :cond_7

    const-string v4, "GUEST"

    iget-object v9, p0, La/d/bk;->f:La/d/t;

    iget-object v9, v9, La/d/t;->i:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, La/d/bk;->e:La/d/bm;

    iget-object v4, v4, La/d/bm;->s:La/d/bn;

    iget v4, v4, La/d/bn;->g:I

    if-eqz v4, :cond_7

    iget-object v4, p0, La/d/bk;->f:La/d/t;

    sget-object v9, La/d/t;->d:La/d/t;

    if-eq v4, v9, :cond_7

    new-instance v0, La/d/w;

    const v1, -0x3fffff93    # -2.000026f

    invoke-direct {v0, v1}, La/d/w;-><init>(I)V

    throw v0

    :cond_6
    iget-object v0, p0, La/d/bk;->f:La/d/t;

    iget-object v9, p0, La/d/bk;->e:La/d/bm;

    iget-object v9, v9, La/d/bm;->s:La/d/bn;

    iget-object v9, v9, La/d/bn;->p:[B

    invoke-virtual {v0, v9}, La/d/t;->c([B)[B

    move-result-object v0

    new-instance v9, La/d/v;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10}, La/d/v;-><init>([BZ)V

    iput-object v9, v6, La/d/aq;->B:La/d/v;

    goto :goto_4

    :catch_2
    move-exception v0

    throw v0

    :cond_7
    if-eqz v0, :cond_8

    throw v0

    :cond_8
    iget v4, v8, La/d/ar;->p:I

    iput v4, p0, La/d/bk;->c:I

    iget-object v4, v6, La/d/aq;->B:La/d/v;

    if-eqz v4, :cond_9

    iget-object v4, p0, La/d/bk;->e:La/d/bm;

    iget-object v6, v6, La/d/aq;->B:La/d/v;

    iput-object v6, v4, La/d/bm;->q:La/d/v;

    :cond_9
    const/4 v4, 0x2

    iput v4, p0, La/d/bk;->b:I

    move-object v4, v0

    move-object v0, v5

    move-object v5, v1

    move v1, v3

    goto/16 :goto_3

    :sswitch_1
    if-nez v1, :cond_a

    iget-object v0, p0, La/d/bk;->e:La/d/bm;

    iget v0, v0, La/d/bm;->t:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    move v1, v2

    :goto_6
    new-instance v0, La/d/s;

    iget-object v8, p0, La/d/bk;->f:La/d/t;

    invoke-direct {v0, v8, v1}, La/d/s;-><init>(La/d/t;Z)V

    move-object v1, v0

    :cond_a
    sget-object v0, La/d/bm;->c:La/e/e;

    sget v0, La/e/e;->a:I

    const/4 v8, 0x4

    if-lt v0, v8, :cond_b

    sget-object v0, La/d/bm;->c:La/e/e;

    invoke-virtual {v0, v1}, La/e/e;->println(Ljava/lang/Object;)V

    :cond_b
    invoke-virtual {v1}, La/d/s;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v1}, La/d/s;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/d/bk;->h:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, La/d/bk;->b:I
    :try_end_b
    .catch La/d/bc; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-object v0, v5

    move-object v5, v1

    move v1, v3

    goto/16 :goto_3

    :cond_c
    move v1, v3

    goto :goto_6

    :cond_d
    const/4 v0, 0x0

    :try_start_c
    array-length v8, v5

    invoke-virtual {v1, v5, v0, v8}, La/d/s;->a([BII)[B
    :try_end_c
    .catch La/d/bc; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result-object v5

    if-eqz v5, :cond_12

    :try_start_d
    new-instance v8, La/d/aq;

    const/4 v0, 0x0

    invoke-direct {v8, p0, v0, v5}, La/d/aq;-><init>(La/d/bk;La/d/u;Ljava/lang/Object;)V

    new-instance v5, La/d/ar;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, La/d/ar;-><init>(La/d/u;)V

    iget-object v0, p0, La/d/bk;->e:La/d/bm;

    iget-object v9, p0, La/d/bk;->f:La/d/t;

    invoke-virtual {v0, v9}, La/d/bm;->b(La/d/t;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v1}, La/d/s;->b()[B

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v9, La/d/v;

    const/4 v10, 0x1

    invoke-direct {v9, v0, v10}, La/d/v;-><init>([BZ)V

    iput-object v9, v8, La/d/aq;->B:La/d/v;

    :cond_e
    iget v0, p0, La/d/bk;->c:I

    iput v0, v8, La/d/aq;->p:I

    const/4 v0, 0x0

    iput v0, p0, La/d/bk;->c:I
    :try_end_d
    .catch La/d/bc; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    iget-object v0, p0, La/d/bk;->e:La/d/bm;

    invoke-virtual {v0, v8, v5}, La/d/bm;->b(La/d/u;La/d/u;)V
    :try_end_e
    .catch La/d/w; {:try_start_e .. :try_end_e} :catch_4
    .catch La/d/bc; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :goto_7
    :try_start_f
    iget-boolean v0, v5, La/d/ar;->b:Z

    if-eqz v0, :cond_f

    const-string v0, "GUEST"

    iget-object v9, p0, La/d/bk;->f:La/d/t;

    iget-object v9, v9, La/d/t;->i:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, La/d/w;

    const v1, -0x3fffff93    # -2.000026f

    invoke-direct {v0, v1}, La/d/w;-><init>(I)V

    throw v0
    :try_end_f
    .catch La/d/bc; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :catch_3
    move-exception v0

    :try_start_10
    iget-object v1, p0, La/d/bk;->e:La/d/bm;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, La/d/bm;->b(Z)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7
    .catch La/d/bc; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :goto_8
    const/4 v1, 0x0

    :try_start_11
    iput v1, p0, La/d/bk;->c:I

    throw v0

    :catch_4
    move-exception v0

    throw v0
    :try_end_11
    .catch La/d/bc; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :catch_5
    move-exception v0

    :try_start_12
    iget-object v4, p0, La/d/bk;->e:La/d/bm;

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, La/d/bm;->b(Z)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6
    .catch La/d/bc; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    move-object v4, v0

    goto :goto_7

    :catch_6
    move-exception v4

    move-object v4, v0

    goto :goto_7

    :cond_f
    if-eqz v4, :cond_10

    :try_start_13
    throw v4

    :cond_10
    iget v0, v5, La/d/ar;->p:I

    iput v0, p0, La/d/bk;->c:I

    iget-object v0, v8, La/d/aq;->B:La/d/v;

    if-eqz v0, :cond_11

    iget-object v0, p0, La/d/bk;->e:La/d/bm;

    iget-object v8, v8, La/d/aq;->B:La/d/v;

    iput-object v8, v0, La/d/bm;->q:La/d/v;

    :cond_11
    iget-object v5, v5, La/d/ar;->c:[B
    :try_end_13
    .catch La/d/bc; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    move-object v0, v5

    move-object v5, v1

    move v1, v6

    goto/16 :goto_3

    :catch_7
    move-exception v1

    goto :goto_8

    :catch_8
    move-exception v0

    goto/16 :goto_5

    :cond_12
    move-object v0, v5

    move-object v5, v1

    move v1, v6

    goto/16 :goto_3

    :cond_13
    move v6, v1

    move-object v1, v5

    move-object v5, v0

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method
