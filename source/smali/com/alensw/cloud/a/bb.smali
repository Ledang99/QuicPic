.class Lcom/alensw/cloud/a/bb;
.super Lcom/alensw/cloud/a/by;


# instance fields
.field final synthetic a:Lcom/alensw/cloud/a/az;

.field final synthetic b:Lcom/alensw/cloud/a/ba;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/a/ba;ILcom/alensw/b/e/f;Lcom/alensw/cloud/a/az;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a/bb;->b:Lcom/alensw/cloud/a/ba;

    iput-object p4, p0, Lcom/alensw/cloud/a/bb;->a:Lcom/alensw/cloud/a/az;

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/cloud/a/by;-><init>(Lcom/alensw/cloud/a/bv;ILcom/alensw/b/e/f;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/a/a/a/h;)V
    .locals 2

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->b:Lcom/a/a/a/l;

    invoke-static {v0, v1}, Lcom/alensw/cloud/a/bv;->a(Lcom/a/a/a/l;Lcom/a/a/a/l;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->c:Lcom/a/a/a/l;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/a/a/a/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    const-string v1, "data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/a/a/a/h;->c()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->d:Lcom/a/a/a/l;

    if-ne v0, v1, :cond_1

    :goto_1
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->e:Lcom/a/a/a/l;

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    iget-object v1, p0, Lcom/alensw/cloud/a/bb;->b:Lcom/alensw/cloud/a/ba;

    invoke-static {v1, p1, v0}, Lcom/alensw/cloud/a/ba;->a(Lcom/alensw/cloud/a/ba;Lcom/a/a/a/h;Landroid/content/ContentValues;)V

    iget-object v1, p0, Lcom/alensw/cloud/a/bb;->a:Lcom/alensw/cloud/a/az;

    invoke-virtual {v1, v0}, Lcom/alensw/cloud/a/az;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/alensw/cloud/a/bb;->a()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/a/a/a/h;->b()Lcom/a/a/a/h;

    goto :goto_0

    :cond_2
    return-void
.end method
