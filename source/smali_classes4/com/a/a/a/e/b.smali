.class public Lcom/a/a/a/e/b;
.super Ljava/lang/Object;


# instance fields
.field protected final a:[[B

.field protected final b:[[C


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/a/a/a/e/c;->values()[Lcom/a/a/a/e/c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/a/a/a/e/b;->a:[[B

    invoke-static {}, Lcom/a/a/a/e/d;->values()[Lcom/a/a/a/e/d;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [[C

    iput-object v0, p0, Lcom/a/a/a/e/b;->b:[[C

    return-void
.end method

.method private a(I)[B
    .locals 1

    new-array v0, p1, [B

    return-object v0
.end method

.method private b(I)[C
    .locals 1

    new-array v0, p1, [C

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/a/a/a/e/c;[B)V
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/e/b;->a:[[B

    invoke-virtual {p1}, Lcom/a/a/a/e/c;->ordinal()I

    move-result v1

    aput-object p2, v0, v1

    return-void
.end method

.method public final a(Lcom/a/a/a/e/d;[C)V
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/e/b;->b:[[C

    invoke-virtual {p1}, Lcom/a/a/a/e/d;->ordinal()I

    move-result v1

    aput-object p2, v0, v1

    return-void
.end method

.method public final a(Lcom/a/a/a/e/c;)[B
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/a/a/a/e/b;->a(Lcom/a/a/a/e/c;I)[B

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/a/a/a/e/c;I)[B
    .locals 4

    invoke-virtual {p1}, Lcom/a/a/a/e/c;->ordinal()I

    move-result v1

    iget v0, p1, Lcom/a/a/a/e/c;->e:I

    if-ge p2, v0, :cond_0

    move p2, v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/e/b;->a:[[B

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    array-length v2, v0

    if-ge v2, p2, :cond_2

    :cond_1
    invoke-direct {p0, p2}, Lcom/a/a/a/e/b;->a(I)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    iget-object v2, p0, Lcom/a/a/a/e/b;->a:[[B

    const/4 v3, 0x0

    aput-object v3, v2, v1

    goto :goto_0
.end method

.method public final a(Lcom/a/a/a/e/d;)[C
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/a/a/a/e/b;->a(Lcom/a/a/a/e/d;I)[C

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/a/a/a/e/d;I)[C
    .locals 4

    iget v0, p1, Lcom/a/a/a/e/d;->e:I

    if-le v0, p2, :cond_0

    iget p2, p1, Lcom/a/a/a/e/d;->e:I

    :cond_0
    invoke-virtual {p1}, Lcom/a/a/a/e/d;->ordinal()I

    move-result v1

    iget-object v0, p0, Lcom/a/a/a/e/b;->b:[[C

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    array-length v2, v0

    if-ge v2, p2, :cond_2

    :cond_1
    invoke-direct {p0, p2}, Lcom/a/a/a/e/b;->b(I)[C

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    iget-object v2, p0, Lcom/a/a/a/e/b;->b:[[C

    const/4 v3, 0x0

    aput-object v3, v2, v1

    goto :goto_0
.end method
