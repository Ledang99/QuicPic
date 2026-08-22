.class public Lcom/alensw/b/j/c;
.super Landroid/database/AbstractCursor;


# instance fields
.field private final a:[Ljava/lang/String;

.field private b:[Ljava/lang/Object;

.field private c:I

.field private final d:I


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/alensw/b/j/c;-><init>([Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/alensw/b/j/c;->c:I

    iput-object p1, p0, Lcom/alensw/b/j/c;->a:[Ljava/lang/String;

    array-length v1, p1

    iput v1, p0, Lcom/alensw/b/j/c;->d:I

    if-ge p2, v0, :cond_0

    move p2, v0

    :cond_0
    iget v0, p0, Lcom/alensw/b/j/c;->d:I

    mul-int/2addr v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/alensw/b/j/c;->b:[Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/alensw/b/j/c;)I
    .locals 1

    iget v0, p0, Lcom/alensw/b/j/c;->d:I

    return v0
.end method

.method private a(I)Ljava/lang/Object;
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/alensw/b/j/c;->d:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested column: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", # of columns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alensw/b/j/c;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/alensw/b/j/c;->mPos:I

    if-gez v0, :cond_2

    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "Before first row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lcom/alensw/b/j/c;->mPos:I

    iget v1, p0, Lcom/alensw/b/j/c;->c:I

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "After last row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/alensw/b/j/c;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/alensw/b/j/c;->mPos:I

    iget v2, p0, Lcom/alensw/b/j/c;->d:I

    mul-int/2addr v1, v2

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private b(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alensw/b/j/c;->b:[Ljava/lang/Object;

    array-length v0, v0

    if-le p1, v0, :cond_0

    iget-object v1, p0, Lcom/alensw/b/j/c;->b:[Ljava/lang/Object;

    iget-object v0, p0, Lcom/alensw/b/j/c;->b:[Ljava/lang/Object;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    if-ge v0, p1, :cond_1

    :goto_0
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/alensw/b/j/c;->b:[Ljava/lang/Object;

    iget-object v0, p0, Lcom/alensw/b/j/c;->b:[Ljava/lang/Object;

    array-length v2, v1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void

    :cond_1
    move p1, v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alensw/b/j/c;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/j/c;->b:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/alensw/b/j/c;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/j/c;->a:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/alensw/b/j/d;
    .locals 3

    iget v0, p0, Lcom/alensw/b/j/c;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alensw/b/j/c;->c:I

    iget v1, p0, Lcom/alensw/b/j/c;->c:I

    iget v2, p0, Lcom/alensw/b/j/c;->d:I

    mul-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/alensw/b/j/c;->b(I)V

    new-instance v1, Lcom/alensw/b/j/d;

    invoke-direct {v1, p0, v0}, Lcom/alensw/b/j/d;-><init>(Lcom/alensw/b/j/c;I)V

    return-object v1
.end method

.method public getBlob(I)[B
    .locals 1

    invoke-direct {p0, p1}, Lcom/alensw/b/j/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/j/c;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/alensw/b/j/c;->c:I

    return v0
.end method

.method public getDouble(I)D
    .locals 2

    invoke-direct {p0, p1}, Lcom/alensw/b/j/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getFloat(I)F
    .locals 2

    invoke-direct {p0, p1}, Lcom/alensw/b/j/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/alensw/b/j/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/alensw/b/j/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 2

    invoke-direct {p0, p1}, Lcom/alensw/b/j/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alensw/b/j/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/alensw/b/j/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
