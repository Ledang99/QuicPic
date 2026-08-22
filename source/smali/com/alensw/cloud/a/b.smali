.class Lcom/alensw/cloud/a/b;
.super Lcom/alensw/cloud/a/by;


# instance fields
.field final synthetic a:Lcom/alensw/cloud/a/az;

.field final synthetic b:[Z

.field final synthetic c:Lcom/alensw/cloud/a/a;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/a/a;ILcom/alensw/b/e/f;Lcom/alensw/cloud/a/az;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a/b;->c:Lcom/alensw/cloud/a/a;

    iput-object p4, p0, Lcom/alensw/cloud/a/b;->a:Lcom/alensw/cloud/a/az;

    iput-object p5, p0, Lcom/alensw/cloud/a/b;->b:[Z

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

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/a/a/a/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    const-string v1, "data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/a/a/a/h;->c()Lcom/a/a/a/l;

    move-result-object v1

    sget-object v2, Lcom/a/a/a/l;->d:Lcom/a/a/a/l;

    if-ne v1, v2, :cond_2

    :goto_1
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->e:Lcom/a/a/a/l;

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    iget-object v1, p0, Lcom/alensw/cloud/a/b;->c:Lcom/alensw/cloud/a/a;

    invoke-static {v1, p1, v0}, Lcom/alensw/cloud/a/a;->a(Lcom/alensw/cloud/a/a;Lcom/a/a/a/h;Landroid/content/ContentValues;)C

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alensw/cloud/a/b;->a:Lcom/alensw/cloud/a/az;

    invoke-virtual {v1, v0}, Lcom/alensw/cloud/a/az;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/alensw/cloud/a/b;->a()V

    goto :goto_1

    :cond_2
    const-string v1, "nextToken"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alensw/cloud/a/b;->b:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/alensw/cloud/a/b;->a:Lcom/alensw/cloud/a/az;

    invoke-virtual {p1}, Lcom/a/a/a/h;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/cloud/a/az;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/a/a/a/h;->b()Lcom/a/a/a/h;

    goto :goto_0

    :cond_4
    return-void
.end method
