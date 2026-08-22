.class public Lcom/alensw/cloud/oauth/b;
.super Lcom/alensw/b/c/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/b/c/e;-><init>()V

    return-void
.end method

.method private a(Ljava/io/DataInputStream;Lcom/alensw/cloud/oauth/aj;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/alensw/cloud/oauth/b;->d(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/alensw/cloud/oauth/aj;->a:Ljava/lang/String;

    :cond_0
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/alensw/cloud/oauth/b;->d(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/alensw/cloud/oauth/aj;->b:Ljava/lang/String;

    :cond_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/alensw/cloud/oauth/b;->d(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/alensw/cloud/oauth/aj;->c:Ljava/lang/String;

    :cond_2
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/alensw/cloud/oauth/aj;->d:J

    :cond_3
    return-void
.end method

.method private a(Ljava/io/DataOutputStream;Lcom/alensw/cloud/oauth/aj;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p2, Lcom/alensw/cloud/oauth/aj;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/16 v0, 0x10

    :cond_0
    iget-object v1, p2, Lcom/alensw/cloud/oauth/aj;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x20

    :cond_1
    iget-object v1, p2, Lcom/alensw/cloud/oauth/aj;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x40

    :cond_2
    iget-wide v2, p2, Lcom/alensw/cloud/oauth/aj;->d:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x80

    :cond_3
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p2, Lcom/alensw/cloud/oauth/aj;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/alensw/cloud/oauth/aj;->a:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/alensw/cloud/oauth/b;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p2, Lcom/alensw/cloud/oauth/aj;->b:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/alensw/cloud/oauth/aj;->b:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/alensw/cloud/oauth/b;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p2, Lcom/alensw/cloud/oauth/aj;->c:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/alensw/cloud/oauth/aj;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/alensw/cloud/oauth/b;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    :cond_6
    iget-wide v0, p2, Lcom/alensw/cloud/oauth/aj;->d:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_7

    iget-wide v0, p2, Lcom/alensw/cloud/oauth/aj;->d:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    :cond_7
    return-void
.end method

.method private a(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Lcom/alensw/b/f/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    return-void
.end method

.method private b(I)Lcom/alensw/cloud/z;
    .locals 1

    packed-switch p1, :pswitch_data_0

    sget-object v0, Lcom/alensw/cloud/z;->a:Lcom/alensw/cloud/z;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/alensw/cloud/z;->b:Lcom/alensw/cloud/z;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/alensw/cloud/z;->g:Lcom/alensw/cloud/z;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/alensw/cloud/z;->p:Lcom/alensw/cloud/z;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/alensw/cloud/z;->c:Lcom/alensw/cloud/z;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private c(Ljava/io/DataInputStream;)Lcom/alensw/cloud/z;
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/alensw/cloud/oauth/b;->d(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/cloud/z;->valueOf(Ljava/lang/String;)Lcom/alensw/cloud/z;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/alensw/cloud/z;->a:Lcom/alensw/cloud/z;

    goto :goto_0
.end method

.method private d(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/b/f/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/DataInputStream;)Lcom/alensw/cloud/oauth/a;
    .locals 3

    new-instance v0, Lcom/alensw/cloud/oauth/a;

    invoke-direct {v0}, Lcom/alensw/cloud/oauth/a;-><init>()V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_7

    invoke-direct {p0, p1}, Lcom/alensw/cloud/oauth/b;->c(Ljava/io/DataInputStream;)Lcom/alensw/cloud/z;

    move-result-object v2

    iput-object v2, v0, Lcom/alensw/cloud/oauth/a;->a:Lcom/alensw/cloud/z;

    :goto_0
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/alensw/cloud/oauth/b;->d(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alensw/cloud/oauth/a;->b:Ljava/lang/String;

    :cond_0
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alensw/cloud/oauth/a;->c:Ljava/lang/String;

    :cond_1
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/alensw/cloud/oauth/a;->g:Lcom/alensw/cloud/oauth/aj;

    invoke-direct {p0, p1, v2}, Lcom/alensw/cloud/oauth/b;->a(Ljava/io/DataInputStream;Lcom/alensw/cloud/oauth/aj;)V

    :cond_2
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alensw/cloud/oauth/a;->d:Ljava/lang/String;

    :cond_3
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alensw/cloud/oauth/a;->e:Ljava/lang/String;

    :cond_4
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alensw/cloud/oauth/a;->f:Ljava/lang/String;

    :cond_5
    iget-object v1, v0, Lcom/alensw/cloud/oauth/a;->a:Lcom/alensw/cloud/z;

    sget-object v2, Lcom/alensw/cloud/z;->a:Lcom/alensw/cloud/z;

    if-eq v1, v2, :cond_8

    iget-object v1, v0, Lcom/alensw/cloud/oauth/a;->c:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/alensw/cloud/oauth/a;->b:Ljava/lang/String;

    if-eqz v1, :cond_8

    :cond_6
    :goto_1
    return-object v0

    :cond_7
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/alensw/cloud/oauth/b;->b(I)Lcom/alensw/cloud/z;

    move-result-object v2

    iput-object v2, v0, Lcom/alensw/cloud/oauth/a;->a:Lcom/alensw/cloud/z;

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "Account_1"

    return-object v0
.end method

.method public declared-synchronized a(Lcom/alensw/cloud/oauth/a;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alensw/cloud/oauth/b;->a(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/alensw/cloud/oauth/b;->a(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/alensw/cloud/oauth/b;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/io/DataOutputStream;Lcom/alensw/cloud/oauth/a;)V
    .locals 2

    const/16 v0, 0x10

    iget-object v1, p2, Lcom/alensw/cloud/oauth/a;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/16 v0, 0x11

    :cond_0
    iget-object v1, p2, Lcom/alensw/cloud/oauth/a;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x8

    :cond_1
    iget-object v1, p2, Lcom/alensw/cloud/oauth/a;->g:Lcom/alensw/cloud/oauth/aj;

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    iget-object v1, p2, Lcom/alensw/cloud/oauth/a;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x20

    :cond_3
    iget-object v1, p2, Lcom/alensw/cloud/oauth/a;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x40

    :cond_4
    iget-object v1, p2, Lcom/alensw/cloud/oauth/a;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    or-int/lit16 v0, v0, 0x80

    :cond_5
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p2, Lcom/alensw/cloud/oauth/a;->a:Lcom/alensw/cloud/z;

    invoke-virtual {v0}, Lcom/alensw/cloud/z;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alensw/cloud/oauth/b;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/alensw/cloud/oauth/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/alensw/cloud/oauth/a;->b:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/alensw/cloud/oauth/b;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    :cond_6
    iget-object v0, p2, Lcom/alensw/cloud/oauth/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p2, Lcom/alensw/cloud/oauth/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p2, Lcom/alensw/cloud/oauth/a;->g:Lcom/alensw/cloud/oauth/aj;

    if-eqz v0, :cond_8

    iget-object v0, p2, Lcom/alensw/cloud/oauth/a;->g:Lcom/alensw/cloud/oauth/aj;

    invoke-direct {p0, p1, v0}, Lcom/alensw/cloud/oauth/b;->a(Ljava/io/DataOutputStream;Lcom/alensw/cloud/oauth/aj;)V

    :cond_8
    iget-object v0, p2, Lcom/alensw/cloud/oauth/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p2, Lcom/alensw/cloud/oauth/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_9
    iget-object v0, p2, Lcom/alensw/cloud/oauth/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p2, Lcom/alensw/cloud/oauth/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_a
    iget-object v0, p2, Lcom/alensw/cloud/oauth/a;->f:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p2, Lcom/alensw/cloud/oauth/a;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public bridge synthetic a(Ljava/io/DataOutputStream;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/alensw/cloud/oauth/a;

    invoke-virtual {p0, p1, p2}, Lcom/alensw/cloud/oauth/b;->a(Ljava/io/DataOutputStream;Lcom/alensw/cloud/oauth/a;)V

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "accounts.bin"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/oauth/b;->a(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public synthetic b(Ljava/io/DataInputStream;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alensw/cloud/oauth/b;->a(Ljava/io/DataInputStream;)Lcom/alensw/cloud/oauth/a;

    move-result-object v0

    return-object v0
.end method
