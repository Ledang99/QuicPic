.class public abstract Lcom/a/a/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field protected a:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(D)D
    .locals 1

    return-wide p1
.end method

.method public a(I)I
    .locals 0

    return p1
.end method

.method public a(J)J
    .locals 1

    return-wide p1
.end method

.method public abstract a()Lcom/a/a/a/l;
.end method

.method public abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public a(Lcom/a/a/a/i;)Z
    .locals 2

    iget v0, p0, Lcom/a/a/a/h;->a:I

    invoke-virtual {p1}, Lcom/a/a/a/i;->c()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Z)Z
    .locals 0

    return p1
.end method

.method protected b(Ljava/lang/String;)Lcom/a/a/a/g;
    .locals 2

    new-instance v0, Lcom/a/a/a/g;

    invoke-virtual {p0}, Lcom/a/a/a/h;->e()Lcom/a/a/a/f;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/a/a/a/g;-><init>(Ljava/lang/String;Lcom/a/a/a/f;)V

    return-object v0
.end method

.method public abstract b()Lcom/a/a/a/h;
.end method

.method public abstract c()Lcom/a/a/a/l;
.end method

.method public abstract close()V
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Lcom/a/a/a/f;
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()I
.end method

.method public abstract h()J
.end method

.method public abstract i()D
.end method

.method public j()Z
    .locals 4

    invoke-virtual {p0}, Lcom/a/a/a/h;->c()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->k:Lcom/a/a/a/l;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/a/a/a/l;->l:Lcom/a/a/a/l;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/a/a/a/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current token ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") not of boolean type"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/a/a/a/h;->e()Lcom/a/a/a/f;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/a/a/a/g;-><init>(Ljava/lang/String;Lcom/a/a/a/f;)V

    throw v1
.end method

.method public abstract k()Ljava/lang/Object;
.end method

.method public l()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/a/a/a/h;->a(I)I

    move-result v0

    return v0
.end method

.method public m()J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/h;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public n()D
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/h;->a(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/a/a/a/h;->a(Z)Z

    move-result v0

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/a/a/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
