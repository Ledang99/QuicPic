.class La/d/bo;
.super Ljava/lang/Object;


# static fields
.field private static j:I


# instance fields
.field a:I

.field b:I

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:La/d/bk;

.field g:Z

.field h:Z

.field i:I


# direct methods
.method constructor <init>(La/d/bk;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "?????"

    iput-object v0, p0, La/d/bo;->d:Ljava/lang/String;

    iput-object p1, p0, La/d/bo;->f:La/d/bk;

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/d/bo;->c:Ljava/lang/String;

    if-eqz p3, :cond_0

    const-string v0, "??"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p3, p0, La/d/bo;->d:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, La/d/bo;->d:Ljava/lang/String;

    iput-object v0, p0, La/d/bo;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, La/d/bo;->a:I

    return-void
.end method


# virtual methods
.method a(La/d/u;La/d/u;)V
    .locals 5

    iget-object v1, p0, La/d/bo;->f:La/d/bk;

    invoke-virtual {v1}, La/d/bk;->a()La/d/bm;

    move-result-object v2

    monitor-enter v2

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p2, La/d/u;->u:Z

    :cond_0
    invoke-virtual {p0, p1, p2}, La/d/bo;->b(La/d/u;La/d/u;)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_2

    iget-boolean v1, p2, La/d/u;->u:Z

    if-eqz v1, :cond_2

    :cond_1
    monitor-exit v2

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, La/d/bo;->d:Ljava/lang/String;

    const-string v3, "A:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-byte v1, p1, La/d/u;->g:B

    sparse-switch v1, :sswitch_data_0

    new-instance v1, La/d/bc;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid operation for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, La/d/bo;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " service"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, La/d/bc;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :sswitch_0
    :try_start_1
    move-object v0, p1

    check-cast v0, La/d/as;

    move-object v1, v0

    iget-byte v1, v1, La/d/as;->S:B

    and-int/lit16 v1, v1, 0xff

    sparse-switch v1, :sswitch_data_1

    new-instance v1, La/d/bc;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid operation for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, La/d/bo;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " service"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, La/d/bc;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :sswitch_1
    iget v1, p0, La/d/bo;->b:I

    iput v1, p1, La/d/u;->n:I

    iget-boolean v1, p0, La/d/bo;->g:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, La/d/bo;->d:Ljava/lang/String;

    const-string v3, "IPC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p1, La/d/u;->A:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p1, La/d/u;->A:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    const/16 v1, 0x1000

    iput v1, p1, La/d/u;->m:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, La/d/bo;->f:La/d/bk;

    invoke-virtual {v3}, La/d/bk;->a()La/d/bm;

    move-result-object v3

    iget-object v3, v3, La/d/bm;->A:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x5c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, La/d/bo;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, La/d/u;->A:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, La/d/u;->A:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :try_start_2
    iget-object v1, p0, La/d/bo;->f:La/d/bk;

    invoke-virtual {v1, p1, p2}, La/d/bk;->a(La/d/u;La/d/u;)V
    :try_end_2
    .catch La/d/bc; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v2

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, La/d/bc;->a()I

    move-result v3

    const v4, -0x3fffff37    # -2.000048f

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, La/d/bo;->a(Z)V

    :cond_5
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :sswitch_data_0
    .sparse-switch
        -0x5e -> :sswitch_1
        0x4 -> :sswitch_1
        0x25 -> :sswitch_0
        0x2d -> :sswitch_1
        0x2e -> :sswitch_1
        0x2f -> :sswitch_1
        0x32 -> :sswitch_0
        0x71 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_1
        0x10 -> :sswitch_1
        0x23 -> :sswitch_1
        0x26 -> :sswitch_1
        0x53 -> :sswitch_1
        0x54 -> :sswitch_1
        0x68 -> :sswitch_1
        0xd7 -> :sswitch_1
    .end sparse-switch
.end method

.method a(Z)V
    .locals 4

    iget-object v0, p0, La/d/bo;->f:La/d/bk;

    invoke-virtual {v0}, La/d/bk;->a()La/d/bm;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget v0, p0, La/d/bo;->a:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, La/d/bo;->a:I

    if-nez p1, :cond_1

    iget v0, p0, La/d/bo;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v0, La/d/aw;

    invoke-direct {v0}, La/d/aw;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, La/d/bo;->a(La/d/u;La/d/u;)V
    :try_end_1
    .catch La/d/bc; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, La/d/bo;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, La/d/bo;->h:Z

    const/4 v0, 0x0

    iput v0, p0, La/d/bo;->a:I

    iget-object v0, p0, La/d/bo;->f:La/d/bk;

    iget-object v0, v0, La/d/bk;->e:La/d/bm;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v2, p0, La/d/bo;->f:La/d/bk;

    iget-object v2, v2, La/d/bk;->e:La/d/bm;

    sget-object v2, La/d/bm;->c:La/e/e;

    sget v2, La/e/e;->a:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    iget-object v2, p0, La/d/bo;->f:La/d/bk;

    iget-object v2, v2, La/d/bk;->e:La/d/bm;

    sget-object v2, La/d/bm;->c:La/e/e;

    invoke-virtual {v0, v2}, La/d/bc;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, La/d/bo;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const-string v0, "??"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, La/d/bo;->d:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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
    .locals 6

    const/4 v3, 0x2

    iget-object v0, p0, La/d/bo;->f:La/d/bk;

    invoke-virtual {v0}, La/d/bk;->a()La/d/bm;

    move-result-object v1

    monitor-enter v1

    :goto_0
    :try_start_0
    iget v0, p0, La/d/bo;->a:I

    if-eqz v0, :cond_2

    iget v0, p0, La/d/bo;->a:I

    if-eq v0, v3, :cond_0

    iget v0, p0, La/d/bo;->a:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, La/d/bo;->f:La/d/bk;

    iget-object v0, v0, La/d/bk;->e:La/d/bm;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, La/d/bc;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, La/d/bc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    const/4 v0, 0x1

    :try_start_3
    iput v0, p0, La/d/bo;->a:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, La/d/bo;->f:La/d/bk;

    iget-object v0, v0, La/d/bk;->e:La/d/bm;

    invoke-virtual {v0}, La/d/bm;->b()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\\\"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, La/d/bo;->f:La/d/bk;

    iget-object v2, v2, La/d/bk;->e:La/d/bm;

    iget-object v2, v2, La/d/bm;->A:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x5c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, La/d/bo;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, La/d/bo;->e:Ljava/lang/String;

    iput-object v2, p0, La/d/bo;->d:Ljava/lang/String;

    iget-object v2, p0, La/d/bo;->f:La/d/bk;

    iget-object v2, v2, La/d/bk;->e:La/d/bm;

    sget-object v2, La/d/bm;->c:La/e/e;

    sget v2, La/e/e;->a:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_3

    iget-object v2, p0, La/d/bo;->f:La/d/bk;

    iget-object v2, v2, La/d/bk;->e:La/d/bm;

    sget-object v2, La/d/bm;->c:La/e/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "treeConnect: unc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, La/d/bo;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, La/e/e;->println(Ljava/lang/String;)V

    :cond_3
    new-instance v2, La/d/av;

    invoke-direct {v2, p2}, La/d/av;-><init>(La/d/u;)V

    new-instance v3, La/d/au;

    iget-object v4, p0, La/d/bo;->f:La/d/bk;

    iget-object v5, p0, La/d/bo;->d:Ljava/lang/String;

    invoke-direct {v3, v4, v0, v5, p1}, La/d/au;-><init>(La/d/bk;Ljava/lang/String;Ljava/lang/String;La/d/u;)V

    iget-object v0, p0, La/d/bo;->f:La/d/bk;

    invoke-virtual {v0, v3, v2}, La/d/bk;->a(La/d/u;La/d/u;)V

    iget v0, v2, La/d/av;->n:I

    iput v0, p0, La/d/bo;->b:I

    iget-object v0, v2, La/d/av;->d:Ljava/lang/String;

    iput-object v0, p0, La/d/bo;->d:Ljava/lang/String;

    iget-boolean v0, v2, La/d/av;->c:Z

    iput-boolean v0, p0, La/d/bo;->g:Z

    sget v0, La/d/bo;->j:I

    add-int/lit8 v2, v0, 0x1

    sput v2, La/d/bo;->j:I

    iput v0, p0, La/d/bo;->i:I

    const/4 v0, 0x2

    iput v0, p0, La/d/bo;->a:I
    :try_end_4
    .catch La/d/bc; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, La/d/bo;->a(Z)V

    const/4 v2, 0x0

    iput v2, p0, La/d/bo;->a:I

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, La/d/bo;

    if-eqz v0, :cond_0

    check-cast p1, La/d/bo;

    iget-object v0, p1, La/d/bo;->c:Ljava/lang/String;

    iget-object v1, p1, La/d/bo;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, La/d/bo;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
