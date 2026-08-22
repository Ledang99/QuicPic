.class public Lcom/alensw/b/i/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Ljava/lang/Object;

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/alensw/b/i/c;->a:[Ljava/lang/Object;

    return-void
.end method

.method private c(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/alensw/b/i/c;->b:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/alensw/b/i/c;->a:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/alensw/b/i/c;->b:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/alensw/b/i/c;->b:I

    add-int/lit8 v2, v0, -0x1

    iget-object v0, p0, Lcom/alensw/b/i/c;->a:[Ljava/lang/Object;

    aget-object v0, v0, v2

    iget-object v3, p0, Lcom/alensw/b/i/c;->a:[Ljava/lang/Object;

    aput-object v1, v3, v2

    iget v1, p0, Lcom/alensw/b/i/c;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alensw/b/i/c;->b:I

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/alensw/b/i/c;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/alensw/b/i/c;->a(Ljava/lang/Object;)V

    const-string v0, "Pool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already in pool"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/alensw/b/i/c;->b:I

    iget-object v1, p0, Lcom/alensw/b/i/c;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/alensw/b/i/c;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/alensw/b/i/c;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alensw/b/i/c;->b:I

    aput-object p1, v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/alensw/b/i/c;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
