.class public Lcom/alensw/b/i/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:[I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/alensw/b/i/b;->a:[I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/b/i/b;->d:I

    iput v0, p0, Lcom/alensw/b/i/b;->c:I

    iput v0, p0, Lcom/alensw/b/i/b;->b:I

    return-void
.end method

.method public a(I)Z
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/alensw/b/i/b;->c:I

    move v2, v0

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/alensw/b/i/b;->b:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/alensw/b/i/b;->a:[I

    aget v3, v3, v2

    if-ne v3, p1, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/alensw/b/i/b;->a:[I

    array-length v3, v3

    if-lt v2, v3, :cond_2

    move v2, v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b()I
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/alensw/b/i/b;->b:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/b/i/b;->a:[I

    iget v2, p0, Lcom/alensw/b/i/b;->c:I

    aget v0, v0, v2

    iget-object v2, p0, Lcom/alensw/b/i/b;->a:[I

    iget v3, p0, Lcom/alensw/b/i/b;->c:I

    aput v1, v2, v3

    iget v1, p0, Lcom/alensw/b/i/b;->c:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/alensw/b/i/b;->a:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/alensw/b/i/b;->c:I

    iget v1, p0, Lcom/alensw/b/i/b;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alensw/b/i/b;->b:I

    :goto_0
    return v0

    :cond_0
    const-string v0, "IntQueue"

    const-string v2, "empty!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method public b(I)V
    .locals 2

    iget v0, p0, Lcom/alensw/b/i/b;->b:I

    iget-object v1, p0, Lcom/alensw/b/i/b;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/b/i/b;->a:[I

    iget v1, p0, Lcom/alensw/b/i/b;->d:I

    aput p1, v0, v1

    iget v0, p0, Lcom/alensw/b/i/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/alensw/b/i/b;->a:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/alensw/b/i/b;->d:I

    iget v0, p0, Lcom/alensw/b/i/b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alensw/b/i/b;->b:I

    :goto_0
    return-void

    :cond_0
    const-string v0, "IntQueue"

    const-string v1, "full!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/alensw/b/i/b;->b:I

    return v0
.end method
