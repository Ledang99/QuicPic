.class public final Lcom/a/a/a/d/a;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lcom/a/a/a/d/a;

.field protected final b:Ljava/util/concurrent/atomic/AtomicReference;

.field protected final c:Z

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:[I

.field protected h:[Lcom/a/a/a/d/f;

.field protected i:[Lcom/a/a/a/d/b;

.field protected j:I

.field protected k:I

.field private final l:I

.field private transient m:Z

.field private n:Z

.field private o:Z

.field private p:Z


# direct methods
.method private constructor <init>(IZI)V
    .locals 2

    const/16 v0, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/a/a/a/d/a;->a:Lcom/a/a/a/d/a;

    iput p3, p0, Lcom/a/a/a/d/a;->l:I

    iput-boolean p2, p0, Lcom/a/a/a/d/a;->c:Z

    if-ge p1, v0, :cond_1

    move p1, v0

    :cond_0
    :goto_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, p1}, Lcom/a/a/a/d/a;->e(I)Lcom/a/a/a/d/c;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/a/a/a/d/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    :cond_1
    add-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    :goto_1
    if-ge v0, p1, :cond_2

    add-int/2addr v0, v0

    goto :goto_1

    :cond_2
    move p1, v0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/a/a/a/d/a;ZILcom/a/a/a/d/c;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/a/d/a;->a:Lcom/a/a/a/d/a;

    iput p3, p0, Lcom/a/a/a/d/a;->l:I

    iput-boolean p2, p0, Lcom/a/a/a/d/a;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/d/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget v0, p4, Lcom/a/a/a/d/c;->a:I

    iput v0, p0, Lcom/a/a/a/d/a;->d:I

    iget v0, p4, Lcom/a/a/a/d/c;->b:I

    iput v0, p0, Lcom/a/a/a/d/a;->f:I

    iget-object v0, p4, Lcom/a/a/a/d/c;->c:[I

    iput-object v0, p0, Lcom/a/a/a/d/a;->g:[I

    iget-object v0, p4, Lcom/a/a/a/d/c;->d:[Lcom/a/a/a/d/f;

    iput-object v0, p0, Lcom/a/a/a/d/a;->h:[Lcom/a/a/a/d/f;

    iget-object v0, p4, Lcom/a/a/a/d/c;->e:[Lcom/a/a/a/d/b;

    iput-object v0, p0, Lcom/a/a/a/d/a;->i:[Lcom/a/a/a/d/b;

    iget v0, p4, Lcom/a/a/a/d/c;->f:I

    iput v0, p0, Lcom/a/a/a/d/a;->j:I

    iget v0, p4, Lcom/a/a/a/d/c;->g:I

    iput v0, p0, Lcom/a/a/a/d/a;->k:I

    iget v0, p4, Lcom/a/a/a/d/c;->h:I

    iput v0, p0, Lcom/a/a/a/d/a;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/a/d/a;->m:Z

    iput-boolean v1, p0, Lcom/a/a/a/d/a;->n:Z

    iput-boolean v1, p0, Lcom/a/a/a/d/a;->o:Z

    iput-boolean v1, p0, Lcom/a/a/a/d/a;->p:Z

    return-void
.end method

.method public static a()Lcom/a/a/a/d/a;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v2, v0

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    long-to-int v0, v0

    add-int/2addr v0, v2

    or-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/a/a/a/d/a;->a(I)Lcom/a/a/a/d/a;

    move-result-object v0

    return-object v0
.end method

.method protected static a(I)Lcom/a/a/a/d/a;
    .locals 3

    new-instance v0, Lcom/a/a/a/d/a;

    const/16 v1, 0x40

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/a/a/a/d/a;-><init>(IZI)V

    return-object v0
.end method

.method private static a(ILjava/lang/String;[II)Lcom/a/a/a/d/f;
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x4

    if-ge p3, v0, :cond_0

    packed-switch p3, :pswitch_data_0

    :cond_0
    new-array v2, p3, [I

    move v0, v1

    :goto_0
    if-ge v0, p3, :cond_1

    aget v1, p2, v0

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/a/a/a/d/g;

    aget v1, p2, v1

    invoke-direct {v0, p1, p0, v1}, Lcom/a/a/a/d/g;-><init>(Ljava/lang/String;II)V

    :goto_1
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/a/a/a/d/h;

    aget v1, p2, v1

    aget v2, p2, v2

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/a/a/a/d/h;-><init>(Ljava/lang/String;III)V

    goto :goto_1

    :pswitch_2
    new-instance v0, Lcom/a/a/a/d/i;

    aget v3, p2, v1

    aget v4, p2, v2

    const/4 v1, 0x2

    aget v5, p2, v1

    move-object v1, p1

    move v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/a/a/a/d/i;-><init>(Ljava/lang/String;IIII)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/a/a/a/d/j;

    invoke-direct {v0, p1, p0, v2, p3}, Lcom/a/a/a/d/j;-><init>(Ljava/lang/String;I[II)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(ILcom/a/a/a/d/f;)V
    .locals 7

    const/16 v6, 0xff

    const/4 v5, 0x1

    iget-boolean v0, p0, Lcom/a/a/a/d/a;->n:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/a/a/a/d/a;->h()V

    :cond_0
    iget-boolean v0, p0, Lcom/a/a/a/d/a;->m:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/a/a/a/d/a;->e()V

    :cond_1
    iget v0, p0, Lcom/a/a/a/d/a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/a/d/a;->d:I

    iget v0, p0, Lcom/a/a/a/d/a;->f:I

    and-int v1, p1, v0

    iget-object v0, p0, Lcom/a/a/a/d/a;->h:[Lcom/a/a/a/d/f;

    aget-object v0, v0, v1

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/a/a/a/d/a;->g:[I

    shl-int/lit8 v2, p1, 0x8

    aput v2, v0, v1

    iget-boolean v0, p0, Lcom/a/a/a/d/a;->o:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/a/a/a/d/a;->j()V

    :cond_2
    iget-object v0, p0, Lcom/a/a/a/d/a;->h:[Lcom/a/a/a/d/f;

    aput-object p2, v0, v1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/a/a/a/d/a;->g:[I

    array-length v0, v0

    iget v1, p0, Lcom/a/a/a/d/a;->d:I

    shr-int/lit8 v2, v0, 0x1

    if-le v1, v2, :cond_4

    shr-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/a/a/a/d/a;->d:I

    sub-int/2addr v0, v1

    if-le v2, v0, :cond_a

    iput-boolean v5, p0, Lcom/a/a/a/d/a;->m:Z

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/a/a/a/d/a;->p:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/a/a/a/d/a;->i()V

    :cond_6
    iget v0, p0, Lcom/a/a/a/d/a;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/a/d/a;->j:I

    iget-object v0, p0, Lcom/a/a/a/d/a;->g:[I

    aget v2, v0, v1

    and-int/lit16 v0, v2, 0xff

    if-nez v0, :cond_9

    iget v0, p0, Lcom/a/a/a/d/a;->k:I

    const/16 v3, 0xfe

    if-gt v0, v3, :cond_8

    iget v0, p0, Lcom/a/a/a/d/a;->k:I

    iget v3, p0, Lcom/a/a/a/d/a;->k:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/a/a/a/d/a;->k:I

    iget-object v3, p0, Lcom/a/a/a/d/a;->i:[Lcom/a/a/a/d/b;

    array-length v3, v3

    if-lt v0, v3, :cond_7

    invoke-direct {p0}, Lcom/a/a/a/d/a;->k()V

    :cond_7
    :goto_2
    iget-object v3, p0, Lcom/a/a/a/d/a;->g:[I

    and-int/lit16 v2, v2, -0x100

    add-int/lit8 v4, v0, 0x1

    or-int/2addr v2, v4

    aput v2, v3, v1

    :goto_3
    new-instance v1, Lcom/a/a/a/d/b;

    iget-object v2, p0, Lcom/a/a/a/d/a;->i:[Lcom/a/a/a/d/b;

    aget-object v2, v2, v0

    invoke-direct {v1, p2, v2}, Lcom/a/a/a/d/b;-><init>(Lcom/a/a/a/d/f;Lcom/a/a/a/d/b;)V

    iget-object v2, p0, Lcom/a/a/a/d/a;->i:[Lcom/a/a/a/d/b;

    aput-object v1, v2, v0

    invoke-virtual {v1}, Lcom/a/a/a/d/b;->a()I

    move-result v0

    iget v1, p0, Lcom/a/a/a/d/a;->e:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/a/a/a/d/a;->e:I

    iget v0, p0, Lcom/a/a/a/d/a;->e:I

    if-le v0, v6, :cond_3

    invoke-virtual {p0, v6}, Lcom/a/a/a/d/a;->d(I)V

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/a/a/a/d/a;->g()I

    move-result v0

    goto :goto_2

    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_a
    iget v0, p0, Lcom/a/a/a/d/a;->j:I

    if-lt v0, v1, :cond_4

    iput-boolean v5, p0, Lcom/a/a/a/d/a;->m:Z

    goto :goto_1
.end method

.method private a(Lcom/a/a/a/d/c;)V
    .locals 3

    iget v1, p1, Lcom/a/a/a/d/c;->a:I

    iget-object v0, p0, Lcom/a/a/a/d/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/d/c;

    iget v2, v0, Lcom/a/a/a/d/c;->a:I

    if-gt v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v2, 0x1770

    if-gt v1, v2, :cond_1

    iget v1, p1, Lcom/a/a/a/d/c;->h:I

    const/16 v2, 0x3f

    if-le v1, v2, :cond_2

    :cond_1
    const/16 v1, 0x40

    invoke-direct {p0, v1}, Lcom/a/a/a/d/a;->e(I)Lcom/a/a/a/d/c;

    move-result-object p1

    :cond_2
    iget-object v1, p0, Lcom/a/a/a/d/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static d()Lcom/a/a/a/d/f;
    .locals 1

    invoke-static {}, Lcom/a/a/a/d/g;->b()Lcom/a/a/a/d/g;

    move-result-object v0

    return-object v0
.end method

.method private e(I)Lcom/a/a/a/d/c;
    .locals 9

    const/4 v1, 0x0

    new-instance v0, Lcom/a/a/a/d/c;

    add-int/lit8 v2, p1, -0x1

    new-array v3, p1, [I

    new-array v4, p1, [Lcom/a/a/a/d/f;

    const/4 v5, 0x0

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-direct/range {v0 .. v8}, Lcom/a/a/a/d/c;-><init>(II[I[Lcom/a/a/a/d/f;[Lcom/a/a/a/d/b;III)V

    return-object v0
.end method

.method private e()V
    .locals 13

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/a/a/a/d/a;->m:Z

    iput-boolean v1, p0, Lcom/a/a/a/d/a;->o:Z

    iget-object v0, p0, Lcom/a/a/a/d/a;->g:[I

    array-length v3, v0

    add-int v0, v3, v3

    const/high16 v2, 0x10000

    if-le v0, v2, :cond_1

    invoke-direct {p0}, Lcom/a/a/a/d/a;->f()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/a/a/a/d/a;->g:[I

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/a/a/a/d/a;->f:I

    iget-object v4, p0, Lcom/a/a/a/d/a;->h:[Lcom/a/a/a/d/f;

    new-array v0, v0, [Lcom/a/a/a/d/f;

    iput-object v0, p0, Lcom/a/a/a/d/a;->h:[Lcom/a/a/a/d/f;

    move v2, v1

    move v0, v1

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v5, v4, v2

    if-eqz v5, :cond_2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v5}, Lcom/a/a/a/d/f;->hashCode()I

    move-result v6

    iget v7, p0, Lcom/a/a/a/d/a;->f:I

    and-int/2addr v7, v6

    iget-object v8, p0, Lcom/a/a/a/d/a;->h:[Lcom/a/a/a/d/f;

    aput-object v5, v8, v7

    iget-object v5, p0, Lcom/a/a/a/d/a;->g:[I

    shl-int/lit8 v6, v6, 0x8

    aput v6, v5, v7

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget v5, p0, Lcom/a/a/a/d/a;->k:I

    if-nez v5, :cond_4

    iput v1, p0, Lcom/a/a/a/d/a;->e:I

    goto :goto_0

    :cond_4
    iput v1, p0, Lcom/a/a/a/d/a;->j:I

    iput v1, p0, Lcom/a/a/a/d/a;->k:I

    iput-boolean v1, p0, Lcom/a/a/a/d/a;->p:Z

    iget-object v6, p0, Lcom/a/a/a/d/a;->i:[Lcom/a/a/a/d/b;

    array-length v2, v6

    new-array v2, v2, [Lcom/a/a/a/d/b;

    iput-object v2, p0, Lcom/a/a/a/d/a;->i:[Lcom/a/a/a/d/b;

    move v4, v1

    move v2, v0

    :goto_2
    if-ge v4, v5, :cond_a

    aget-object v0, v6, v4

    move-object v12, v0

    move v0, v2

    move-object v2, v12

    :goto_3
    if-eqz v2, :cond_9

    add-int/lit8 v3, v0, 0x1

    iget-object v7, v2, Lcom/a/a/a/d/b;->a:Lcom/a/a/a/d/f;

    invoke-virtual {v7}, Lcom/a/a/a/d/f;->hashCode()I

    move-result v0

    iget v8, p0, Lcom/a/a/a/d/a;->f:I

    and-int/2addr v8, v0

    iget-object v9, p0, Lcom/a/a/a/d/a;->g:[I

    aget v9, v9, v8

    iget-object v10, p0, Lcom/a/a/a/d/a;->h:[Lcom/a/a/a/d/f;

    aget-object v10, v10, v8

    if-nez v10, :cond_5

    iget-object v9, p0, Lcom/a/a/a/d/a;->g:[I

    shl-int/lit8 v0, v0, 0x8

    aput v0, v9, v8

    iget-object v0, p0, Lcom/a/a/a/d/a;->h:[Lcom/a/a/a/d/f;

    aput-object v7, v0, v8

    move v0, v1

    :goto_4
    iget-object v1, v2, Lcom/a/a/a/d/b;->b:Lcom/a/a/a/d/b;

    move-object v2, v1

    move v1, v0

    move v0, v3

    goto :goto_3

    :cond_5
    iget v0, p0, Lcom/a/a/a/d/a;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/a/d/a;->j:I

    and-int/lit16 v0, v9, 0xff

    if-nez v0, :cond_8

    iget v0, p0, Lcom/a/a/a/d/a;->k:I

    const/16 v10, 0xfe

    if-gt v0, v10, :cond_7

    iget v0, p0, Lcom/a/a/a/d/a;->k:I

    iget v10, p0, Lcom/a/a/a/d/a;->k:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/a/a/a/d/a;->k:I

    iget-object v10, p0, Lcom/a/a/a/d/a;->i:[Lcom/a/a/a/d/b;

    array-length v10, v10

    if-lt v0, v10, :cond_6

    invoke-direct {p0}, Lcom/a/a/a/d/a;->k()V

    :cond_6
    :goto_5
    iget-object v10, p0, Lcom/a/a/a/d/a;->g:[I

    and-int/lit16 v9, v9, -0x100

    add-int/lit8 v11, v0, 0x1

    or-int/2addr v9, v11

    aput v9, v10, v8

    :goto_6
    new-instance v8, Lcom/a/a/a/d/b;

    iget-object v9, p0, Lcom/a/a/a/d/a;->i:[Lcom/a/a/a/d/b;

    aget-object v9, v9, v0

    invoke-direct {v8, v7, v9}, Lcom/a/a/a/d/b;-><init>(Lcom/a/a/a/d/f;Lcom/a/a/a/d/b;)V

    iget-object v7, p0, Lcom/a/a/a/d/a;->i:[Lcom/a/a/a/d/b;

    aput-object v8, v7, v0

    invoke-virtual {v8}, Lcom/a/a/a/d/b;->a()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_4

    :cond_7
    invoke-direct {p0}, Lcom/a/a/a/d/a;->g()I

    move-result v0

    goto :goto_5

    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v0

    goto :goto_2

    :cond_a
    iput v1, p0, Lcom/a/a/a/d/a;->e:I

    iget v0, p0, Lcom/a/a/a/d/a;->d:I

    if-eq v2, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal error: count after rehash "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; should be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/a/a/a/d/a;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private f()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput v1, p0, Lcom/a/a/a/d/a;->d:I

    iput v1, p0, Lcom/a/a/a/d/a;->e:I

    iget-object v0, p0, Lcom/a/a/a/d/a;->g:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/a/a/a/d/a;->h:[Lcom/a/a/a/d/f;

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/a/a/a/d/a;->i:[Lcom/a/a/a/d/b;

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput v1, p0, Lcom/a/a/a/d/a;->j:I

    iput v1, p0, Lcom/a/a/a/d/a;->k:I

    return-void
.end method

.method private g()I
    .locals 6

    iget-object v4, p0, Lcom/a/a/a/d/a;->i:[Lcom/a/a/a/d/b;

    const v3, 0x7fffffff

    const/4 v0, -0x1

    const/4 v1, 0x0

    iget v5, p0, Lcom/a/a/a/d/a;->k:I

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v2, v4, v1

    invoke-virtual {v2}, Lcom/a/a/a/d/b;->a()I

    move-result v2

    if-ge v2, v3, :cond_2

    const/4 v0, 0x1

    if-ne v2, v0, :cond_0

    :goto_1
    return v1

    :cond_0
    move v0, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/d/a;->g:[I

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/a/a/a/e/a;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/d/a;->g:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/a/d/a;->n:Z

    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/d/a;->i:[Lcom/a/a/a/d/b;

    if-nez v0, :cond_0

    const/16 v0, 0x20

    new-array v0, v0, [Lcom/a/a/a/d/b;

    iput-object v0, p0, Lcom/a/a/a/d/a;->i:[Lcom/a/a/a/d/b;

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/a/d/a;->p:Z

    return-void

    :cond_0
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/a/a/a/e/a;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/a/d/b;

    iput-object v0, p0, Lcom/a/a/a/d/a;->i:[Lcom/a/a/a/d/b;

    goto :goto_0
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/d/a;->h:[Lcom/a/a/a/d/f;

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/a/a/a/e/a;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/a/d/f;

    iput-object v0, p0, Lcom/a/a/a/d/a;->h:[Lcom/a/a/a/d/f;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/a/d/a;->o:Z

    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/d/a;->i:[Lcom/a/a/a/d/b;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/a/a/a/e/a;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/a/d/b;

    iput-object v0, p0, Lcom/a/a/a/d/a;->i:[Lcom/a/a/a/d/b;

    return-void
.end method


# virtual methods
.method public a(ZZ)Lcom/a/a/a/d/a;
    .locals 3

    new-instance v1, Lcom/a/a/a/d/a;

    iget v2, p0, Lcom/a/a/a/d/a;->l:I

    iget-object v0, p0, Lcom/a/a/a/d/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/d/c;

    invoke-direct {v1, p0, p2, v2, v0}, Lcom/a/a/a/d/a;-><init>(Lcom/a/a/a/d/a;ZILcom/a/a/a/d/c;)V

    return-object v1
.end method

.method public a(II)Lcom/a/a/a/d/f;
    .locals 5

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/a/a/a/d/a;->c(I)I

    move-result v0

    :goto_0
    iget v2, p0, Lcom/a/a/a/d/a;->f:I

    and-int/2addr v2, v0

    iget-object v3, p0, Lcom/a/a/a/d/a;->g:[I

    aget v3, v3, v2

    shr-int/lit8 v4, v3, 0x8

    xor-int/2addr v4, v0

    shl-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/a/a/a/d/a;->h:[Lcom/a/a/a/d/f;

    aget-object v2, v4, v2

    if-nez v2, :cond_1

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/a/a/a/d/a;->b(II)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p1, p2}, Lcom/a/a/a/d/f;->a(II)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v0, v2

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    move-object v0, v1

    goto :goto_1

    :cond_3
    and-int/lit16 v2, v3, 0xff

    if-lez v2, :cond_4

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/a/a/a/d/a;->i:[Lcom/a/a/a/d/b;

    aget-object v2, v3, v2

    if-eqz v2, :cond_4

    invoke-virtual {v2, v0, p1, p2}, Lcom/a/a/a/d/b;->a(III)Lcom/a/a/a/d/f;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public a(Ljava/lang/String;[II)Lcom/a/a/a/d/f;
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/a/a/a/d/a;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/a/a/a/e/g;->a:Lcom/a/a/a/e/g;

    invoke-virtual {v0, p1}, Lcom/a/a/a/e/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v0, 0x3

    if-ge p3, v0, :cond_2

    if-ne p3, v2, :cond_1

    aget v0, p2, v1

    invoke-virtual {p0, v0}, Lcom/a/a/a/d/a;->c(I)I

    move-result v0

    :goto_0
    invoke-static {v0, p1, p2, p3}, Lcom/a/a/a/d/a;->a(ILjava/lang/String;[II)Lcom/a/a/a/d/f;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/a/a/a/d/a;->a(ILcom/a/a/a/d/f;)V

    return-object v1

    :cond_1
    aget v0, p2, v1

    aget v1, p2, v2

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/d/a;->b(II)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/a/a/a/d/a;->b([II)I

    move-result v0

    goto :goto_0
.end method

.method public a([II)Lcom/a/a/a/d/f;
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x3

    if-ge p2, v2, :cond_2

    aget v1, p1, v0

    const/4 v2, 0x2

    if-ge p2, v2, :cond_1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/a/a/a/d/a;->a(II)Lcom/a/a/a/d/f;

    move-result-object v0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x1

    aget v0, p1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/a/a/a/d/a;->b([II)I

    move-result v2

    iget v0, p0, Lcom/a/a/a/d/a;->f:I

    and-int/2addr v0, v2

    iget-object v3, p0, Lcom/a/a/a/d/a;->g:[I

    aget v3, v3, v0

    shr-int/lit8 v4, v3, 0x8

    xor-int/2addr v4, v2

    shl-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/a/a/a/d/a;->h:[Lcom/a/a/a/d/f;

    aget-object v0, v4, v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/a/a/a/d/f;->a([II)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    and-int/lit16 v0, v3, 0xff

    if-lez v0, :cond_5

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lcom/a/a/a/d/a;->i:[Lcom/a/a/a/d/b;

    aget-object v0, v3, v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2, p1, p2}, Lcom/a/a/a/d/b;->a(I[II)Lcom/a/a/a/d/f;

    move-result-object v0

    goto :goto_1

    :cond_4
    if-nez v3, :cond_3

    move-object v0, v1

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public b(II)I
    .locals 2

    ushr-int/lit8 v0, p1, 0xf

    xor-int/2addr v0, p1

    mul-int/lit8 v1, p2, 0x21

    add-int/2addr v0, v1

    iget v1, p0, Lcom/a/a/a/d/a;->l:I

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x7

    add-int/2addr v0, v1

    return v0
.end method

.method public b([II)I
    .locals 3

    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    const/4 v1, 0x0

    aget v1, p1, v1

    iget v2, p0, Lcom/a/a/a/d/a;->l:I

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v1, 0x9

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x21

    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/2addr v1, v2

    const v2, 0x1003f

    mul-int/2addr v1, v2

    ushr-int/lit8 v2, v1, 0xf

    add-int/2addr v1, v2

    const/4 v2, 0x2

    aget v2, p1, v2

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v1, 0x11

    add-int/2addr v1, v2

    :goto_0
    if-ge v0, p2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    aget v2, p1, v0

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v1, 0x3

    add-int/2addr v1, v2

    shl-int/lit8 v2, v1, 0x7

    xor-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    ushr-int/lit8 v0, v1, 0xf

    add-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x9

    xor-int/2addr v0, v1

    return v0
.end method

.method public b(I)Lcom/a/a/a/d/f;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/a/a/a/d/a;->c(I)I

    move-result v2

    iget v1, p0, Lcom/a/a/a/d/a;->f:I

    and-int/2addr v1, v2

    iget-object v3, p0, Lcom/a/a/a/d/a;->g:[I

    aget v3, v3, v1

    shr-int/lit8 v4, v3, 0x8

    xor-int/2addr v4, v2

    shl-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/a/a/a/d/a;->h:[Lcom/a/a/a/d/f;

    aget-object v1, v4, v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1, p1}, Lcom/a/a/a/d/f;->a(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_0

    :cond_3
    and-int/lit16 v1, v3, 0xff

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    iget-object v3, p0, Lcom/a/a/a/d/a;->i:[Lcom/a/a/a/d/b;

    aget-object v1, v3, v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v2, p1, v0}, Lcom/a/a/a/d/b;->a(III)Lcom/a/a/a/d/f;

    move-result-object v0

    goto :goto_0
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/a/a/a/d/a;->a:Lcom/a/a/a/d/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/a/d/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/d/a;->a:Lcom/a/a/a/d/a;

    new-instance v1, Lcom/a/a/a/d/c;

    invoke-direct {v1, p0}, Lcom/a/a/a/d/c;-><init>(Lcom/a/a/a/d/a;)V

    invoke-direct {v0, v1}, Lcom/a/a/a/d/a;->a(Lcom/a/a/a/d/c;)V

    iput-boolean v2, p0, Lcom/a/a/a/d/a;->n:Z

    iput-boolean v2, p0, Lcom/a/a/a/d/a;->o:Z

    iput-boolean v2, p0, Lcom/a/a/a/d/a;->p:Z

    :cond_0
    return-void
.end method

.method public c(I)I
    .locals 2

    iget v0, p0, Lcom/a/a/a/d/a;->l:I

    xor-int/2addr v0, p1

    ushr-int/lit8 v1, v0, 0xf

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x9

    xor-int/2addr v0, v1

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/a/d/a;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d(I)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Longest collision chain in symbol table (of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/a/a/a/d/a;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") now exceeds maximum, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- suspect a DoS attack based on hash collisions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
