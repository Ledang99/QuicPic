.class Lcom/alensw/cloud/a/at;
.super Lcom/alensw/cloud/a/aw;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alensw/cloud/a/az;

.field final synthetic c:[Z

.field final synthetic d:I

.field final synthetic e:Lcom/alensw/cloud/a/as;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/a/as;ILcom/alensw/b/e/f;Ljava/lang/String;Lcom/alensw/cloud/a/az;[ZI)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a/at;->e:Lcom/alensw/cloud/a/as;

    iput-object p4, p0, Lcom/alensw/cloud/a/at;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/alensw/cloud/a/at;->b:Lcom/alensw/cloud/a/az;

    iput-object p6, p0, Lcom/alensw/cloud/a/at;->c:[Z

    iput p7, p0, Lcom/alensw/cloud/a/at;->d:I

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/cloud/a/aw;-><init>(Lcom/alensw/cloud/a/as;ILcom/alensw/b/e/f;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/a/a/a/h;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v0, -0x1

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v1

    sget-object v3, Lcom/a/a/a/l;->b:Lcom/a/a/a/l;

    invoke-static {v1, v3}, Lcom/alensw/cloud/a/bv;->a(Lcom/a/a/a/l;Lcom/a/a/a/l;)V

    move v1, v2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v3

    sget-object v4, Lcom/a/a/a/l;->c:Lcom/a/a/a/l;

    if-eq v3, v4, :cond_4

    invoke-virtual {p1}, Lcom/a/a/a/h;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    const-string v4, "files"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/a/a/a/h;->c()Lcom/a/a/a/l;

    move-result-object v4

    sget-object v5, Lcom/a/a/a/l;->d:Lcom/a/a/a/l;

    if-ne v4, v5, :cond_2

    :goto_1
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v3

    sget-object v4, Lcom/a/a/a/l;->e:Lcom/a/a/a/l;

    if-eq v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    new-instance v3, Landroid/content/ContentValues;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    iget-object v4, p0, Lcom/alensw/cloud/a/at;->e:Lcom/alensw/cloud/a/as;

    iget-object v5, p0, Lcom/alensw/cloud/a/at;->a:Ljava/lang/String;

    invoke-static {v4, p1, v3, v5}, Lcom/alensw/cloud/a/as;->a(Lcom/alensw/cloud/a/as;Lcom/a/a/a/h;Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/alensw/cloud/a/at;->b:Lcom/alensw/cloud/a/az;

    invoke-virtual {v4, v3}, Lcom/alensw/cloud/a/az;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/alensw/cloud/a/at;->a()V

    goto :goto_1

    :cond_2
    const-string v4, "files_total"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/a/a/a/h;->l()I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/a/a/a/h;->b()Lcom/a/a/a/h;

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/alensw/cloud/a/at;->c:[Z

    iget v4, p0, Lcom/alensw/cloud/a/at;->d:I

    mul-int/lit16 v4, v4, 0x1f4

    add-int/2addr v1, v4

    if-lt v1, v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    aput-boolean v0, v3, v2

    return-void

    :cond_5
    move v0, v2

    goto :goto_2
.end method
