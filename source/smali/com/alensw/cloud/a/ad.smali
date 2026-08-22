.class Lcom/alensw/cloud/a/ad;
.super Lcom/alensw/cloud/a/by;


# instance fields
.field final synthetic a:Lcom/alensw/cloud/a/aa;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/a/aa;ILcom/alensw/b/e/f;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a/ad;->a:Lcom/alensw/cloud/a/aa;

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/cloud/a/by;-><init>(Lcom/alensw/cloud/a/bv;ILcom/alensw/b/e/f;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/a/a/a/h;)V
    .locals 5

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->b:Lcom/a/a/a/l;

    invoke-static {v0, v1}, Lcom/alensw/cloud/a/bv;->a(Lcom/a/a/a/l;Lcom/a/a/a/l;)V

    const-string v2, ""

    const-string v1, ""

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v3

    sget-object v4, Lcom/a/a/a/l;->c:Lcom/a/a/a/l;

    if-eq v3, v4, :cond_3

    invoke-virtual {p1}, Lcom/a/a/a/h;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    const-string v4, "stat"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/a/a/a/h;->f()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v4, "code"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/a/a/a/h;->l()I

    move-result v0

    goto :goto_0

    :cond_1
    const-string v4, "message"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/a/a/a/h;->f()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/a/a/a/h;->b()Lcom/a/a/a/h;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/alensw/cloud/a/ad;->a:Lcom/alensw/cloud/a/aa;

    invoke-virtual {v3, v2, v0, v1}, Lcom/alensw/cloud/a/aa;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
