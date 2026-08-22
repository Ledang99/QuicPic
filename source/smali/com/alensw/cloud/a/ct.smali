.class Lcom/alensw/cloud/a/ct;
.super Lcom/alensw/cloud/a/by;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Ljava/util/ArrayList;

.field final synthetic d:[Ljava/lang/String;

.field final synthetic e:Lcom/alensw/cloud/a/cm;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/a/cm;ILcom/alensw/b/e/f;[Ljava/lang/String;JLjava/util/ArrayList;[Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/alensw/cloud/a/ct;->e:Lcom/alensw/cloud/a/cm;

    iput-object p4, p0, Lcom/alensw/cloud/a/ct;->a:[Ljava/lang/String;

    iput-wide p5, p0, Lcom/alensw/cloud/a/ct;->b:J

    iput-object p7, p0, Lcom/alensw/cloud/a/ct;->c:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/alensw/cloud/a/ct;->d:[Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/cloud/a/by;-><init>(Lcom/alensw/cloud/a/bv;ILcom/alensw/b/e/f;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/a/a/a/h;)V
    .locals 3

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->b:Lcom/a/a/a/l;

    invoke-static {v0, v1}, Lcom/alensw/cloud/a/bv;->a(Lcom/a/a/a/l;Lcom/a/a/a/l;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->c:Lcom/a/a/a/l;

    if-eq v0, v1, :cond_6

    invoke-virtual {p1}, Lcom/a/a/a/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    const-string v1, "data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->c:Lcom/a/a/a/l;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/a/a/a/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    const-string v1, "block_info"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/a/a/a/h;->c()Lcom/a/a/a/l;

    move-result-object v1

    sget-object v2, Lcom/a/a/a/l;->d:Lcom/a/a/a/l;

    if-ne v1, v2, :cond_3

    :goto_2
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->e:Lcom/a/a/a/l;

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/alensw/cloud/a/cv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alensw/cloud/a/cv;-><init>(Lcom/alensw/cloud/a/cn;)V

    iget-object v1, p0, Lcom/alensw/cloud/a/ct;->e:Lcom/alensw/cloud/a/cm;

    invoke-static {v1, p1, v0}, Lcom/alensw/cloud/a/cm;->a(Lcom/alensw/cloud/a/cm;Lcom/a/a/a/h;Lcom/alensw/cloud/a/cv;)V

    iget v1, v0, Lcom/alensw/cloud/a/cv;->a:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alensw/cloud/a/ct;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/alensw/cloud/a/ct;->a()V

    goto :goto_2

    :cond_3
    const-string v1, "tid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alensw/cloud/a/ct;->d:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/a/a/a/h;->f()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/a/a/a/h;->b()Lcom/a/a/a/h;

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/a/a/a/h;->b()Lcom/a/a/a/h;

    goto :goto_0

    :cond_6
    return-void
.end method

.method public a(Ljava/net/HttpURLConnection;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/alensw/cloud/a/ct;->a:[Ljava/lang/String;

    iget-wide v2, p0, Lcom/alensw/cloud/a/ct;->b:J

    invoke-static {v0, v2, v3}, Lcom/alensw/cloud/a/cm;->a([Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "form-data"

    iget-object v2, p0, Lcom/alensw/cloud/a/ct;->i:Lcom/alensw/b/e/f;

    new-array v3, v8, [Lcom/alensw/b/e/h;

    new-instance v4, Lcom/alensw/b/e/h;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "Content-Disposition"

    aput-object v6, v5, v7

    const-string v6, "form-data; name=\"file\"; filename=\"file.dat\""

    aput-object v6, v5, v8

    invoke-direct {v4, v0, v5}, Lcom/alensw/b/e/h;-><init>(Ljava/lang/Object;[Ljava/lang/String;)V

    aput-object v4, v3, v7

    invoke-static {p1, v1, v2, v3}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/alensw/b/e/f;[Lcom/alensw/b/e/h;)V

    return-void
.end method
