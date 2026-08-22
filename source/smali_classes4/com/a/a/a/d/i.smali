.class public final Lcom/a/a/a/d/i;
.super Lcom/a/a/a/d/f;


# instance fields
.field final c:I

.field final d:I

.field final e:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/a/a/a/d/f;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/a/a/a/d/i;->c:I

    iput p4, p0, Lcom/a/a/a/d/i;->d:I

    iput p5, p0, Lcom/a/a/a/d/i;->e:I

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a([II)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    aget v2, p1, v1

    iget v3, p0, Lcom/a/a/a/d/i;->c:I

    if-ne v2, v3, :cond_0

    aget v2, p1, v0

    iget v3, p0, Lcom/a/a/a/d/i;->d:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    aget v2, p1, v2

    iget v3, p0, Lcom/a/a/a/d/i;->e:I

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
