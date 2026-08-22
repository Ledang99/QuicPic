.class Lcom/alensw/a/b;
.super Lcom/alensw/b/c/g;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alensw/b/c/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/DataInputStream;)Lcom/alensw/a/a;
    .locals 3

    new-instance v0, Lcom/alensw/a/a;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/alensw/a/a;-><init>(II)V

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "Integer"

    return-object v0
.end method

.method public a(Lcom/alensw/a/e;)V
    .locals 3

    new-instance v0, Lcom/alensw/a/a;

    iget v1, p1, Lcom/alensw/a/e;->e:I

    invoke-virtual {p1}, Lcom/alensw/a/e;->i()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/alensw/a/a;-><init>(II)V

    invoke-virtual {p1}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v1, v0}, Lcom/alensw/b/c/g;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected a(Ljava/io/DataOutputStream;Lcom/alensw/a/a;)V
    .locals 1

    iget v0, p2, Lcom/alensw/a/a;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/io/DataOutputStream;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/alensw/a/a;

    invoke-virtual {p0, p1, p2}, Lcom/alensw/a/b;->a(Ljava/io/DataOutputStream;Lcom/alensw/a/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/alensw/b/c/g;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/a;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/alensw/a/a;->a:I

    if-ne v1, p2, :cond_0

    iget v0, v0, Lcom/alensw/a/a;->b:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic b(Ljava/io/DataInputStream;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alensw/a/b;->a(Ljava/io/DataInputStream;)Lcom/alensw/a/a;

    move-result-object v0

    return-object v0
.end method
