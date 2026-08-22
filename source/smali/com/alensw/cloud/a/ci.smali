.class Lcom/alensw/cloud/a/ci;
.super Lcom/alensw/cloud/a/by;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:[Z

.field final synthetic c:Lcom/alensw/cloud/a/cc;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/a/cc;ILcom/alensw/b/e/f;[Ljava/lang/String;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a/ci;->c:Lcom/alensw/cloud/a/cc;

    iput-object p4, p0, Lcom/alensw/cloud/a/ci;->a:[Ljava/lang/String;

    iput-object p5, p0, Lcom/alensw/cloud/a/ci;->b:[Z

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/cloud/a/by;-><init>(Lcom/alensw/cloud/a/bv;ILcom/alensw/b/e/f;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    const/16 v0, 0x199

    if-ne p1, v0, :cond_0

    const-string v0, "DiskResourceAlreadyExistsError"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/a/ci;->b:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alensw/cloud/a/by;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

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

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/a/a/a/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    const-string v1, "href"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/a/ci;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/a/a/a/h;->f()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method
