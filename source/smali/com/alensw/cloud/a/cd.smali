.class Lcom/alensw/cloud/a/cd;
.super Lcom/alensw/cloud/a/by;


# instance fields
.field final synthetic a:[I

.field final synthetic b:Lcom/alensw/cloud/a/az;

.field final synthetic c:Lcom/alensw/cloud/a/cc;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/a/cc;ILcom/alensw/b/e/f;[ILcom/alensw/cloud/a/az;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a/cd;->c:Lcom/alensw/cloud/a/cc;

    iput-object p4, p0, Lcom/alensw/cloud/a/cd;->a:[I

    iput-object p5, p0, Lcom/alensw/cloud/a/cd;->b:Lcom/alensw/cloud/a/az;

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
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->c:Lcom/a/a/a/l;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/a/a/a/h;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_embedded"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/a/a/a/h;->c()Lcom/a/a/a/l;

    :cond_1
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->b:Lcom/a/a/a/l;

    invoke-static {v0, v1}, Lcom/alensw/cloud/a/bv;->a(Lcom/a/a/a/l;Lcom/a/a/a/l;)V

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->c:Lcom/a/a/a/l;

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/a/a/a/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    const-string v1, "items"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/a/a/a/h;->c()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->d:Lcom/a/a/a/l;

    if-ne v0, v1, :cond_4

    :goto_1
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->e:Lcom/a/a/a/l;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/alensw/cloud/a/cd;->a:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    iget-object v1, p0, Lcom/alensw/cloud/a/cd;->c:Lcom/alensw/cloud/a/cc;

    invoke-static {v1, p1, v0}, Lcom/alensw/cloud/a/cc;->a(Lcom/alensw/cloud/a/cc;Lcom/a/a/a/h;Landroid/content/ContentValues;)C

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alensw/cloud/a/cd;->b:Lcom/alensw/cloud/a/az;

    invoke-virtual {v1, v0}, Lcom/alensw/cloud/a/az;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/alensw/cloud/a/cd;->a()V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/a/a/a/h;->b()Lcom/a/a/a/h;

    goto :goto_0

    :cond_5
    return-void
.end method
