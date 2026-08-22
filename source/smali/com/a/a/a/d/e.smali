.class final Lcom/a/a/a/d/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/a/a/a/d/e;

.field private final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/a/a/a/d/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/a/d/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/a/a/a/d/e;->b:Lcom/a/a/a/d/e;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/a/a/a/d/e;->c:I

    return-void

    :cond_0
    iget v0, p2, Lcom/a/a/a/d/e;->c:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/d/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a([CII)Ljava/lang/String;
    .locals 5

    iget-object v1, p0, Lcom/a/a/a/d/e;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/a/a/a/d/e;->b:Lcom/a/a/a/d/e;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, p3, :cond_2

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v4, p2, v2

    aget-char v4, p1, v4

    if-eq v3, v4, :cond_1

    :goto_1
    if-ne v2, p3, :cond_2

    :goto_2
    return-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p3, :cond_0

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/a/a/a/d/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/a/a/d/e;->b()Lcom/a/a/a/d/e;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Lcom/a/a/a/d/e;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/d/e;->b:Lcom/a/a/a/d/e;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/a/a/a/d/e;->c:I

    return v0
.end method
