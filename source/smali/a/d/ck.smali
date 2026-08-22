.class La/d/ck;
.super La/d/at;


# instance fields
.field private a:La/d/bj;


# direct methods
.method constructor <init>(La/d/bj;)V
    .locals 0

    invoke-direct {p0}, La/d/at;-><init>()V

    iput-object p1, p0, La/d/ck;->a:La/d/bj;

    return-void
.end method


# virtual methods
.method a([BII)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method b([BII)I
    .locals 2

    iget-object v0, p0, La/d/ck;->a:La/d/bj;

    iget-object v0, v0, La/d/bj;->o:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/d/ck;->a:La/d/bj;

    iget-object v0, v0, La/d/bj;->o:Ljava/io/InputStream;

    check-cast v0, La/d/cn;

    iget-object v1, v0, La/d/cn;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, La/d/cn;->b([BII)I

    iget-object v0, v0, La/d/cn;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    :cond_0
    return p3

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
