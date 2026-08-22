.class Lcom/alensw/b/d/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:J

.field final b:F

.field final c:F

.field final d:Lcom/alensw/b/d/g;

.field final synthetic e:Lcom/alensw/b/d/f;


# direct methods
.method public constructor <init>(Lcom/alensw/b/d/f;FFJLcom/alensw/b/d/g;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/b/d/h;->e:Lcom/alensw/b/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p4, p0, Lcom/alensw/b/d/h;->a:J

    iput p2, p0, Lcom/alensw/b/d/h;->b:F

    iput p3, p0, Lcom/alensw/b/d/h;->c:F

    iput-object p6, p0, Lcom/alensw/b/d/h;->d:Lcom/alensw/b/d/g;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/alensw/b/d/h;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/alensw/b/d/h;

    iget-wide v2, p0, Lcom/alensw/b/d/h;->a:J

    iget-wide v4, p1, Lcom/alensw/b/d/h;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alensw/b/d/h;->d:Lcom/alensw/b/d/g;

    iget-object v3, p1, Lcom/alensw/b/d/h;->d:Lcom/alensw/b/d/g;

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Lcom/alensw/b/d/h;->a:J

    iget-wide v2, p0, Lcom/alensw/b/d/h;->a:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public run()V
    .locals 6

    new-instance v1, Lcom/alensw/b/d/c;

    invoke-direct {v1}, Lcom/alensw/b/d/c;-><init>()V

    const/4 v0, 0x0

    iget v2, p0, Lcom/alensw/b/d/h;->b:F

    iget v3, p0, Lcom/alensw/b/d/h;->c:F

    invoke-static {v2, v3}, Lcom/alensw/b/d/f;->b(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/alensw/b/d/h;->e:Lcom/alensw/b/d/f;

    invoke-static {v0}, Lcom/alensw/b/d/f;->a(Lcom/alensw/b/d/f;)Lcom/alensw/b/d/b;

    move-result-object v0

    iget v3, p0, Lcom/alensw/b/d/h;->b:F

    iget v4, p0, Lcom/alensw/b/d/h;->c:F

    invoke-virtual {v0, v3, v4, v1}, Lcom/alensw/b/d/b;->a(FFLcom/alensw/b/d/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/b/d/h;->e:Lcom/alensw/b/d/f;

    invoke-static {v0}, Lcom/alensw/b/d/f;->b(Lcom/alensw/b/d/f;)Lcom/alensw/b/d/a;

    move-result-object v0

    iget v3, p0, Lcom/alensw/b/d/h;->b:F

    iget v4, p0, Lcom/alensw/b/d/h;->c:F

    invoke-virtual {v0, v3, v4, v1}, Lcom/alensw/b/d/a;->a(FFLcom/alensw/b/d/c;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alensw/b/d/h;->e:Lcom/alensw/b/d/f;

    invoke-static {v0}, Lcom/alensw/b/d/f;->c(Lcom/alensw/b/d/f;)Lcom/alensw/b/d/e;

    move-result-object v0

    iget v3, p0, Lcom/alensw/b/d/h;->b:F

    iget v4, p0, Lcom/alensw/b/d/h;->c:F

    invoke-virtual {v0, v3, v4, v1}, Lcom/alensw/b/d/e;->a(FFLcom/alensw/b/d/c;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_3

    if-eqz v2, :cond_2

    iget-object v0, v1, Lcom/alensw/b/d/c;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alensw/b/d/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alensw/b/d/c;->b:Ljava/lang/String;

    iget-object v0, v1, Lcom/alensw/b/d/c;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/alensw/b/d/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alensw/b/d/c;->c:Ljava/lang/String;

    iget-object v0, v1, Lcom/alensw/b/d/c;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/alensw/b/d/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alensw/b/d/c;->d:Ljava/lang/String;

    :cond_2
    invoke-virtual {v1}, Lcom/alensw/b/d/c;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alensw/b/d/h;->e:Lcom/alensw/b/d/f;

    invoke-static {v2}, Lcom/alensw/b/d/f;->d(Lcom/alensw/b/d/f;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-wide v4, p0, Lcom/alensw/b/d/h;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/alensw/b/d/h;->e:Lcom/alensw/b/d/f;

    invoke-static {v2}, Lcom/alensw/b/d/f;->e(Lcom/alensw/b/d/f;)Lcom/alensw/b/d/d;

    move-result-object v2

    iget-wide v4, p0, Lcom/alensw/b/d/h;->a:J

    invoke-virtual {v2, v4, v5, v0}, Lcom/alensw/b/d/d;->a(JLjava/lang/Object;)V

    iget-object v0, p0, Lcom/alensw/b/d/h;->e:Lcom/alensw/b/d/f;

    invoke-static {v0}, Lcom/alensw/b/d/f;->f(Lcom/alensw/b/d/f;)I

    :cond_3
    iget-object v0, p0, Lcom/alensw/b/d/h;->d:Lcom/alensw/b/d/g;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alensw/b/d/h;->e:Lcom/alensw/b/d/f;

    invoke-static {v0}, Lcom/alensw/b/d/f;->g(Lcom/alensw/b/d/f;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/alensw/b/d/i;

    invoke-direct {v2, p0, v1}, Lcom/alensw/b/d/i;-><init>(Lcom/alensw/b/d/h;Lcom/alensw/b/d/c;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iget-object v0, p0, Lcom/alensw/b/d/h;->e:Lcom/alensw/b/d/f;

    invoke-static {v0}, Lcom/alensw/b/d/f;->h(Lcom/alensw/b/d/f;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-wide v2, p0, Lcom/alensw/b/d/h;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alensw/b/d/h;->e:Lcom/alensw/b/d/f;

    invoke-static {v0}, Lcom/alensw/b/d/f;->i(Lcom/alensw/b/d/f;)I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/alensw/b/d/h;->e:Lcom/alensw/b/d/f;

    invoke-static {v0}, Lcom/alensw/b/d/f;->h(Lcom/alensw/b/d/f;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alensw/b/d/h;->e:Lcom/alensw/b/d/f;

    invoke-static {v0}, Lcom/alensw/b/d/f;->j(Lcom/alensw/b/d/f;)V

    :cond_5
    return-void
.end method
