.class Lcom/alensw/cloud/a/an;
.super Lcom/alensw/cloud/a/by;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/alensw/cloud/a/az;

.field final synthetic c:Lcom/alensw/cloud/a/am;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/a/am;ILcom/alensw/b/e/f;[Ljava/lang/String;Lcom/alensw/cloud/a/az;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a/an;->c:Lcom/alensw/cloud/a/am;

    iput-object p4, p0, Lcom/alensw/cloud/a/an;->a:[Ljava/lang/String;

    iput-object p5, p0, Lcom/alensw/cloud/a/an;->b:Lcom/alensw/cloud/a/az;

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/cloud/a/by;-><init>(Lcom/alensw/cloud/a/bv;ILcom/alensw/b/e/f;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/a/a/a/h;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alensw/cloud/a/an;->a:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->b:Lcom/a/a/a/l;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Object start expected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v1, "nextPageToken"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/cloud/a/an;->a:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/a/a/a/h;->f()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->c:Lcom/a/a/a/l;

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/a/a/a/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    const-string v1, "items"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/a/a/a/h;->c()Lcom/a/a/a/l;

    move-result-object v1

    sget-object v2, Lcom/a/a/a/l;->d:Lcom/a/a/a/l;

    if-ne v1, v2, :cond_0

    :goto_1
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->e:Lcom/a/a/a/l;

    if-eq v0, v1, :cond_1

    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    iget-object v1, p0, Lcom/alensw/cloud/a/an;->c:Lcom/alensw/cloud/a/am;

    invoke-static {v1, p1, v0}, Lcom/alensw/cloud/a/am;->a(Lcom/alensw/cloud/a/am;Lcom/a/a/a/h;Landroid/content/ContentValues;)V

    iget-object v1, p0, Lcom/alensw/cloud/a/an;->b:Lcom/alensw/cloud/a/az;

    invoke-virtual {v1, v0}, Lcom/alensw/cloud/a/az;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/alensw/cloud/a/an;->a()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/a/a/a/h;->b()Lcom/a/a/a/h;

    goto :goto_0

    :cond_3
    return-void
.end method
