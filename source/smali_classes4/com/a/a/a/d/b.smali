.class final Lcom/a/a/a/d/b;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lcom/a/a/a/d/f;

.field protected final b:Lcom/a/a/a/d/b;

.field private final c:I


# direct methods
.method constructor <init>(Lcom/a/a/a/d/f;Lcom/a/a/a/d/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/a/d/b;->a:Lcom/a/a/a/d/f;

    iput-object p2, p0, Lcom/a/a/a/d/b;->b:Lcom/a/a/a/d/b;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/a/a/a/d/b;->c:I

    return-void

    :cond_0
    iget v0, p2, Lcom/a/a/a/d/b;->c:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/a/a/a/d/b;->c:I

    return v0
.end method

.method public a(III)Lcom/a/a/a/d/f;
    .locals 3

    iget-object v0, p0, Lcom/a/a/a/d/b;->a:Lcom/a/a/a/d/f;

    invoke-virtual {v0}, Lcom/a/a/a/d/f;->hashCode()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/a/a/a/d/b;->a:Lcom/a/a/a/d/f;

    invoke-virtual {v0, p2, p3}, Lcom/a/a/a/d/f;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/a/d/b;->a:Lcom/a/a/a/d/f;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/d/b;->b:Lcom/a/a/a/d/b;

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_3

    iget-object v0, v1, Lcom/a/a/a/d/b;->a:Lcom/a/a/a/d/f;

    invoke-virtual {v0}, Lcom/a/a/a/d/f;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_2

    invoke-virtual {v0, p2, p3}, Lcom/a/a/a/d/f;->a(II)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    iget-object v0, v1, Lcom/a/a/a/d/b;->b:Lcom/a/a/a/d/b;

    move-object v1, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I[II)Lcom/a/a/a/d/f;
    .locals 3

    iget-object v0, p0, Lcom/a/a/a/d/b;->a:Lcom/a/a/a/d/f;

    invoke-virtual {v0}, Lcom/a/a/a/d/f;->hashCode()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/a/a/a/d/b;->a:Lcom/a/a/a/d/f;

    invoke-virtual {v0, p2, p3}, Lcom/a/a/a/d/f;->a([II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/a/d/b;->a:Lcom/a/a/a/d/f;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/d/b;->b:Lcom/a/a/a/d/b;

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_3

    iget-object v0, v1, Lcom/a/a/a/d/b;->a:Lcom/a/a/a/d/f;

    invoke-virtual {v0}, Lcom/a/a/a/d/f;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_2

    invoke-virtual {v0, p2, p3}, Lcom/a/a/a/d/f;->a([II)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    iget-object v0, v1, Lcom/a/a/a/d/b;->b:Lcom/a/a/a/d/b;

    move-object v1, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
