.class Lcom/alensw/cloud/a/ag;
.super Lcom/alensw/cloud/a/by;


# instance fields
.field final synthetic a:Lcom/alensw/cloud/a/ah;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alensw/cloud/a/az;

.field final synthetic d:[Z

.field final synthetic e:Lcom/alensw/cloud/a/ae;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/a/ae;ILcom/alensw/b/e/f;Lcom/alensw/cloud/a/ah;Ljava/lang/String;Lcom/alensw/cloud/a/az;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a/ag;->e:Lcom/alensw/cloud/a/ae;

    iput-object p4, p0, Lcom/alensw/cloud/a/ag;->a:Lcom/alensw/cloud/a/ah;

    iput-object p5, p0, Lcom/alensw/cloud/a/ag;->b:Ljava/lang/String;

    iput-object p6, p0, Lcom/alensw/cloud/a/ag;->c:Lcom/alensw/cloud/a/az;

    iput-object p7, p0, Lcom/alensw/cloud/a/ag;->d:[Z

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/cloud/a/by;-><init>(Lcom/alensw/cloud/a/bv;ILcom/alensw/b/e/f;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/a/a/a/h;)V
    .locals 9

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    const-string v1, ""

    const-string v0, ""

    move v2, v5

    move v3, v5

    move v4, v5

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v6

    sget-object v7, Lcom/a/a/a/l;->c:Lcom/a/a/a/l;

    if-eq v6, v7, :cond_a

    invoke-virtual {p1}, Lcom/a/a/a/h;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    iget-object v7, p0, Lcom/alensw/cloud/a/ag;->a:Lcom/alensw/cloud/a/ah;

    invoke-interface {v7}, Lcom/alensw/cloud/a/ah;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v6

    sget-object v7, Lcom/a/a/a/l;->c:Lcom/a/a/a/l;

    if-eq v6, v7, :cond_0

    invoke-virtual {p1}, Lcom/a/a/a/h;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    const-string v7, "page"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p1}, Lcom/a/a/a/h;->l()I

    move-result v4

    goto :goto_1

    :cond_2
    const-string v7, "pages"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Lcom/a/a/a/h;->l()I

    move-result v3

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/alensw/cloud/a/ag;->a:Lcom/alensw/cloud/a/ah;

    invoke-interface {v7}, Lcom/alensw/cloud/a/ah;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :goto_2
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v6

    sget-object v7, Lcom/a/a/a/l;->e:Lcom/a/a/a/l;

    if-eq v6, v7, :cond_1

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    iget-object v7, p0, Lcom/alensw/cloud/a/ag;->a:Lcom/alensw/cloud/a/ah;

    iget-object v8, p0, Lcom/alensw/cloud/a/ag;->b:Ljava/lang/String;

    invoke-interface {v7, p1, v6, v8}, Lcom/alensw/cloud/a/ah;->a(Lcom/a/a/a/h;Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/alensw/cloud/a/ag;->c:Lcom/alensw/cloud/a/az;

    invoke-virtual {v7, v6}, Lcom/alensw/cloud/a/az;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p0}, Lcom/alensw/cloud/a/ag;->a()V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/a/a/a/h;->b()Lcom/a/a/a/h;

    goto :goto_1

    :cond_6
    const-string v7, "stat"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {p1}, Lcom/a/a/a/h;->f()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_7
    const-string v7, "code"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p1}, Lcom/a/a/a/h;->l()I

    move-result v2

    goto/16 :goto_0

    :cond_8
    const-string v7, "message"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {p1}, Lcom/a/a/a/h;->f()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Lcom/a/a/a/h;->b()Lcom/a/a/a/h;

    goto/16 :goto_0

    :cond_a
    iget-object v6, p0, Lcom/alensw/cloud/a/ag;->e:Lcom/alensw/cloud/a/ae;

    invoke-virtual {v6, v1, v2, v0}, Lcom/alensw/cloud/a/ae;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/alensw/cloud/a/ag;->d:[Z

    if-ne v4, v3, :cond_b

    const/4 v0, 0x1

    :goto_3
    aput-boolean v0, v1, v5

    return-void

    :cond_b
    move v0, v5

    goto :goto_3
.end method
