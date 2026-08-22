.class La/b;
.super Ljava/lang/Thread;


# instance fields
.field a:La/c;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:I

.field e:La/b/g;

.field f:Ljava/net/InetAddress;

.field g:Ljava/net/UnknownHostException;


# direct methods
.method constructor <init>(La/c;Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JCIFS-QueryThread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, La/b;->e:La/b/g;

    iput-object p1, p0, La/b;->a:La/c;

    iput-object p2, p0, La/b;->b:Ljava/lang/String;

    iput p3, p0, La/b;->d:I

    iput-object p4, p0, La/b;->c:Ljava/lang/String;

    iput-object p5, p0, La/b;->f:Ljava/net/InetAddress;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, La/b;->b:Ljava/lang/String;

    iget v1, p0, La/b;->d:I

    iget-object v2, p0, La/b;->c:Ljava/lang/String;

    iget-object v3, p0, La/b;->f:Ljava/net/InetAddress;

    invoke-static {v0, v1, v2, v3}, La/b/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)La/b/g;

    move-result-object v0

    iput-object v0, p0, La/b;->e:La/b/g;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    iget-object v1, p0, La/b;->a:La/c;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, La/b;->a:La/c;

    iget v2, v0, La/c;->a:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, La/c;->a:I

    iget-object v0, p0, La/b;->a:La/c;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_2
    iput-object v0, p0, La/b;->g:Ljava/net/UnknownHostException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    iget-object v1, p0, La/b;->a:La/c;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, La/b;->a:La/c;

    iget v2, v0, La/c;->a:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, La/c;->a:I

    iget-object v0, p0, La/b;->a:La/c;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v1, Ljava/net/UnknownHostException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, La/b;->g:Ljava/net/UnknownHostException;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    iget-object v1, p0, La/b;->a:La/c;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, La/b;->a:La/c;

    iget v2, v0, La/c;->a:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, La/c;->a:I

    iget-object v0, p0, La/b;->a:La/c;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    iget-object v1, p0, La/b;->a:La/c;

    monitor-enter v1

    :try_start_6
    iget-object v2, p0, La/b;->a:La/c;

    iget v3, v2, La/c;->a:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, La/c;->a:I

    iget-object v2, p0, La/b;->a:La/c;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0
.end method
