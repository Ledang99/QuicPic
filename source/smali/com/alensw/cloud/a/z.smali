.class Lcom/alensw/cloud/a/z;
.super Lcom/alensw/cloud/a/by;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alensw/cloud/a/az;

.field final synthetic c:Lcom/alensw/cloud/a/x;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/a/x;ILcom/alensw/b/e/f;Ljava/lang/String;Lcom/alensw/cloud/a/az;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a/z;->c:Lcom/alensw/cloud/a/x;

    iput-object p4, p0, Lcom/alensw/cloud/a/z;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/alensw/cloud/a/z;->b:Lcom/alensw/cloud/a/az;

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

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/a/a/a/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    const-string v1, "photos"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/a/a/a/h;->c()Lcom/a/a/a/l;

    move-result-object v1

    sget-object v2, Lcom/a/a/a/l;->d:Lcom/a/a/a/l;

    if-ne v1, v2, :cond_1

    :goto_1
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->e:Lcom/a/a/a/l;

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    iget-object v1, p0, Lcom/alensw/cloud/a/z;->c:Lcom/alensw/cloud/a/x;

    iget-object v2, p0, Lcom/alensw/cloud/a/z;->a:Ljava/lang/String;

    invoke-static {v1, p1, v2, v0}, Lcom/alensw/cloud/a/x;->a(Lcom/alensw/cloud/a/x;Lcom/a/a/a/h;Ljava/lang/String;Landroid/content/ContentValues;)V

    iget-object v1, p0, Lcom/alensw/cloud/a/z;->b:Lcom/alensw/cloud/a/az;

    invoke-virtual {v1, v0}, Lcom/alensw/cloud/a/az;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/alensw/cloud/a/z;->a()V

    goto :goto_1

    :cond_1
    const-string v1, "total_pages"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/a/a/a/h;->b()Lcom/a/a/a/h;

    goto :goto_0

    :cond_2
    return-void
.end method
