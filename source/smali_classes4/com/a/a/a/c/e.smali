.class public Lcom/a/a/a/c/e;
.super Lcom/a/a/a/a/a;


# static fields
.field protected static final L:[I

.field private static final T:[I

.field private static final U:[I


# instance fields
.field protected M:Lcom/a/a/a/m;

.field protected final N:Lcom/a/a/a/d/a;

.field protected O:[I

.field protected P:Z

.field protected Q:Ljava/io/InputStream;

.field protected R:[B

.field protected S:Z

.field private V:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/a/a/a/b/b;->b()[I

    move-result-object v0

    sput-object v0, Lcom/a/a/a/c/e;->T:[I

    invoke-static {}, Lcom/a/a/a/b/b;->a()[I

    move-result-object v0

    sput-object v0, Lcom/a/a/a/c/e;->L:[I

    invoke-static {}, Lcom/a/a/a/b/b;->f()[I

    move-result-object v0

    sput-object v0, Lcom/a/a/a/c/e;->U:[I

    return-void
.end method

.method public constructor <init>(Lcom/a/a/a/b/c;ILjava/io/InputStream;Lcom/a/a/a/m;Lcom/a/a/a/d/a;[BIIZ)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/a/a/a/a/a;-><init>(Lcom/a/a/a/b/c;I)V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/a/a/a/c/e;->O:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/a/c/e;->P:Z

    iput-object p3, p0, Lcom/a/a/a/c/e;->Q:Ljava/io/InputStream;

    iput-object p4, p0, Lcom/a/a/a/c/e;->M:Lcom/a/a/a/m;

    iput-object p5, p0, Lcom/a/a/a/c/e;->N:Lcom/a/a/a/d/a;

    iput-object p6, p0, Lcom/a/a/a/c/e;->R:[B

    iput p7, p0, Lcom/a/a/a/c/e;->d:I

    iput p8, p0, Lcom/a/a/a/c/e;->e:I

    iput p7, p0, Lcom/a/a/a/c/e;->h:I

    neg-int v0, p7

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/a/a/a/c/e;->f:J

    iput-boolean p9, p0, Lcom/a/a/a/c/e;->S:Z

    return-void
.end method

.method private final K()Lcom/a/a/a/l;
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/a/c/e;->p:Z

    iget-object v0, p0, Lcom/a/a/a/c/e;->m:Lcom/a/a/a/l;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/a/a/a/c/e;->m:Lcom/a/a/a/l;

    sget-object v1, Lcom/a/a/a/l;->d:Lcom/a/a/a/l;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/a/a/a/c/e;->l:Lcom/a/a/a/c/c;

    iget v2, p0, Lcom/a/a/a/c/e;->j:I

    iget v3, p0, Lcom/a/a/a/c/e;->k:I

    invoke-virtual {v1, v2, v3}, Lcom/a/a/a/c/c;->a(II)Lcom/a/a/a/c/c;

    move-result-object v1

    iput-object v1, p0, Lcom/a/a/a/c/e;->l:Lcom/a/a/a/c/c;

    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/a/a/a/c/e;->K:Lcom/a/a/a/l;

    return-object v0

    :cond_1
    sget-object v1, Lcom/a/a/a/l;->b:Lcom/a/a/a/l;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/a/a/a/c/e;->l:Lcom/a/a/a/c/c;

    iget v2, p0, Lcom/a/a/a/c/e;->j:I

    iget v3, p0, Lcom/a/a/a/c/e;->k:I

    invoke-virtual {v1, v2, v3}, Lcom/a/a/a/c/c;->b(II)Lcom/a/a/a/c/c;

    move-result-object v1

    iput-object v1, p0, Lcom/a/a/a/c/e;->l:Lcom/a/a/a/c/c;

    goto :goto_0
.end method

.method private final L()I
    .locals 5

    const/16 v4, 0x39

    const/16 v1, 0x30

    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    iget v2, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->r()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/c/e;->R:[B

    iget v2, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    if-lt v0, v1, :cond_2

    if-le v0, v4, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/a/a/a/i;->h:Lcom/a/a/a/i;

    invoke-virtual {p0, v2}, Lcom/a/a/a/c/e;->a(Lcom/a/a/a/i;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "Leading zeroes not allowed"

    invoke-virtual {p0, v2}, Lcom/a/a/a/c/e;->c(Ljava/lang/String;)V

    :cond_4
    iget v2, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/a/a/a/c/e;->d:I

    if-ne v0, v1, :cond_0

    :cond_5
    iget v2, p0, Lcom/a/a/a/c/e;->d:I

    iget v3, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v2, v3, :cond_6

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->r()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_6
    iget-object v0, p0, Lcom/a/a/a/c/e;->R:[B

    iget v2, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    if-lt v0, v1, :cond_7

    if-le v0, v4, :cond_8

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    iget v2, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/a/a/a/c/e;->d:I

    if-eq v0, v1, :cond_5

    goto :goto_0
.end method

.method private final M()I
    .locals 4

    sget-object v1, Lcom/a/a/a/c/e;->U:[I

    :cond_0
    :goto_0
    :sswitch_0
    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    iget v2, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/c/e;->R:[B

    iget v2, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    aget v2, v1, v0

    sparse-switch v2, :sswitch_data_0

    const/16 v2, 0x20

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/a/a/a/c/e;->d(I)V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/a/a/a/c/e;->l(I)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v0}, Lcom/a/a/a/c/e;->u(I)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, v0}, Lcom/a/a/a/c/e;->v(I)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, v0}, Lcom/a/a/a/c/e;->w(I)V

    goto :goto_0

    :sswitch_4
    iget v0, p0, Lcom/a/a/a/c/e;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/a/c/e;->g:I

    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    iput v0, p0, Lcom/a/a/a/c/e;->h:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/a/a/a/c/e;->J()V

    goto :goto_0

    :sswitch_6
    invoke-direct {p0}, Lcom/a/a/a/c/e;->O()V

    goto :goto_0

    :sswitch_7
    invoke-direct {p0}, Lcom/a/a/a/c/e;->Q()Z

    move-result v2

    if-nez v2, :cond_0

    :sswitch_8
    return v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected end-of-input within/between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/c/e;->l:Lcom/a/a/a/c/c;

    invoke-virtual {v1}, Lcom/a/a/a/c/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/a/c/e;->b(Ljava/lang/String;)Lcom/a/a/a/g;

    move-result-object v0

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_8
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0xa -> :sswitch_4
        0xd -> :sswitch_5
        0x23 -> :sswitch_7
        0x2f -> :sswitch_6
    .end sparse-switch
.end method

.method private final N()I
    .locals 4

    sget-object v1, Lcom/a/a/a/c/e;->U:[I

    :cond_0
    :goto_0
    :sswitch_0
    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    iget v2, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/c/e;->R:[B

    iget v2, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    aget v2, v1, v0

    sparse-switch v2, :sswitch_data_0

    invoke-virtual {p0, v0}, Lcom/a/a/a/c/e;->l(I)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v0}, Lcom/a/a/a/c/e;->u(I)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, v0}, Lcom/a/a/a/c/e;->v(I)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, v0}, Lcom/a/a/a/c/e;->w(I)V

    goto :goto_0

    :sswitch_4
    iget v0, p0, Lcom/a/a/a/c/e;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/a/c/e;->g:I

    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    iput v0, p0, Lcom/a/a/a/c/e;->h:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/a/a/a/c/e;->J()V

    goto :goto_0

    :sswitch_6
    invoke-direct {p0}, Lcom/a/a/a/c/e;->O()V

    goto :goto_0

    :sswitch_7
    invoke-direct {p0}, Lcom/a/a/a/c/e;->Q()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    :sswitch_8
    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/a/a/a/c/e;->u()V

    const/4 v0, -0x1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_8
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0xa -> :sswitch_4
        0xd -> :sswitch_5
        0x23 -> :sswitch_7
        0x2f -> :sswitch_6
    .end sparse-switch
.end method

.method private final O()V
    .locals 4

    const/16 v3, 0x2f

    sget-object v0, Lcom/a/a/a/i;->b:Lcom/a/a/a/i;

    invoke-virtual {p0, v0}, Lcom/a/a/a/c/e;->a(Lcom/a/a/a/i;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v3, v0}, Lcom/a/a/a/c/e;->b(ILjava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    iget v1, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->r()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lcom/a/a/a/c/e;->e(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/c/e;->R:[B

    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v3, :cond_2

    invoke-direct {p0}, Lcom/a/a/a/c/e;->R()V

    :goto_0
    return-void

    :cond_2
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/a/a/a/c/e;->P()V

    goto :goto_0

    :cond_3
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/c/e;->b(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private final P()V
    .locals 4

    invoke-static {}, Lcom/a/a/a/b/b;->e()[I

    move-result-object v0

    :cond_0
    :goto_0
    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    iget v2, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/a/a/a/c/e;->R:[B

    iget v2, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    aget v2, v0, v1

    if-eqz v2, :cond_0

    sparse-switch v2, :sswitch_data_0

    invoke-virtual {p0, v1}, Lcom/a/a/a/c/e;->l(I)V

    goto :goto_0

    :sswitch_0
    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    iget v2, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->r()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lcom/a/a/a/c/e;->e(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_3
    iget-object v1, p0, Lcom/a/a/a/c/e;->R:[B

    iget v2, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v1, v1, v2

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/a/c/e;->d:I

    goto :goto_1

    :sswitch_1
    iget v1, p0, Lcom/a/a/a/c/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/a/a/c/e;->g:I

    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    iput v1, p0, Lcom/a/a/a/c/e;->h:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/a/a/a/c/e;->J()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, v1}, Lcom/a/a/a/c/e;->u(I)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0, v1}, Lcom/a/a/a/c/e;->v(I)V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0, v1}, Lcom/a/a/a/c/e;->w(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method private final Q()Z
    .locals 1

    sget-object v0, Lcom/a/a/a/i;->c:Lcom/a/a/a/i;

    invoke-virtual {p0, v0}, Lcom/a/a/a/c/e;->a(Lcom/a/a/a/i;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/a/a/a/c/e;->R()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final R()V
    .locals 4

    invoke-static {}, Lcom/a/a/a/b/b;->e()[I

    move-result-object v0

    :cond_0
    :goto_0
    :sswitch_0
    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    iget v2, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/a/a/a/c/e;->R:[B

    iget v2, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    aget v2, v0, v1

    if-eqz v2, :cond_0

    sparse-switch v2, :sswitch_data_0

    if-gez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/a/a/a/c/e;->l(I)V

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/a/a/a/c/e;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/a/c/e;->g:I

    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    iput v0, p0, Lcom/a/a/a/c/e;->h:I

    :cond_2
    :goto_1
    return-void

    :sswitch_2
    invoke-virtual {p0}, Lcom/a/a/a/c/e;->J()V

    goto :goto_1

    :sswitch_3
    invoke-direct {p0, v1}, Lcom/a/a/a/c/e;->u(I)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0, v1}, Lcom/a/a/a/c/e;->v(I)V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0, v1}, Lcom/a/a/a/c/e;->w(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method private S()I
    .locals 3

    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    iget v1, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->q()V

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/c/e;->R:[B

    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private final a(III)Lcom/a/a/a/d/f;
    .locals 6

    iget-object v1, p0, Lcom/a/a/a/c/e;->O:[I

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/a/a/a/c/e;->a([IIIII)Lcom/a/a/a/d/f;

    move-result-object v0

    return-object v0
.end method

.method private final a(IIII)Lcom/a/a/a/d/f;
    .locals 6

    iget-object v0, p0, Lcom/a/a/a/c/e;->O:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v1, p0, Lcom/a/a/a/c/e;->O:[I

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/a/a/a/c/e;->a([IIIII)Lcom/a/a/a/d/f;

    move-result-object v0

    return-object v0
.end method

.method private final a([III)Lcom/a/a/a/d/f;
    .locals 11

    shl-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, -0x4

    add-int v6, v0, p3

    const/4 v0, 0x4

    if-ge p3, v0, :cond_7

    add-int/lit8 v0, p2, -0x1

    aget v0, p1, v0

    add-int/lit8 v1, p2, -0x1

    rsub-int/lit8 v2, p3, 0x4

    shl-int/lit8 v2, v2, 0x3

    shl-int v2, v0, v2

    aput v2, p1, v1

    :goto_0
    iget-object v1, p0, Lcom/a/a/a/c/e;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v1}, Lcom/a/a/a/e/h;->k()[C

    move-result-object v1

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v6, :cond_b

    shr-int/lit8 v2, v3, 0x2

    aget v2, p1, v2

    and-int/lit8 v4, v3, 0x3

    rsub-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x3

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x7f

    if-le v2, v4, :cond_d

    and-int/lit16 v4, v2, 0xe0

    const/16 v7, 0xc0

    if-ne v4, v7, :cond_8

    and-int/lit8 v4, v2, 0x1f

    const/4 v2, 0x1

    move v10, v2

    move v2, v4

    move v4, v10

    :goto_2
    add-int v7, v3, v4

    if-le v7, v6, :cond_0

    const-string v7, " in field name"

    invoke-virtual {p0, v7}, Lcom/a/a/a/c/e;->e(Ljava/lang/String;)V

    :cond_0
    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    and-int/lit8 v8, v3, 0x3

    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_1

    invoke-virtual {p0, v7}, Lcom/a/a/a/c/e;->n(I)V

    :cond_1
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    const/4 v7, 0x1

    if-le v4, v7, :cond_4

    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    and-int/lit8 v8, v3, 0x3

    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_2

    invoke-virtual {p0, v7}, Lcom/a/a/a/c/e;->n(I)V

    :cond_2
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    const/4 v7, 0x2

    if-le v4, v7, :cond_4

    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    and-int/lit8 v8, v3, 0x3

    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_3

    and-int/lit16 v8, v7, 0xff

    invoke-virtual {p0, v8}, Lcom/a/a/a/c/e;->n(I)V

    :cond_3
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    :cond_4
    const/4 v7, 0x2

    if-le v4, v7, :cond_d

    const/high16 v4, 0x10000

    sub-int/2addr v2, v4

    array-length v4, v1

    if-lt v5, v4, :cond_5

    iget-object v1, p0, Lcom/a/a/a/c/e;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v1}, Lcom/a/a/a/e/h;->n()[C

    move-result-object v1

    :cond_5
    add-int/lit8 v4, v5, 0x1

    const v7, 0xd800

    shr-int/lit8 v8, v2, 0xa

    add-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v1, v5

    const v5, 0xdc00

    and-int/lit16 v2, v2, 0x3ff

    or-int/2addr v2, v5

    move v10, v2

    move v2, v3

    move v3, v4

    move-object v4, v1

    move v1, v10

    :goto_3
    array-length v5, v4

    if-lt v3, v5, :cond_6

    iget-object v4, p0, Lcom/a/a/a/c/e;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v4}, Lcom/a/a/a/e/h;->n()[C

    move-result-object v4

    :cond_6
    add-int/lit8 v5, v3, 0x1

    int-to-char v1, v1

    aput-char v1, v4, v3

    move v3, v2

    move-object v1, v4

    goto/16 :goto_1

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_8
    and-int/lit16 v4, v2, 0xf0

    const/16 v7, 0xe0

    if-ne v4, v7, :cond_9

    and-int/lit8 v4, v2, 0xf

    const/4 v2, 0x2

    move v10, v2

    move v2, v4

    move v4, v10

    goto/16 :goto_2

    :cond_9
    and-int/lit16 v4, v2, 0xf8

    const/16 v7, 0xf0

    if-ne v4, v7, :cond_a

    and-int/lit8 v4, v2, 0x7

    const/4 v2, 0x3

    move v10, v2

    move v2, v4

    move v4, v10

    goto/16 :goto_2

    :cond_a
    invoke-virtual {p0, v2}, Lcom/a/a/a/c/e;->m(I)V

    const/4 v2, 0x1

    move v4, v2

    goto/16 :goto_2

    :cond_b
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v5}, Ljava/lang/String;-><init>([CII)V

    const/4 v1, 0x4

    if-ge p3, v1, :cond_c

    add-int/lit8 v1, p2, -0x1

    aput v0, p1, v1

    :cond_c
    iget-object v0, p0, Lcom/a/a/a/c/e;->N:Lcom/a/a/a/d/a;

    invoke-virtual {v0, v2, p1, p2}, Lcom/a/a/a/d/a;->a(Ljava/lang/String;[II)Lcom/a/a/a/d/f;

    move-result-object v0

    return-object v0

    :cond_d
    move-object v4, v1

    move v1, v2

    move v2, v3

    move v3, v5

    goto :goto_3
.end method

.method private final a([IIII)Lcom/a/a/a/d/f;
    .locals 2

    array-length v0, p1

    if-lt p2, v0, :cond_0

    array-length v0, p1

    invoke-static {p1, v0}, Lcom/a/a/a/c/e;->a([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/a/a/a/c/e;->O:[I

    :cond_0
    add-int/lit8 v1, p2, 0x1

    aput p3, p1, p2

    iget-object v0, p0, Lcom/a/a/a/c/e;->N:Lcom/a/a/a/d/a;

    invoke-virtual {v0, p1, v1}, Lcom/a/a/a/d/a;->a([II)Lcom/a/a/a/d/f;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, v1, p4}, Lcom/a/a/a/c/e;->a([III)Lcom/a/a/a/d/f;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private final a([CIIZI)Lcom/a/a/a/l;
    .locals 9

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/16 v1, 0x2e

    if-ne p3, v1, :cond_12

    add-int/lit8 v1, p2, 0x1

    int-to-char v2, p3

    aput-char v2, p1, p2

    :goto_0
    iget v2, p0, Lcom/a/a/a/c/e;->d:I

    iget v3, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v2, v3, :cond_9

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->r()Z

    move-result v2

    if-nez v2, :cond_9

    const/4 v4, 0x1

    move v5, p3

    :goto_1
    if-nez v0, :cond_0

    const-string v2, "Decimal point not followed by a digit"

    invoke-virtual {p0, v5, v2}, Lcom/a/a/a/c/e;->a(ILjava/lang/String;)V

    :cond_0
    move v7, v0

    move v0, v1

    move-object v1, p1

    :goto_2
    const/4 v3, 0x0

    const/16 v2, 0x65

    if-eq v5, v2, :cond_1

    const/16 v2, 0x45

    if-ne v5, v2, :cond_f

    :cond_1
    array-length v2, v1

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lcom/a/a/a/c/e;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v0}, Lcom/a/a/a/e/h;->m()[C

    move-result-object v1

    const/4 v0, 0x0

    :cond_2
    add-int/lit8 v2, v0, 0x1

    int-to-char v5, v5

    aput-char v5, v1, v0

    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    iget v5, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v0, v5, :cond_3

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->q()V

    :cond_3
    iget-object v0, p0, Lcom/a/a/a/c/e;->R:[B

    iget v5, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v0, v0, v5

    and-int/lit16 v5, v0, 0xff

    const/16 v0, 0x2d

    if-eq v5, v0, :cond_4

    const/16 v0, 0x2b

    if-ne v5, v0, :cond_e

    :cond_4
    array-length v0, v1

    if-lt v2, v0, :cond_d

    iget-object v0, p0, Lcom/a/a/a/c/e;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v0}, Lcom/a/a/a/e/h;->m()[C

    move-result-object v1

    const/4 v0, 0x0

    :goto_3
    add-int/lit8 v6, v0, 0x1

    int-to-char v2, v5

    aput-char v2, v1, v0

    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    iget v2, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v0, v2, :cond_5

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->q()V

    :cond_5
    iget-object v0, p0, Lcom/a/a/a/c/e;->R:[B

    iget v2, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v0, v0, v2

    and-int/lit16 v2, v0, 0xff

    move v0, v6

    :goto_4
    const/16 v5, 0x39

    if-gt v2, v5, :cond_c

    const/16 v5, 0x30

    if-lt v2, v5, :cond_c

    add-int/lit8 v3, v3, 0x1

    array-length v5, v1

    if-lt v0, v5, :cond_6

    iget-object v0, p0, Lcom/a/a/a/c/e;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v0}, Lcom/a/a/a/e/h;->m()[C

    move-result-object v1

    const/4 v0, 0x0

    :cond_6
    add-int/lit8 v5, v0, 0x1

    int-to-char v6, v2

    aput-char v6, v1, v0

    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    iget v6, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v0, v6, :cond_b

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->r()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v4, 0x1

    move v0, v3

    move v1, v4

    move v3, v5

    :goto_5
    if-nez v0, :cond_7

    const-string v4, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v2, v4}, Lcom/a/a/a/c/e;->a(ILjava/lang/String;)V

    :cond_7
    :goto_6
    if-nez v1, :cond_8

    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/a/a/a/c/e;->d:I

    iget-object v1, p0, Lcom/a/a/a/c/e;->l:Lcom/a/a/a/c/c;

    invoke-virtual {v1}, Lcom/a/a/a/c/c;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0, v2}, Lcom/a/a/a/c/e;->p(I)V

    :cond_8
    iget-object v1, p0, Lcom/a/a/a/c/e;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v1, v3}, Lcom/a/a/a/e/h;->a(I)V

    invoke-virtual {p0, p4, p5, v7, v0}, Lcom/a/a/a/c/e;->b(ZIII)Lcom/a/a/a/l;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v2, p0, Lcom/a/a/a/c/e;->R:[B

    iget v3, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v2, v2, v3

    and-int/lit16 p3, v2, 0xff

    const/16 v2, 0x30

    if-lt p3, v2, :cond_11

    const/16 v2, 0x39

    if-le p3, v2, :cond_a

    move v5, p3

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v0, v0, 0x1

    array-length v2, p1

    if-lt v1, v2, :cond_10

    iget-object v1, p0, Lcom/a/a/a/c/e;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v1}, Lcom/a/a/a/e/h;->m()[C

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    add-int/lit8 v1, v2, 0x1

    int-to-char v3, p3

    aput-char v3, p1, v2

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/a/a/a/c/e;->R:[B

    iget v2, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v0, v0, v2

    and-int/lit16 v2, v0, 0xff

    move v0, v5

    goto/16 :goto_4

    :cond_c
    move v1, v4

    move v8, v3

    move v3, v0

    move v0, v8

    goto :goto_5

    :cond_d
    move v0, v2

    goto/16 :goto_3

    :cond_e
    move v0, v2

    move v2, v5

    goto/16 :goto_4

    :cond_f
    move v1, v4

    move v2, v5

    move v8, v3

    move v3, v0

    move v0, v8

    goto :goto_6

    :cond_10
    move v2, v1

    goto :goto_7

    :cond_11
    move v5, p3

    goto/16 :goto_1

    :cond_12
    move v7, v0

    move v5, p3

    move-object v1, p1

    move v0, p2

    goto/16 :goto_2
.end method

.method private final a([CIZI)Lcom/a/a/a/l;
    .locals 6

    move v5, p4

    move v2, p2

    move-object v1, p1

    :goto_0
    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    iget v3, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->r()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/c/e;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v0, v2}, Lcom/a/a/a/e/h;->a(I)V

    invoke-virtual {p0, p3, v5}, Lcom/a/a/a/c/e;->a(ZI)Lcom/a/a/a/l;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/c/e;->R:[B

    iget v3, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xff

    const/16 v0, 0x39

    if-gt v3, v0, :cond_1

    const/16 v0, 0x30

    if-ge v3, v0, :cond_3

    :cond_1
    const/16 v0, 0x2e

    if-eq v3, v0, :cond_2

    const/16 v0, 0x65

    if-eq v3, v0, :cond_2

    const/16 v0, 0x45

    if-ne v3, v0, :cond_4

    :cond_2
    move-object v0, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/a/a/a/c/e;->a([CIIZI)Lcom/a/a/a/l;

    move-result-object v0

    goto :goto_1

    :cond_3
    array-length v0, v1

    if-lt v2, v0, :cond_6

    iget-object v0, p0, Lcom/a/a/a/c/e;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v0}, Lcom/a/a/a/e/h;->m()[C

    move-result-object v1

    const/4 v2, 0x0

    move v0, v2

    :goto_2
    add-int/lit8 v2, v0, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/a/a/a/c/e;->d:I

    iget-object v0, p0, Lcom/a/a/a/c/e;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v0, v2}, Lcom/a/a/a/e/h;->a(I)V

    iget-object v0, p0, Lcom/a/a/a/c/e;->l:Lcom/a/a/a/c/c;

    invoke-virtual {v0}, Lcom/a/a/a/c/c;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/a/a/a/c/e;->R:[B

    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lcom/a/a/a/c/e;->p(I)V

    :cond_5
    invoke-virtual {p0, p3, v5}, Lcom/a/a/a/c/e;->a(ZI)Lcom/a/a/a/l;

    move-result-object v0

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2
.end method

.method private final a([CI)V
    .locals 7

    const/4 v1, 0x0

    sget-object v4, Lcom/a/a/a/c/e;->T:[I

    iget-object v5, p0, Lcom/a/a/a/c/e;->R:[B

    :goto_0
    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    iget v2, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->q()V

    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    :cond_0
    array-length v2, p1

    if-lt p2, v2, :cond_1

    iget-object v2, p0, Lcom/a/a/a/c/e;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v2}, Lcom/a/a/a/e/h;->m()[C

    move-result-object p1

    move p2, v1

    :cond_1
    iget v2, p0, Lcom/a/a/a/c/e;->e:I

    array-length v3, p1

    sub-int/2addr v3, p2

    add-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_1
    if-ge v0, v6, :cond_3

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    aget v3, v4, v0

    if-eqz v3, :cond_2

    iput v2, p0, Lcom/a/a/a/c/e;->d:I

    const/16 v2, 0x22

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/a/a/a/c/e;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v0, p2}, Lcom/a/a/a/e/h;->a(I)V

    return-void

    :cond_2
    add-int/lit8 v3, p2, 0x1

    int-to-char v0, v0

    aput-char v0, p1, p2

    move v0, v2

    move p2, v3

    goto :goto_1

    :cond_3
    iput v0, p0, Lcom/a/a/a/c/e;->d:I

    goto :goto_0

    :cond_4
    aget v2, v4, v0

    packed-switch v2, :pswitch_data_0

    const/16 v2, 0x20

    if-ge v0, v2, :cond_7

    const-string v2, "string value"

    invoke-virtual {p0, v0, v2}, Lcom/a/a/a/c/e;->c(ILjava/lang/String;)V

    :goto_2
    array-length v2, p1

    if-lt p2, v2, :cond_8

    iget-object v2, p0, Lcom/a/a/a/c/e;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v2}, Lcom/a/a/a/e/h;->m()[C

    move-result-object p1

    move v2, v1

    :goto_3
    add-int/lit8 p2, v2, 0x1

    int-to-char v0, v0

    aput-char v0, p1, v2

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/a/a/a/c/e;->A()C

    move-result v0

    goto :goto_2

    :pswitch_1
    invoke-direct {p0, v0}, Lcom/a/a/a/c/e;->q(I)I

    move-result v0

    goto :goto_2

    :pswitch_2
    iget v2, p0, Lcom/a/a/a/c/e;->e:I

    iget v3, p0, Lcom/a/a/a/c/e;->d:I

    sub-int/2addr v2, v3

    const/4 v3, 0x2

    if-lt v2, v3, :cond_5

    invoke-direct {p0, v0}, Lcom/a/a/a/c/e;->s(I)I

    move-result v0

    goto :goto_2

    :cond_5
    invoke-direct {p0, v0}, Lcom/a/a/a/c/e;->r(I)I

    move-result v0

    goto :goto_2

    :pswitch_3
    invoke-direct {p0, v0}, Lcom/a/a/a/c/e;->t(I)I

    move-result v2

    add-int/lit8 v0, p2, 0x1

    const v3, 0xd800

    shr-int/lit8 v6, v2, 0xa

    or-int/2addr v3, v6

    int-to-char v3, v3

    aput-char v3, p1, p2

    array-length v3, p1

    if-lt v0, v3, :cond_6

    iget-object v0, p0, Lcom/a/a/a/c/e;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v0}, Lcom/a/a/a/e/h;->m()[C

    move-result-object p1

    move v0, v1

    :cond_6
    const v3, 0xdc00

    and-int/lit16 v2, v2, 0x3ff

    or-int/2addr v2, v3

    move p2, v0

    move v0, v2

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v0}, Lcom/a/a/a/c/e;->l(I)V

    goto :goto_2

    :cond_8
    move v2, p2

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a([II)[I
    .locals 1

    if-nez p0, :cond_0

    new-array v0, p1, [I

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    add-int/2addr v0, p1

    invoke-static {p0, v0}, Lcom/a/a/a/e/a;->a([II)[I

    move-result-object v0

    goto :goto_0
.end method

.method private final b(II)Lcom/a/a/a/d/f;
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/c/e;->N:Lcom/a/a/a/d/a;

    invoke-virtual {v0, p1}, Lcom/a/a/a/d/a;->b(I)Lcom/a/a/a/d/f;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/c/e;->O:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcom/a/a/a/c/e;->O:[I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Lcom/a/a/a/c/e;->a([III)Lcom/a/a/a/d/f;

    move-result-object v0

    goto :goto_0
.end method

.method private final b(III)Lcom/a/a/a/d/f;
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/c/e;->N:Lcom/a/a/a/d/a;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/a/d/a;->a(II)Lcom/a/a/a/d/f;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/c/e;->O:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcom/a/a/a/c/e;->O:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    iget-object v0, p0, Lcom/a/a/a/c/e;->O:[I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p3}, Lcom/a/a/a/c/e;->a([III)Lcom/a/a/a/d/f;

    move-result-object v0

    goto :goto_0
.end method

.method private final o(I)Lcom/a/a/a/l;
    .locals 3

    const/4 v1, 0x1

    const/16 v0, 0x22

    if-ne p1, v0, :cond_0

    iput-boolean v1, p0, Lcom/a/a/a/c/e;->P:Z

    sget-object v0, Lcom/a/a/a/l;->h:Lcom/a/a/a/l;

    iput-object v0, p0, Lcom/a/a/a/c/e;->K:Lcom/a/a/a/l;

    :goto_0
    return-object v0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p0, p1}, Lcom/a/a/a/c/e;->j(I)Lcom/a/a/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/c/e;->K:Lcom/a/a/a/l;

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/a/a/a/c/e;->l:Lcom/a/a/a/c/c;

    iget v1, p0, Lcom/a/a/a/c/e;->j:I

    iget v2, p0, Lcom/a/a/a/c/e;->k:I

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/c/c;->a(II)Lcom/a/a/a/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/c/e;->l:Lcom/a/a/a/c/c;

    sget-object v0, Lcom/a/a/a/l;->d:Lcom/a/a/a/l;

    iput-object v0, p0, Lcom/a/a/a/c/e;->K:Lcom/a/a/a/l;

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/a/a/a/c/e;->l:Lcom/a/a/a/c/c;

    iget v1, p0, Lcom/a/a/a/c/e;->j:I

    iget v2, p0, Lcom/a/a/a/c/e;->k:I

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/c/c;->b(II)Lcom/a/a/a/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/c/e;->l:Lcom/a/a/a/c/c;

    sget-object v0, Lcom/a/a/a/l;->b:Lcom/a/a/a/l;

    iput-object v0, p0, Lcom/a/a/a/c/e;->K:Lcom/a/a/a/l;

    goto :goto_0

    :sswitch_2
    const-string v0, "expected a value"

    invoke-virtual {p0, p1, v0}, Lcom/a/a/a/c/e;->b(ILjava/lang/String;)V

    :sswitch_3
    const-string v0, "true"

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/c/e;->a(Ljava/lang/String;I)V

    sget-object v0, Lcom/a/a/a/l;->k:Lcom/a/a/a/l;

    iput-object v0, p0, Lcom/a/a/a/c/e;->K:Lcom/a/a/a/l;

    goto :goto_0

    :sswitch_4
    const-string v0, "false"

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/c/e;->a(Ljava/lang/String;I)V

    sget-object v0, Lcom/a/a/a/l;->l:Lcom/a/a/a/l;

    iput-object v0, p0, Lcom/a/a/a/c/e;->K:Lcom/a/a/a/l;

    goto :goto_0

    :sswitch_5
    const-string v0, "null"

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/c/e;->a(Ljava/lang/String;I)V

    sget-object v0, Lcom/a/a/a/l;->m:Lcom/a/a/a/l;

    iput-object v0, p0, Lcom/a/a/a/c/e;->K:Lcom/a/a/a/l;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/a/a/a/c/e;->f(I)Lcom/a/a/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/c/e;->K:Lcom/a/a/a/l;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_6
        0x30 -> :sswitch_6
        0x31 -> :sswitch_6
        0x32 -> :sswitch_6
        0x33 -> :sswitch_6
        0x34 -> :sswitch_6
        0x35 -> :sswitch_6
        0x36 -> :sswitch_6
        0x37 -> :sswitch_6
        0x38 -> :sswitch_6
        0x39 -> :sswitch_6
        0x5b -> :sswitch_0
        0x5d -> :sswitch_2
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x74 -> :sswitch_3
        0x7b -> :sswitch_1
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method private final p(I)V
    .locals 1

    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/a/c/e;->d:I

    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p0, p1}, Lcom/a/a/a/c/e;->c(I)V

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    invoke-virtual {p0}, Lcom/a/a/a/c/e;->J()V

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcom/a/a/a/c/e;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/a/c/e;->g:I

    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    iput v0, p0, Lcom/a/a/a/c/e;->h:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_2
        0xd -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private final q(I)I
    .locals 3

    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    iget v1, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->q()V

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/c/e;->R:[B

    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_1

    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lcom/a/a/a/c/e;->d:I

    invoke-virtual {p0, v1, v2}, Lcom/a/a/a/c/e;->a(II)V

    :cond_1
    and-int/lit8 v1, p1, 0x1f

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    return v0
.end method

.method private final r(I)I
    .locals 5

    const/16 v4, 0x80

    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    iget v1, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->q()V

    :cond_0
    and-int/lit8 v0, p1, 0xf

    iget-object v1, p0, Lcom/a/a/a/c/e;->R:[B

    iget v2, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_1

    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/a/a/a/c/e;->d:I

    invoke-virtual {p0, v2, v3}, Lcom/a/a/a/c/e;->a(II)V

    :cond_1
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    iget v2, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->q()V

    :cond_2
    iget-object v1, p0, Lcom/a/a/a/c/e;->R:[B

    iget v2, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_3

    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/a/a/a/c/e;->d:I

    invoke-virtual {p0, v2, v3}, Lcom/a/a/a/c/e;->a(II)V

    :cond_3
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    return v0
.end method

.method private final s(I)I
    .locals 5

    const/16 v4, 0x80

    and-int/lit8 v0, p1, 0xf

    iget-object v1, p0, Lcom/a/a/a/c/e;->R:[B

    iget v2, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_0

    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/a/a/a/c/e;->d:I

    invoke-virtual {p0, v2, v3}, Lcom/a/a/a/c/e;->a(II)V

    :cond_0
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/a/a/a/c/e;->R:[B

    iget v2, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_1

    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/a/a/a/c/e;->d:I

    invoke-virtual {p0, v2, v3}, Lcom/a/a/a/c/e;->a(II)V

    :cond_1
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    return v0
.end method

.method private final t(I)I
    .locals 5

    const/16 v4, 0x80

    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    iget v1, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->q()V

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/c/e;->R:[B

    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_1

    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lcom/a/a/a/c/e;->d:I

    invoke-virtual {p0, v1, v2}, Lcom/a/a/a/c/e;->a(II)V

    :cond_1
    and-int/lit8 v1, p1, 0x7

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    iget v2, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->q()V

    :cond_2
    iget-object v1, p0, Lcom/a/a/a/c/e;->R:[B

    iget v2, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_3

    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/a/a/a/c/e;->d:I

    invoke-virtual {p0, v2, v3}, Lcom/a/a/a/c/e;->a(II)V

    :cond_3
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    iget v2, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->q()V

    :cond_4
    iget-object v1, p0, Lcom/a/a/a/c/e;->R:[B

    iget v2, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_5

    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lcom/a/a/a/c/e;->d:I

    invoke-virtual {p0, v2, v3}, Lcom/a/a/a/c/e;->a(II)V

    :cond_5
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    const/high16 v1, 0x10000

    sub-int/2addr v0, v1

    return v0
.end method

.method private final u(I)V
    .locals 3

    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    iget v1, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->q()V

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/c/e;->R:[B

    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_1

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/c/e;->a(II)V

    :cond_1
    return-void
.end method

.method private final v(I)V
    .locals 4

    const/16 v3, 0x80

    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    iget v1, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->q()V

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/c/e;->R:[B

    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_1

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/c/e;->a(II)V

    :cond_1
    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    iget v1, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->q()V

    :cond_2
    iget-object v0, p0, Lcom/a/a/a/c/e;->R:[B

    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_3

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/c/e;->a(II)V

    :cond_3
    return-void
.end method

.method private final w(I)V
    .locals 4

    const/16 v3, 0x80

    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    iget v1, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->q()V

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/c/e;->R:[B

    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_1

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/c/e;->a(II)V

    :cond_1
    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    iget v1, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->q()V

    :cond_2
    iget-object v0, p0, Lcom/a/a/a/c/e;->R:[B

    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_3

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/c/e;->a(II)V

    :cond_3
    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    iget v1, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->q()V

    :cond_4
    iget-object v0, p0, Lcom/a/a/a/c/e;->R:[B

    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v3, :cond_5

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/c/e;->a(II)V

    :cond_5
    return-void
.end method


# virtual methods
.method protected A()C
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    iget v2, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->r()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " in character escape sequence"

    invoke-virtual {p0, v1}, Lcom/a/a/a/c/e;->e(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/a/a/a/c/e;->R:[B

    iget v2, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p0, v1}, Lcom/a/a/a/c/e;->k(I)I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lcom/a/a/a/c/e;->a(C)C

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_2
    const/16 v0, 0xa

    goto :goto_0

    :sswitch_3
    const/16 v0, 0xc

    goto :goto_0

    :sswitch_4
    const/16 v0, 0xd

    goto :goto_0

    :sswitch_5
    int-to-char v0, v1

    goto :goto_0

    :sswitch_6
    move v1, v0

    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_3

    iget v2, p0, Lcom/a/a/a/c/e;->d:I

    iget v3, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->r()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, " in character escape sequence"

    invoke-virtual {p0, v2}, Lcom/a/a/a/c/e;->e(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/a/a/a/c/e;->R:[B

    iget v3, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v2, v2, v3

    invoke-static {v2}, Lcom/a/a/a/b/b;->a(I)I

    move-result v3

    if-gez v3, :cond_2

    const-string v4, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v2, v4}, Lcom/a/a/a/c/e;->b(ILjava/lang/String;)V

    :cond_2
    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    int-to-char v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_5
        0x2f -> :sswitch_5
        0x5c -> :sswitch_5
        0x62 -> :sswitch_0
        0x66 -> :sswitch_3
        0x6e -> :sswitch_2
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_6
    .end sparse-switch
.end method

.method protected E()Lcom/a/a/a/d/f;
    .locals 6

    const/4 v2, 0x0

    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    iget v1, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->r()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ": was expecting closing \'\"\' for name"

    invoke-virtual {p0, v0}, Lcom/a/a/a/c/e;->e(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/c/e;->R:[B

    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    const/16 v0, 0x22

    if-ne v4, v0, :cond_1

    invoke-static {}, Lcom/a/a/a/d/a;->d()Lcom/a/a/a/d/f;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/a/a/a/c/e;->O:[I

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/a/a/a/c/e;->a([IIIII)Lcom/a/a/a/d/f;

    move-result-object v0

    goto :goto_0
.end method

.method protected F()Lcom/a/a/a/d/f;
    .locals 12

    const/16 v10, 0x27

    const/4 v9, 0x4

    const/4 v1, 0x0

    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    iget v2, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->r()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ": was expecting closing \'\'\' for name"

    invoke-virtual {p0, v0}, Lcom/a/a/a/c/e;->e(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/c/e;->R:[B

    iget v2, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v0, v0, v2

    and-int/lit16 v5, v0, 0xff

    if-ne v5, v10, :cond_1

    invoke-static {}, Lcom/a/a/a/d/a;->d()Lcom/a/a/a/d/f;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/c/e;->O:[I

    sget-object v7, Lcom/a/a/a/c/e;->L:[I

    move v3, v1

    move v4, v1

    move v2, v1

    :goto_1
    if-ne v5, v10, :cond_3

    if-lez v3, :cond_c

    array-length v1, v0

    if-lt v2, v1, :cond_2

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/a/a/a/c/e;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/c/e;->O:[I

    :cond_2
    add-int/lit8 v1, v2, 0x1

    aput v4, v0, v2

    move v11, v1

    move-object v1, v0

    move v0, v11

    :goto_2
    iget-object v2, p0, Lcom/a/a/a/c/e;->N:Lcom/a/a/a/d/a;

    invoke-virtual {v2, v1, v0}, Lcom/a/a/a/d/a;->a([II)Lcom/a/a/a/d/f;

    move-result-object v2

    if-nez v2, :cond_b

    invoke-direct {p0, v1, v0, v3}, Lcom/a/a/a/c/e;->a([III)Lcom/a/a/a/d/f;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v6, 0x22

    if-eq v5, v6, :cond_f

    aget v6, v7, v5

    if-eqz v6, :cond_f

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_6

    const-string v6, "name"

    invoke-virtual {p0, v5, v6}, Lcom/a/a/a/c/e;->c(ILjava/lang/String;)V

    :goto_3
    const/16 v6, 0x7f

    if-le v5, v6, :cond_f

    if-lt v3, v9, :cond_e

    array-length v3, v0

    if-lt v2, v3, :cond_4

    array-length v3, v0

    invoke-static {v0, v3}, Lcom/a/a/a/c/e;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/c/e;->O:[I

    :cond_4
    add-int/lit8 v3, v2, 0x1

    aput v4, v0, v2

    move v2, v1

    move v4, v3

    move v3, v1

    :goto_4
    const/16 v6, 0x800

    if-ge v5, v6, :cond_7

    shl-int/lit8 v3, v3, 0x8

    shr-int/lit8 v6, v5, 0x6

    or-int/lit16 v6, v6, 0xc0

    or-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    move v11, v2

    move v2, v3

    move-object v3, v0

    move v0, v11

    :goto_5
    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    move v6, v2

    move v2, v0

    move-object v0, v3

    move v3, v5

    :goto_6
    if-ge v2, v9, :cond_9

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v5, v6, 0x8

    or-int/2addr v3, v5

    move v11, v2

    move v2, v3

    move v3, v4

    move-object v4, v0

    move v0, v11

    :goto_7
    iget v5, p0, Lcom/a/a/a/c/e;->d:I

    iget v6, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v5, v6, :cond_5

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->r()Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, " in field name"

    invoke-virtual {p0, v5}, Lcom/a/a/a/c/e;->e(Ljava/lang/String;)V

    :cond_5
    iget-object v5, p0, Lcom/a/a/a/c/e;->R:[B

    iget v6, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v8, v6, 0x1

    iput v8, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    move v11, v0

    move-object v0, v4

    move v4, v2

    move v2, v3

    move v3, v11

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/a/a/a/c/e;->A()C

    move-result v5

    goto :goto_3

    :cond_7
    shl-int/lit8 v3, v3, 0x8

    shr-int/lit8 v6, v5, 0xc

    or-int/lit16 v6, v6, 0xe0

    or-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v9, :cond_d

    array-length v2, v0

    if-lt v4, v2, :cond_8

    array-length v2, v0

    invoke-static {v0, v2}, Lcom/a/a/a/c/e;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/c/e;->O:[I

    :cond_8
    add-int/lit8 v2, v4, 0x1

    aput v3, v0, v4

    move v3, v2

    move-object v4, v0

    move v0, v1

    move v2, v1

    :goto_8
    shl-int/lit8 v2, v2, 0x8

    shr-int/lit8 v6, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    or-int/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    move v11, v3

    move-object v3, v4

    move v4, v11

    goto :goto_5

    :cond_9
    array-length v2, v0

    if-lt v4, v2, :cond_a

    array-length v2, v0

    invoke-static {v0, v2}, Lcom/a/a/a/c/e;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/c/e;->O:[I

    :cond_a
    add-int/lit8 v5, v4, 0x1

    aput v6, v0, v4

    const/4 v2, 0x1

    move-object v4, v0

    move v0, v2

    move v2, v3

    move v3, v5

    goto :goto_7

    :cond_b
    move-object v0, v2

    goto/16 :goto_0

    :cond_c
    move-object v1, v0

    move v0, v2

    goto/16 :goto_2

    :cond_d
    move v11, v2

    move v2, v3

    move v3, v4

    move-object v4, v0

    move v0, v11

    goto :goto_8

    :cond_e
    move v11, v3

    move v3, v4

    move v4, v2

    move v2, v11

    goto/16 :goto_4

    :cond_f
    move v6, v4

    move v4, v2

    move v2, v3

    move v3, v5

    goto/16 :goto_6
.end method

.method protected G()V
    .locals 9

    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    iget v1, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->q()V

    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/a/a/a/c/e;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v2}, Lcom/a/a/a/e/h;->k()[C

    move-result-object v3

    sget-object v4, Lcom/a/a/a/c/e;->T:[I

    iget v2, p0, Lcom/a/a/a/c/e;->e:I

    array-length v5, v3

    add-int/2addr v5, v0

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v6, p0, Lcom/a/a/a/c/e;->R:[B

    move v8, v1

    move v1, v0

    move v0, v8

    :goto_0
    if-ge v1, v5, :cond_2

    aget-byte v2, v6, v1

    and-int/lit16 v7, v2, 0xff

    aget v2, v4, v7

    if-eqz v2, :cond_1

    const/16 v2, 0x22

    if-ne v7, v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/a/a/c/e;->d:I

    iget-object v1, p0, Lcom/a/a/a/c/e;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v1, v0}, Lcom/a/a/a/e/h;->a(I)V

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v0, 0x1

    int-to-char v7, v7

    aput-char v7, v3, v0

    move v0, v1

    move v1, v2

    goto :goto_0

    :cond_2
    iput v1, p0, Lcom/a/a/a/c/e;->d:I

    invoke-direct {p0, v3, v0}, Lcom/a/a/a/c/e;->a([CI)V

    goto :goto_1
.end method

.method protected H()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/a/c/e;->P:Z

    sget-object v3, Lcom/a/a/a/c/e;->T:[I

    iget-object v4, p0, Lcom/a/a/a/c/e;->R:[B

    :goto_0
    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    iget v0, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->q()V

    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    iget v0, p0, Lcom/a/a/a/c/e;->e:I

    :cond_0
    :goto_1
    if-ge v1, v0, :cond_1

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    aget v5, v3, v1

    if-eqz v5, :cond_4

    iput v2, p0, Lcom/a/a/a/c/e;->d:I

    const/16 v0, 0x22

    if-ne v1, v0, :cond_2

    return-void

    :cond_1
    iput v1, p0, Lcom/a/a/a/c/e;->d:I

    goto :goto_0

    :cond_2
    aget v0, v3, v1

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x20

    if-ge v1, v0, :cond_3

    const-string v0, "string value"

    invoke-virtual {p0, v1, v0}, Lcom/a/a/a/c/e;->c(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/a/a/a/c/e;->A()C

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/a/a/a/c/e;->u(I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v1}, Lcom/a/a/a/c/e;->v(I)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v1}, Lcom/a/a/a/c/e;->w(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/a/a/a/c/e;->l(I)V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected I()Lcom/a/a/a/l;
    .locals 10

    const/16 v9, 0x27

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/a/a/a/c/e;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v0}, Lcom/a/a/a/e/h;->k()[C

    move-result-object v0

    sget-object v6, Lcom/a/a/a/c/e;->T:[I

    iget-object v7, p0, Lcom/a/a/a/c/e;->R:[B

    move v1, v2

    :cond_0
    :goto_0
    iget v3, p0, Lcom/a/a/a/c/e;->d:I

    iget v4, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->q()V

    :cond_1
    array-length v3, v0

    if-lt v1, v3, :cond_2

    iget-object v0, p0, Lcom/a/a/a/c/e;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v0}, Lcom/a/a/a/e/h;->m()[C

    move-result-object v0

    move v1, v2

    :cond_2
    iget v4, p0, Lcom/a/a/a/c/e;->e:I

    iget v3, p0, Lcom/a/a/a/c/e;->d:I

    array-length v5, v0

    sub-int/2addr v5, v1

    add-int/2addr v3, v5

    if-ge v3, v4, :cond_b

    :goto_1
    iget v4, p0, Lcom/a/a/a/c/e;->d:I

    if-ge v4, v3, :cond_0

    iget v4, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v4, v7, v4

    and-int/lit16 v5, v4, 0xff

    if-eq v5, v9, :cond_3

    aget v4, v6, v5

    if-eqz v4, :cond_4

    :cond_3
    if-ne v5, v9, :cond_5

    iget-object v0, p0, Lcom/a/a/a/c/e;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v0, v1}, Lcom/a/a/a/e/h;->a(I)V

    sget-object v0, Lcom/a/a/a/l;->h:Lcom/a/a/a/l;

    return-object v0

    :cond_4
    add-int/lit8 v4, v1, 0x1

    int-to-char v5, v5

    aput-char v5, v0, v1

    move v1, v4

    goto :goto_1

    :cond_5
    aget v3, v6, v5

    packed-switch v3, :pswitch_data_0

    const/16 v3, 0x20

    if-ge v5, v3, :cond_6

    const-string v3, "string value"

    invoke-virtual {p0, v5, v3}, Lcom/a/a/a/c/e;->c(ILjava/lang/String;)V

    :cond_6
    invoke-virtual {p0, v5}, Lcom/a/a/a/c/e;->l(I)V

    :cond_7
    move v3, v5

    :goto_2
    array-length v4, v0

    if-lt v1, v4, :cond_9

    iget-object v0, p0, Lcom/a/a/a/c/e;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v0}, Lcom/a/a/a/e/h;->m()[C

    move-result-object v0

    move v4, v2

    :goto_3
    add-int/lit8 v1, v4, 0x1

    int-to-char v3, v3

    aput-char v3, v0, v4

    goto :goto_0

    :pswitch_0
    if-eq v5, v9, :cond_7

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->A()C

    move-result v3

    goto :goto_2

    :pswitch_1
    invoke-direct {p0, v5}, Lcom/a/a/a/c/e;->q(I)I

    move-result v3

    goto :goto_2

    :pswitch_2
    iget v3, p0, Lcom/a/a/a/c/e;->e:I

    iget v4, p0, Lcom/a/a/a/c/e;->d:I

    sub-int/2addr v3, v4

    const/4 v4, 0x2

    if-lt v3, v4, :cond_8

    invoke-direct {p0, v5}, Lcom/a/a/a/c/e;->s(I)I

    move-result v3

    goto :goto_2

    :cond_8
    invoke-direct {p0, v5}, Lcom/a/a/a/c/e;->r(I)I

    move-result v3

    goto :goto_2

    :pswitch_3
    invoke-direct {p0, v5}, Lcom/a/a/a/c/e;->t(I)I

    move-result v4

    add-int/lit8 v3, v1, 0x1

    const v5, 0xd800

    shr-int/lit8 v8, v4, 0xa

    or-int/2addr v5, v8

    int-to-char v5, v5

    aput-char v5, v0, v1

    array-length v1, v0

    if-lt v3, v1, :cond_a

    iget-object v0, p0, Lcom/a/a/a/c/e;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v0}, Lcom/a/a/a/e/h;->m()[C

    move-result-object v0

    move v1, v2

    :goto_4
    const v3, 0xdc00

    and-int/lit16 v4, v4, 0x3ff

    or-int/2addr v3, v4

    goto :goto_2

    :cond_9
    move v4, v1

    goto :goto_3

    :cond_a
    move v1, v3

    goto :goto_4

    :cond_b
    move v3, v4

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected final J()V
    .locals 2

    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    iget v1, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/c/e;->R:[B

    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/a/c/e;->d:I

    :cond_1
    iget v0, p0, Lcom/a/a/a/c/e;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/a/c/e;->g:I

    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    iput v0, p0, Lcom/a/a/a/c/e;->h:I

    return-void
.end method

.method protected a(I[I)Lcom/a/a/a/d/f;
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x22

    iget-object v0, p0, Lcom/a/a/a/c/e;->R:[B

    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    aget v1, p2, v0

    if-eqz v1, :cond_1

    if-ne v0, v4, :cond_0

    iget v0, p0, Lcom/a/a/a/c/e;->V:I

    invoke-direct {p0, v0, p1, v5}, Lcom/a/a/a/c/e;->b(III)Lcom/a/a/a/d/f;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lcom/a/a/a/c/e;->V:I

    invoke-direct {p0, v1, p1, v0, v5}, Lcom/a/a/a/c/e;->a(IIII)Lcom/a/a/a/d/f;

    move-result-object v0

    goto :goto_0

    :cond_1
    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/a/a/a/c/e;->R:[B

    iget v2, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    aget v2, p2, v1

    if-eqz v2, :cond_3

    if-ne v1, v4, :cond_2

    iget v1, p0, Lcom/a/a/a/c/e;->V:I

    invoke-direct {p0, v1, v0, v6}, Lcom/a/a/a/c/e;->b(III)Lcom/a/a/a/d/f;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/a/a/a/c/e;->V:I

    invoke-direct {p0, v2, v0, v1, v6}, Lcom/a/a/a/c/e;->a(IIII)Lcom/a/a/a/d/f;

    move-result-object v0

    goto :goto_0

    :cond_3
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/a/a/a/c/e;->R:[B

    iget v2, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    aget v2, p2, v1

    if-eqz v2, :cond_5

    if-ne v1, v4, :cond_4

    iget v1, p0, Lcom/a/a/a/c/e;->V:I

    invoke-direct {p0, v1, v0, v7}, Lcom/a/a/a/c/e;->b(III)Lcom/a/a/a/d/f;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/a/a/a/c/e;->V:I

    invoke-direct {p0, v2, v0, v1, v7}, Lcom/a/a/a/c/e;->a(IIII)Lcom/a/a/a/d/f;

    move-result-object v0

    goto :goto_0

    :cond_5
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/a/a/a/c/e;->R:[B

    iget v2, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    aget v2, p2, v1

    if-eqz v2, :cond_7

    if-ne v1, v4, :cond_6

    iget v1, p0, Lcom/a/a/a/c/e;->V:I

    invoke-direct {p0, v1, v0, v8}, Lcom/a/a/a/c/e;->b(III)Lcom/a/a/a/d/f;

    move-result-object v0

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/a/a/a/c/e;->V:I

    invoke-direct {p0, v2, v0, v1, v8}, Lcom/a/a/a/c/e;->a(IIII)Lcom/a/a/a/d/f;

    move-result-object v0

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/a/a/a/c/e;->O:[I

    const/4 v3, 0x0

    iget v4, p0, Lcom/a/a/a/c/e;->V:I

    aput v4, v2, v3

    iget-object v2, p0, Lcom/a/a/a/c/e;->O:[I

    aput v0, v2, v5

    invoke-virtual {p0, v1}, Lcom/a/a/a/c/e;->h(I)Lcom/a/a/a/d/f;

    move-result-object v0

    goto :goto_0
.end method

.method protected a([IIIII)Lcom/a/a/a/d/f;
    .locals 9

    const/4 v7, 0x4

    const/4 v1, 0x0

    sget-object v5, Lcom/a/a/a/c/e;->L:[I

    :goto_0
    aget v0, v5, p4

    if-eqz v0, :cond_d

    const/16 v0, 0x22

    if-ne p4, v0, :cond_3

    if-lez p5, :cond_1

    array-length v0, p1

    if-lt p2, v0, :cond_0

    array-length v0, p1

    invoke-static {p1, v0}, Lcom/a/a/a/c/e;->a([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/a/a/a/c/e;->O:[I

    :cond_0
    add-int/lit8 v0, p2, 0x1

    aput p3, p1, p2

    move p2, v0

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/c/e;->N:Lcom/a/a/a/d/a;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/a/d/a;->a([II)Lcom/a/a/a/d/f;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1, p2, p5}, Lcom/a/a/a/c/e;->a([III)Lcom/a/a/a/d/f;

    move-result-object v0

    :cond_2
    return-object v0

    :cond_3
    const/16 v0, 0x5c

    if-eq p4, v0, :cond_6

    const-string v0, "name"

    invoke-virtual {p0, p4, v0}, Lcom/a/a/a/c/e;->c(ILjava/lang/String;)V

    :goto_1
    const/16 v0, 0x7f

    if-le p4, v0, :cond_d

    if-lt p5, v7, :cond_c

    array-length v0, p1

    if-lt p2, v0, :cond_4

    array-length v0, p1

    invoke-static {p1, v0}, Lcom/a/a/a/c/e;->a([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/a/a/a/c/e;->O:[I

    :cond_4
    add-int/lit8 v4, p2, 0x1

    aput p3, p1, p2

    move p5, v1

    move p3, v1

    move-object v0, p1

    :goto_2
    const/16 v2, 0x800

    if-ge p4, v2, :cond_7

    shl-int/lit8 v2, p3, 0x8

    shr-int/lit8 v3, p4, 0x6

    or-int/lit16 v3, v3, 0xc0

    or-int/2addr v3, v2

    add-int/lit8 v2, p5, 0x1

    move v8, v2

    move v2, v3

    move-object v3, v0

    move v0, v8

    :goto_3
    and-int/lit8 v6, p4, 0x3f

    or-int/lit16 p3, v6, 0x80

    move p5, v0

    move p2, v4

    move-object v0, v3

    move v3, v2

    :goto_4
    if-ge p5, v7, :cond_9

    add-int/lit8 p5, p5, 0x1

    shl-int/lit8 v2, v3, 0x8

    or-int/2addr p3, v2

    move-object p1, v0

    :goto_5
    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    iget v2, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v0, v2, :cond_5

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->r()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, " in field name"

    invoke-virtual {p0, v0}, Lcom/a/a/a/c/e;->e(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/a/a/a/c/e;->R:[B

    iget v2, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v0, v0, v2

    and-int/lit16 p4, v0, 0xff

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/a/a/a/c/e;->A()C

    move-result p4

    goto :goto_1

    :cond_7
    shl-int/lit8 v2, p3, 0x8

    shr-int/lit8 v3, p4, 0xc

    or-int/lit16 v3, v3, 0xe0

    or-int/2addr v3, v2

    add-int/lit8 v2, p5, 0x1

    if-lt v2, v7, :cond_b

    array-length v2, v0

    if-lt v4, v2, :cond_8

    array-length v2, v0

    invoke-static {v0, v2}, Lcom/a/a/a/c/e;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/c/e;->O:[I

    :cond_8
    add-int/lit8 v2, v4, 0x1

    aput v3, v0, v4

    move v3, v2

    move-object v4, v0

    move v0, v1

    move v2, v1

    :goto_6
    shl-int/lit8 v2, v2, 0x8

    shr-int/lit8 v6, p4, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    or-int/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    move v8, v3

    move-object v3, v4

    move v4, v8

    goto :goto_3

    :cond_9
    array-length v2, v0

    if-lt p2, v2, :cond_a

    array-length v2, v0

    invoke-static {v0, v2}, Lcom/a/a/a/c/e;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/c/e;->O:[I

    :cond_a
    add-int/lit8 v2, p2, 0x1

    aput v3, v0, p2

    const/4 p5, 0x1

    move p2, v2

    move-object p1, v0

    goto :goto_5

    :cond_b
    move v8, v2

    move v2, v3

    move v3, v4

    move-object v4, v0

    move v0, v8

    goto :goto_6

    :cond_c
    move v4, p2

    move-object v0, p1

    goto/16 :goto_2

    :cond_d
    move v3, p3

    move-object v0, p1

    move p3, p4

    goto :goto_4
.end method

.method public a()Lcom/a/a/a/l;
    .locals 10

    const/4 v1, 0x0

    const/16 v9, 0x7d

    const/16 v8, 0x5d

    const/16 v7, 0x3a

    const/4 v6, 0x1

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/a/c/e;->A:I

    iget-object v0, p0, Lcom/a/a/a/c/e;->K:Lcom/a/a/a/l;

    sget-object v2, Lcom/a/a/a/l;->f:Lcom/a/a/a/l;

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lcom/a/a/a/c/e;->K()Lcom/a/a/a/l;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/a/a/a/c/e;->P:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->H()V

    :cond_1
    invoke-direct {p0}, Lcom/a/a/a/c/e;->N()I

    move-result v0

    if-gez v0, :cond_2

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->close()V

    iput-object v1, p0, Lcom/a/a/a/c/e;->K:Lcom/a/a/a/l;

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/a/a/a/c/e;->f:J

    iget v4, p0, Lcom/a/a/a/c/e;->d:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/a/a/a/c/e;->i:J

    iget v2, p0, Lcom/a/a/a/c/e;->g:I

    iput v2, p0, Lcom/a/a/a/c/e;->j:I

    iget v2, p0, Lcom/a/a/a/c/e;->d:I

    iget v3, p0, Lcom/a/a/a/c/e;->h:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/a/a/a/c/e;->k:I

    iput-object v1, p0, Lcom/a/a/a/c/e;->r:[B

    if-ne v0, v8, :cond_4

    iget-object v1, p0, Lcom/a/a/a/c/e;->l:Lcom/a/a/a/c/c;

    invoke-virtual {v1}, Lcom/a/a/a/c/c;->a()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v0, v9}, Lcom/a/a/a/c/e;->a(IC)V

    :cond_3
    iget-object v0, p0, Lcom/a/a/a/c/e;->l:Lcom/a/a/a/c/c;

    invoke-virtual {v0}, Lcom/a/a/a/c/c;->g()Lcom/a/a/a/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/c/e;->l:Lcom/a/a/a/c/c;

    sget-object v0, Lcom/a/a/a/l;->e:Lcom/a/a/a/l;

    iput-object v0, p0, Lcom/a/a/a/c/e;->K:Lcom/a/a/a/l;

    goto :goto_0

    :cond_4
    if-ne v0, v9, :cond_6

    iget-object v1, p0, Lcom/a/a/a/c/e;->l:Lcom/a/a/a/c/c;

    invoke-virtual {v1}, Lcom/a/a/a/c/c;->c()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0, v0, v8}, Lcom/a/a/a/c/e;->a(IC)V

    :cond_5
    iget-object v0, p0, Lcom/a/a/a/c/e;->l:Lcom/a/a/a/c/c;

    invoke-virtual {v0}, Lcom/a/a/a/c/c;->g()Lcom/a/a/a/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/c/e;->l:Lcom/a/a/a/c/c;

    sget-object v0, Lcom/a/a/a/l;->c:Lcom/a/a/a/l;

    iput-object v0, p0, Lcom/a/a/a/c/e;->K:Lcom/a/a/a/l;

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/a/a/a/c/e;->l:Lcom/a/a/a/c/c;

    invoke-virtual {v1}, Lcom/a/a/a/c/c;->h()Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "was expecting comma to separate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/a/c/e;->l:Lcom/a/a/a/c/c;

    invoke-virtual {v2}, Lcom/a/a/a/c/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/c/e;->b(ILjava/lang/String;)V

    :cond_7
    invoke-direct {p0}, Lcom/a/a/a/c/e;->M()I

    move-result v0

    :cond_8
    iget-object v1, p0, Lcom/a/a/a/c/e;->l:Lcom/a/a/a/c/c;

    invoke-virtual {v1}, Lcom/a/a/a/c/c;->c()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-direct {p0, v0}, Lcom/a/a/a/c/e;->o(I)Lcom/a/a/a/l;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0, v0}, Lcom/a/a/a/c/e;->g(I)Lcom/a/a/a/d/f;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/c/e;->l:Lcom/a/a/a/c/c;

    invoke-virtual {v0}, Lcom/a/a/a/d/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/a/a/a/c/c;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/a/a/a/l;->f:Lcom/a/a/a/l;

    iput-object v0, p0, Lcom/a/a/a/c/e;->K:Lcom/a/a/a/l;

    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    iget v1, p0, Lcom/a/a/a/c/e;->e:I

    if-ge v0, v1, :cond_b

    iget-object v0, p0, Lcom/a/a/a/c/e;->R:[B

    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v0, v0, v1

    if-ne v0, v7, :cond_b

    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/a/c/e;->d:I

    :cond_a
    :goto_1
    invoke-direct {p0}, Lcom/a/a/a/c/e;->M()I

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_c

    iput-boolean v6, p0, Lcom/a/a/a/c/e;->P:Z

    sget-object v0, Lcom/a/a/a/l;->h:Lcom/a/a/a/l;

    iput-object v0, p0, Lcom/a/a/a/c/e;->m:Lcom/a/a/a/l;

    iget-object v0, p0, Lcom/a/a/a/c/e;->K:Lcom/a/a/a/l;

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0}, Lcom/a/a/a/c/e;->M()I

    move-result v0

    if-eq v0, v7, :cond_a

    const-string v1, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/c/e;->b(ILjava/lang/String;)V

    goto :goto_1

    :cond_c
    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, v0}, Lcom/a/a/a/c/e;->j(I)Lcom/a/a/a/l;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/a/a/a/c/e;->m:Lcom/a/a/a/l;

    iget-object v0, p0, Lcom/a/a/a/c/e;->K:Lcom/a/a/a/l;

    goto/16 :goto_0

    :sswitch_0
    sget-object v0, Lcom/a/a/a/l;->d:Lcom/a/a/a/l;

    goto :goto_2

    :sswitch_1
    sget-object v0, Lcom/a/a/a/l;->b:Lcom/a/a/a/l;

    goto :goto_2

    :sswitch_2
    const-string v1, "expected a value"

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/c/e;->b(ILjava/lang/String;)V

    :sswitch_3
    const-string v0, "true"

    invoke-virtual {p0, v0, v6}, Lcom/a/a/a/c/e;->a(Ljava/lang/String;I)V

    sget-object v0, Lcom/a/a/a/l;->k:Lcom/a/a/a/l;

    goto :goto_2

    :sswitch_4
    const-string v0, "false"

    invoke-virtual {p0, v0, v6}, Lcom/a/a/a/c/e;->a(Ljava/lang/String;I)V

    sget-object v0, Lcom/a/a/a/l;->l:Lcom/a/a/a/l;

    goto :goto_2

    :sswitch_5
    const-string v0, "null"

    invoke-virtual {p0, v0, v6}, Lcom/a/a/a/c/e;->a(Ljava/lang/String;I)V

    sget-object v0, Lcom/a/a/a/l;->m:Lcom/a/a/a/l;

    goto :goto_2

    :sswitch_6
    invoke-virtual {p0, v0}, Lcom/a/a/a/c/e;->f(I)Lcom/a/a/a/l;

    move-result-object v0

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_6
        0x30 -> :sswitch_6
        0x31 -> :sswitch_6
        0x32 -> :sswitch_6
        0x33 -> :sswitch_6
        0x34 -> :sswitch_6
        0x35 -> :sswitch_6
        0x36 -> :sswitch_6
        0x37 -> :sswitch_6
        0x38 -> :sswitch_6
        0x39 -> :sswitch_6
        0x5b -> :sswitch_0
        0x5d -> :sswitch_2
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x74 -> :sswitch_3
        0x7b -> :sswitch_1
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method protected a(IZ)Lcom/a/a/a/l;
    .locals 4

    move v0, p1

    :goto_0
    const/16 v1, 0x49

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    iget v1, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->r()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->C()V

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/c/e;->R:[B

    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v1, v0, v1

    const/16 v0, 0x4e

    if-ne v1, v0, :cond_2

    if-eqz p2, :cond_1

    const-string v0, "-INF"

    :goto_1
    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/a/a/a/c/e;->a(Ljava/lang/String;I)V

    sget-object v2, Lcom/a/a/a/i;->i:Lcom/a/a/a/i;

    invoke-virtual {p0, v2}, Lcom/a/a/a/c/e;->a(Lcom/a/a/a/i;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p2, :cond_4

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_2
    invoke-virtual {p0, v0, v2, v3}, Lcom/a/a/a/c/e;->a(Ljava/lang/String;D)Lcom/a/a/a/l;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_1
    const-string v0, "+INF"

    goto :goto_1

    :cond_2
    const/16 v0, 0x6e

    if-ne v1, v0, :cond_6

    if-eqz p2, :cond_3

    const-string v0, "-Infinity"

    goto :goto_1

    :cond_3
    const-string v0, "+Infinity"

    goto :goto_1

    :cond_4
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_2

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-standard token \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/a/c/e;->f(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    :cond_7
    const-string v1, "expected digit (0-9) to follow minus sign, for valid numeric value"

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/c/e;->a(ILjava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_3
.end method

.method protected final a(Lcom/a/a/a/l;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/a/a/a/l;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Lcom/a/a/a/l;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/a/a/a/c/e;->l:Lcom/a/a/a/c/c;

    invoke-virtual {v0}, Lcom/a/a/a/c/c;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/a/a/a/c/e;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v0}, Lcom/a/a/a/e/h;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/c/e;->K:Lcom/a/a/a/l;

    sget-object v1, Lcom/a/a/a/l;->h:Lcom/a/a/a/l;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/a/a/a/c/e;->P:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/a/c/e;->P:Z

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->G()V

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/c/e;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v0}, Lcom/a/a/a/e/h;->f()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1}, Lcom/a/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(II)V
    .locals 0

    iput p2, p0, Lcom/a/a/a/c/e;->d:I

    invoke-virtual {p0, p1}, Lcom/a/a/a/c/e;->n(I)V

    return-void
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    iget v2, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/a/a/a/c/e;->R:[B

    iget v2, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v1, v1, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_3

    :cond_2
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/a/a/a/c/e;->g(Ljava/lang/String;)V

    :cond_3
    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 p2, p2, 0x1

    if-lt p2, v0, :cond_0

    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    iget v1, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->r()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-object v0, p0, Lcom/a/a/a/c/e;->R:[B

    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x30

    if-lt v0, v1, :cond_4

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_4

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_4

    invoke-virtual {p0, v0}, Lcom/a/a/a/c/e;->k(I)I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/a/c/e;->g(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    iget v2, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->r()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\': was expecting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/a/c/e;->f(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/a/a/a/c/e;->R:[B

    iget v2, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/a/a/a/c/e;->k(I)I

    move-result v1

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public e()Lcom/a/a/a/f;
    .locals 8

    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    iget v1, p0, Lcom/a/a/a/c/e;->h:I

    sub-int/2addr v0, v1

    add-int/lit8 v7, v0, 0x1

    new-instance v0, Lcom/a/a/a/f;

    iget-object v1, p0, Lcom/a/a/a/c/e;->b:Lcom/a/a/a/b/c;

    invoke-virtual {v1}, Lcom/a/a/a/b/c;->a()Ljava/lang/Object;

    move-result-object v1

    iget-wide v2, p0, Lcom/a/a/a/c/e;->f:J

    iget v4, p0, Lcom/a/a/a/c/e;->d:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, -0x1

    iget v6, p0, Lcom/a/a/a/c/e;->g:I

    invoke-direct/range {v0 .. v7}, Lcom/a/a/a/f;-><init>(Ljava/lang/Object;JJII)V

    return-object v0
.end method

.method protected f(I)Lcom/a/a/a/l;
    .locals 11

    const/16 v10, 0x39

    const/16 v2, 0x2d

    const/16 v9, 0x30

    const/4 v7, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/a/a/a/c/e;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v0}, Lcom/a/a/a/e/h;->k()[C

    move-result-object v1

    if-ne p1, v2, :cond_2

    move v4, v5

    :goto_0
    if-eqz v4, :cond_d

    aput-char v2, v1, v7

    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    iget v2, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->q()V

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/c/e;->R:[B

    iget v2, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    if-lt v0, v9, :cond_1

    if-le v0, v10, :cond_3

    :cond_1
    invoke-virtual {p0, v0, v5}, Lcom/a/a/a/c/e;->a(IZ)Lcom/a/a/a/l;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    move v4, v7

    goto :goto_0

    :cond_3
    move v3, v5

    :goto_2
    if-ne v0, v9, :cond_4

    invoke-direct {p0}, Lcom/a/a/a/c/e;->L()I

    move-result v0

    :cond_4
    add-int/lit8 v2, v3, 0x1

    int-to-char v0, v0

    aput-char v0, v1, v3

    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    array-length v3, v1

    add-int/2addr v0, v3

    iget v3, p0, Lcom/a/a/a/c/e;->e:I

    if-le v0, v3, :cond_5

    iget v0, p0, Lcom/a/a/a/c/e;->e:I

    :cond_5
    :goto_3
    iget v3, p0, Lcom/a/a/a/c/e;->d:I

    if-lt v3, v0, :cond_6

    invoke-direct {p0, v1, v2, v4, v5}, Lcom/a/a/a/c/e;->a([CIZI)Lcom/a/a/a/l;

    move-result-object v0

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/a/a/a/c/e;->R:[B

    iget v6, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v8, v6, 0x1

    iput v8, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    if-lt v3, v9, :cond_7

    if-le v3, v10, :cond_9

    :cond_7
    const/16 v0, 0x2e

    if-eq v3, v0, :cond_8

    const/16 v0, 0x65

    if-eq v3, v0, :cond_8

    const/16 v0, 0x45

    if-ne v3, v0, :cond_a

    :cond_8
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/a/a/a/c/e;->a([CIIZI)Lcom/a/a/a/l;

    move-result-object v0

    goto :goto_1

    :cond_9
    add-int/lit8 v5, v5, 0x1

    array-length v6, v1

    if-lt v2, v6, :cond_c

    iget-object v1, p0, Lcom/a/a/a/c/e;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v1}, Lcom/a/a/a/e/h;->m()[C

    move-result-object v1

    move v6, v7

    :goto_4
    add-int/lit8 v2, v6, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v6

    goto :goto_3

    :cond_a
    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/a/a/a/c/e;->d:I

    iget-object v0, p0, Lcom/a/a/a/c/e;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v0, v2}, Lcom/a/a/a/e/h;->a(I)V

    iget-object v0, p0, Lcom/a/a/a/c/e;->l:Lcom/a/a/a/c/c;

    invoke-virtual {v0}, Lcom/a/a/a/c/c;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, v3}, Lcom/a/a/a/c/e;->p(I)V

    :cond_b
    invoke-virtual {p0, v4, v5}, Lcom/a/a/a/c/e;->a(ZI)Lcom/a/a/a/l;

    move-result-object v0

    goto :goto_1

    :cond_c
    move v6, v2

    goto :goto_4

    :cond_d
    move v3, v7

    move v0, p1

    goto :goto_2
.end method

.method public f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/c/e;->K:Lcom/a/a/a/l;

    sget-object v1, Lcom/a/a/a/l;->h:Lcom/a/a/a/l;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/a/a/a/c/e;->P:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/a/c/e;->P:Z

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->G()V

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/c/e;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v0}, Lcom/a/a/a/e/h;->f()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/c/e;->K:Lcom/a/a/a/l;

    invoke-virtual {p0, v0}, Lcom/a/a/a/c/e;->a(Lcom/a/a/a/l;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected g(I)Lcom/a/a/a/d/f;
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x22

    if-eq p1, v5, :cond_0

    invoke-virtual {p0, p1}, Lcom/a/a/a/c/e;->i(I)Lcom/a/a/a/d/f;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v0, v0, 0x9

    iget v1, p0, Lcom/a/a/a/c/e;->e:I

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->E()Lcom/a/a/a/d/f;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/c/e;->R:[B

    sget-object v1, Lcom/a/a/a/c/e;->L:[I

    iget v2, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    aget v3, v1, v2

    if-nez v3, :cond_a

    iget v3, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    aget v4, v1, v3

    if-nez v4, :cond_8

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    iget v3, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    aget v4, v1, v3

    if-nez v4, :cond_6

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    iget v3, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    aget v4, v1, v3

    if-nez v4, :cond_4

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    iget v3, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    aget v3, v1, v0

    if-nez v3, :cond_2

    iput v2, p0, Lcom/a/a/a/c/e;->V:I

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/c/e;->a(I[I)Lcom/a/a/a/d/f;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-ne v0, v5, :cond_3

    const/4 v0, 0x4

    invoke-direct {p0, v2, v0}, Lcom/a/a/a/c/e;->b(II)Lcom/a/a/a/d/f;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    invoke-direct {p0, v2, v0, v1}, Lcom/a/a/a/c/e;->a(III)Lcom/a/a/a/d/f;

    move-result-object v0

    goto :goto_0

    :cond_4
    if-ne v3, v5, :cond_5

    invoke-direct {p0, v2, v8}, Lcom/a/a/a/c/e;->b(II)Lcom/a/a/a/d/f;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-direct {p0, v2, v3, v8}, Lcom/a/a/a/c/e;->a(III)Lcom/a/a/a/d/f;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    if-ne v3, v5, :cond_7

    invoke-direct {p0, v2, v7}, Lcom/a/a/a/c/e;->b(II)Lcom/a/a/a/d/f;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0, v2, v3, v7}, Lcom/a/a/a/c/e;->a(III)Lcom/a/a/a/d/f;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    if-ne v3, v5, :cond_9

    invoke-direct {p0, v2, v6}, Lcom/a/a/a/c/e;->b(II)Lcom/a/a/a/d/f;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0, v2, v3, v6}, Lcom/a/a/a/c/e;->a(III)Lcom/a/a/a/d/f;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    if-ne v2, v5, :cond_b

    invoke-static {}, Lcom/a/a/a/d/a;->d()Lcom/a/a/a/d/f;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0, v4, v2, v4}, Lcom/a/a/a/c/e;->a(III)Lcom/a/a/a/d/f;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected g(Ljava/lang/String;)V
    .locals 1

    const-string v0, "\'null\', \'true\', \'false\' or NaN"

    invoke-virtual {p0, p1, v0}, Lcom/a/a/a/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected h(I)Lcom/a/a/a/d/f;
    .locals 12

    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v11, 0x4

    const/4 v5, 0x2

    const/16 v8, 0x22

    sget-object v1, Lcom/a/a/a/c/e;->L:[I

    move v2, v5

    move v4, p1

    :goto_0
    iget v0, p0, Lcom/a/a/a/c/e;->e:I

    iget v6, p0, Lcom/a/a/a/c/e;->d:I

    sub-int/2addr v0, v6

    if-ge v0, v11, :cond_0

    iget-object v1, p0, Lcom/a/a/a/c/e;->O:[I

    move-object v0, p0

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/a/a/a/c/e;->a([IIIII)Lcom/a/a/a/d/f;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/c/e;->R:[B

    iget v6, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v0, v0, v6

    and-int/lit16 v9, v0, 0xff

    aget v0, v1, v9

    if-eqz v0, :cond_2

    if-ne v9, v8, :cond_1

    iget-object v0, p0, Lcom/a/a/a/c/e;->O:[I

    invoke-direct {p0, v0, v2, v4, v10}, Lcom/a/a/a/c/e;->a([IIII)Lcom/a/a/a/d/f;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/a/a/a/c/e;->O:[I

    move-object v5, p0

    move v7, v2

    move v8, v4

    invoke-virtual/range {v5 .. v10}, Lcom/a/a/a/c/e;->a([IIIII)Lcom/a/a/a/d/f;

    move-result-object v0

    goto :goto_1

    :cond_2
    shl-int/lit8 v0, v4, 0x8

    or-int v6, v0, v9

    iget-object v0, p0, Lcom/a/a/a/c/e;->R:[B

    iget v4, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v0, v0, v4

    and-int/lit16 v4, v0, 0xff

    aget v0, v1, v4

    if-eqz v0, :cond_4

    if-ne v4, v8, :cond_3

    iget-object v0, p0, Lcom/a/a/a/c/e;->O:[I

    invoke-direct {p0, v0, v2, v6, v5}, Lcom/a/a/a/c/e;->a([IIII)Lcom/a/a/a/d/f;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/a/a/a/c/e;->O:[I

    move-object v0, p0

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/a/a/a/c/e;->a([IIIII)Lcom/a/a/a/d/f;

    move-result-object v0

    goto :goto_1

    :cond_4
    shl-int/lit8 v0, v6, 0x8

    or-int v6, v0, v4

    iget-object v0, p0, Lcom/a/a/a/c/e;->R:[B

    iget v4, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v0, v0, v4

    and-int/lit16 v4, v0, 0xff

    aget v0, v1, v4

    if-eqz v0, :cond_6

    if-ne v4, v8, :cond_5

    iget-object v0, p0, Lcom/a/a/a/c/e;->O:[I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v2, v6, v1}, Lcom/a/a/a/c/e;->a([IIII)Lcom/a/a/a/d/f;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/a/a/a/c/e;->O:[I

    const/4 v5, 0x3

    move-object v0, p0

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/a/a/a/c/e;->a([IIIII)Lcom/a/a/a/d/f;

    move-result-object v0

    goto :goto_1

    :cond_6
    shl-int/lit8 v0, v6, 0x8

    or-int v6, v0, v4

    iget-object v0, p0, Lcom/a/a/a/c/e;->R:[B

    iget v4, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v0, v0, v4

    and-int/lit16 v4, v0, 0xff

    aget v0, v1, v4

    if-eqz v0, :cond_8

    if-ne v4, v8, :cond_7

    iget-object v0, p0, Lcom/a/a/a/c/e;->O:[I

    invoke-direct {p0, v0, v2, v6, v11}, Lcom/a/a/a/c/e;->a([IIII)Lcom/a/a/a/d/f;

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lcom/a/a/a/c/e;->O:[I

    move-object v0, p0

    move v3, v6

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/a/a/a/c/e;->a([IIIII)Lcom/a/a/a/d/f;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/a/a/a/c/e;->O:[I

    array-length v0, v0

    if-lt v2, v0, :cond_9

    iget-object v0, p0, Lcom/a/a/a/c/e;->O:[I

    invoke-static {v0, v2}, Lcom/a/a/a/c/e;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/c/e;->O:[I

    :cond_9
    iget-object v7, p0, Lcom/a/a/a/c/e;->O:[I

    add-int/lit8 v0, v2, 0x1

    aput v6, v7, v2

    move v2, v0

    goto/16 :goto_0
.end method

.method protected i(I)Lcom/a/a/a/d/f;
    .locals 8

    const/4 v0, 0x0

    const/16 v1, 0x27

    if-ne p1, v1, :cond_0

    sget-object v1, Lcom/a/a/a/i;->e:Lcom/a/a/a/i;

    invoke-virtual {p0, v1}, Lcom/a/a/a/c/e;->a(Lcom/a/a/a/i;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->F()Lcom/a/a/a/d/f;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/a/a/a/i;->d:Lcom/a/a/a/i;

    invoke-virtual {p0, v1}, Lcom/a/a/a/c/e;->a(Lcom/a/a/a/i;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "was expecting double-quote to start field name"

    invoke-virtual {p0, p1, v1}, Lcom/a/a/a/c/e;->b(ILjava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/a/a/a/b/b;->d()[I

    move-result-object v6

    aget v1, v6, p1

    if-eqz v1, :cond_2

    const-string v1, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v1}, Lcom/a/a/a/c/e;->b(ILjava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/a/a/a/c/e;->O:[I

    move v1, v0

    move v5, v0

    move v2, p1

    move-object v7, v3

    move v3, v0

    move-object v0, v7

    :goto_1
    const/4 v4, 0x4

    if-ge v1, v4, :cond_6

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v4, v5, 0x8

    or-int/2addr v2, v4

    move v7, v1

    move v1, v2

    move v2, v3

    move-object v3, v0

    move v0, v7

    :goto_2
    iget v4, p0, Lcom/a/a/a/c/e;->d:I

    iget v5, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v4, v5, :cond_3

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->r()Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, " in field name"

    invoke-virtual {p0, v4}, Lcom/a/a/a/c/e;->e(Ljava/lang/String;)V

    :cond_3
    iget-object v4, p0, Lcom/a/a/a/c/e;->R:[B

    iget v5, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v4, v4, v5

    and-int/lit16 p1, v4, 0xff

    aget v4, v6, p1

    if-eqz v4, :cond_8

    if-lez v0, :cond_5

    array-length v4, v3

    if-lt v2, v4, :cond_4

    array-length v4, v3

    invoke-static {v3, v4}, Lcom/a/a/a/c/e;->a([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/a/a/a/c/e;->O:[I

    :cond_4
    add-int/lit8 v4, v2, 0x1

    aput v1, v3, v2

    move v2, v4

    :cond_5
    iget-object v1, p0, Lcom/a/a/a/c/e;->N:Lcom/a/a/a/d/a;

    invoke-virtual {v1, v3, v2}, Lcom/a/a/a/d/a;->a([II)Lcom/a/a/a/d/f;

    move-result-object v1

    if-nez v1, :cond_9

    invoke-direct {p0, v3, v2, v0}, Lcom/a/a/a/c/e;->a([III)Lcom/a/a/a/d/f;

    move-result-object v0

    goto :goto_0

    :cond_6
    array-length v1, v0

    if-lt v3, v1, :cond_7

    array-length v1, v0

    invoke-static {v0, v1}, Lcom/a/a/a/c/e;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/c/e;->O:[I

    :cond_7
    add-int/lit8 v4, v3, 0x1

    aput v5, v0, v3

    const/4 v1, 0x1

    move-object v3, v0

    move v0, v1

    move v1, v2

    move v2, v4

    goto :goto_2

    :cond_8
    iget v4, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/a/a/a/c/e;->d:I

    move v5, v1

    move v1, v0

    move-object v0, v3

    move v3, v2

    move v2, p1

    goto :goto_1

    :cond_9
    move-object v0, v1

    goto/16 :goto_0
.end method

.method protected j(I)Lcom/a/a/a/l;
    .locals 4

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(\'true\', \'false\' or \'null\')"

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    invoke-virtual {p0, p1, v0}, Lcom/a/a/a/c/e;->b(ILjava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :sswitch_0
    sget-object v0, Lcom/a/a/a/i;->e:Lcom/a/a/a/i;

    invoke-virtual {p0, v0}, Lcom/a/a/a/c/e;->a(Lcom/a/a/a/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->I()Lcom/a/a/a/l;

    move-result-object v0

    goto :goto_1

    :sswitch_1
    const-string v0, "NaN"

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/c/e;->a(Ljava/lang/String;I)V

    sget-object v0, Lcom/a/a/a/i;->i:Lcom/a/a/a/i;

    invoke-virtual {p0, v0}, Lcom/a/a/a/c/e;->a(Lcom/a/a/a/i;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "NaN"

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, v0, v2, v3}, Lcom/a/a/a/c/e;->a(Ljava/lang/String;D)Lcom/a/a/a/l;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "Non-standard token \'NaN\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {p0, v0}, Lcom/a/a/a/c/e;->f(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const-string v0, "Infinity"

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/c/e;->a(Ljava/lang/String;I)V

    sget-object v0, Lcom/a/a/a/i;->i:Lcom/a/a/a/i;

    invoke-virtual {p0, v0}, Lcom/a/a/a/c/e;->a(Lcom/a/a/a/i;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Infinity"

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-virtual {p0, v0, v2, v3}, Lcom/a/a/a/c/e;->a(Ljava/lang/String;D)Lcom/a/a/a/l;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, "Non-standard token \'Infinity\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {p0, v0}, Lcom/a/a/a/c/e;->f(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcom/a/a/a/c/e;->d:I

    iget v1, p0, Lcom/a/a/a/c/e;->e:I

    if-lt v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->r()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->C()V

    :cond_4
    iget-object v0, p0, Lcom/a/a/a/c/e;->R:[B

    iget v1, p0, Lcom/a/a/a/c/e;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/a/c/e;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/c/e;->a(IZ)Lcom/a/a/a/l;

    move-result-object v0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x2b -> :sswitch_3
        0x49 -> :sswitch_2
        0x4e -> :sswitch_1
    .end sparse-switch
.end method

.method protected k(I)I
    .locals 6

    const/4 v2, 0x2

    const/16 v5, 0x80

    const/4 v1, 0x1

    if-gez p1, :cond_3

    and-int/lit16 v0, p1, 0xe0

    const/16 v3, 0xc0

    if-ne v0, v3, :cond_4

    and-int/lit8 p1, p1, 0x1f

    move v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/a/a/a/c/e;->S()I

    move-result v3

    and-int/lit16 v4, v3, 0xc0

    if-eq v4, v5, :cond_0

    and-int/lit16 v4, v3, 0xff

    invoke-virtual {p0, v4}, Lcom/a/a/a/c/e;->n(I)V

    :cond_0
    shl-int/lit8 v4, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int p1, v4, v3

    if-le v0, v1, :cond_3

    invoke-direct {p0}, Lcom/a/a/a/c/e;->S()I

    move-result v1

    and-int/lit16 v3, v1, 0xc0

    if-eq v3, v5, :cond_1

    and-int/lit16 v3, v1, 0xff

    invoke-virtual {p0, v3}, Lcom/a/a/a/c/e;->n(I)V

    :cond_1
    shl-int/lit8 v3, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int p1, v3, v1

    if-le v0, v2, :cond_3

    invoke-direct {p0}, Lcom/a/a/a/c/e;->S()I

    move-result v0

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v5, :cond_2

    and-int/lit16 v1, v0, 0xff

    invoke-virtual {p0, v1}, Lcom/a/a/a/c/e;->n(I)V

    :cond_2
    shl-int/lit8 v1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int p1, v1, v0

    :cond_3
    return p1

    :cond_4
    and-int/lit16 v0, p1, 0xf0

    const/16 v3, 0xe0

    if-ne v0, v3, :cond_5

    and-int/lit8 p1, p1, 0xf

    move v0, v2

    goto :goto_0

    :cond_5
    and-int/lit16 v0, p1, 0xf8

    const/16 v3, 0xf0

    if-ne v0, v3, :cond_6

    and-int/lit8 p1, p1, 0x7

    const/4 v0, 0x3

    goto :goto_0

    :cond_6
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lcom/a/a/a/c/e;->m(I)V

    move v0, v1

    goto :goto_0
.end method

.method protected l(I)V
    .locals 1

    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/a/a/a/c/e;->d(I)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/a/a/a/c/e;->m(I)V

    return-void
.end method

.method protected m(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 start byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/a/c/e;->f(Ljava/lang/String;)V

    return-void
.end method

.method protected n(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 middle byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/a/c/e;->f(Ljava/lang/String;)V

    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/c/e;->K:Lcom/a/a/a/l;

    sget-object v1, Lcom/a/a/a/l;->h:Lcom/a/a/a/l;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/a/a/a/c/e;->P:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/a/c/e;->P:Z

    invoke-virtual {p0}, Lcom/a/a/a/c/e;->G()V

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/c/e;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v0}, Lcom/a/a/a/e/h;->f()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/a/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final r()Z
    .locals 6

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/a/a/a/c/e;->f:J

    iget v1, p0, Lcom/a/a/a/c/e;->e:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/a/a/a/c/e;->f:J

    iget v1, p0, Lcom/a/a/a/c/e;->h:I

    iget v2, p0, Lcom/a/a/a/c/e;->e:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/a/a/a/c/e;->h:I

    iget-object v1, p0, Lcom/a/a/a/c/e;->Q:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/a/a/a/c/e;->Q:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/a/a/a/c/e;->R:[B

    iget-object v3, p0, Lcom/a/a/a/c/e;->R:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_1

    iput v0, p0, Lcom/a/a/a/c/e;->d:I

    iput v1, p0, Lcom/a/a/a/c/e;->e:I

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/a/a/a/c/e;->s()V

    if-nez v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputStream.read() returned 0 characters when trying to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/a/c/e;->R:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected s()V
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/c/e;->Q:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/a/c/e;->b:Lcom/a/a/a/b/c;

    invoke-virtual {v0}, Lcom/a/a/a/b/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/a/a/a/i;->a:Lcom/a/a/a/i;

    invoke-virtual {p0, v0}, Lcom/a/a/a/c/e;->a(Lcom/a/a/a/i;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/c/e;->Q:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/c/e;->Q:Ljava/io/InputStream;

    :cond_2
    return-void
.end method

.method protected t()V
    .locals 2

    invoke-super {p0}, Lcom/a/a/a/a/a;->t()V

    iget-object v0, p0, Lcom/a/a/a/c/e;->N:Lcom/a/a/a/d/a;

    invoke-virtual {v0}, Lcom/a/a/a/d/a;->b()V

    iget-boolean v0, p0, Lcom/a/a/a/c/e;->S:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/c/e;->R:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/a/a/a/c/e;->R:[B

    iget-object v1, p0, Lcom/a/a/a/c/e;->b:Lcom/a/a/a/b/c;

    invoke-virtual {v1, v0}, Lcom/a/a/a/b/c;->a([B)V

    :cond_0
    return-void
.end method
