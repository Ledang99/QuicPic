.class public La/d/h;
.super Ljava/lang/Object;

# interfaces
.implements La/d/bf;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:I


# virtual methods
.method public a(La/d/bd;)Z
    .locals 2

    invoke-virtual {p1}, La/d/bd;->x()I

    move-result v0

    iget v1, p0, La/d/h;->b:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
