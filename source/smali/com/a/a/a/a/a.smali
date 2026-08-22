.class public abstract Lcom/a/a/a/a/a;
.super Lcom/a/a/a/a/b;


# static fields
.field static final s:Ljava/math/BigInteger;

.field static final t:Ljava/math/BigInteger;

.field static final u:Ljava/math/BigInteger;

.field static final v:Ljava/math/BigInteger;

.field static final w:Ljava/math/BigDecimal;

.field static final x:Ljava/math/BigDecimal;

.field static final y:Ljava/math/BigDecimal;

.field static final z:Ljava/math/BigDecimal;


# instance fields
.field protected A:I

.field protected B:I

.field protected C:J

.field protected D:D

.field protected E:Ljava/math/BigInteger;

.field protected F:Ljava/math/BigDecimal;

.field protected G:Z

.field protected H:I

.field protected I:I

.field protected J:I

.field protected final b:Lcom/a/a/a/b/c;

.field protected c:Z

.field protected d:I

.field protected e:I

.field protected f:J

.field protected g:I

.field protected h:I

.field protected i:J

.field protected j:I

.field protected k:I

.field protected l:Lcom/a/a/a/c/c;

.field protected m:Lcom/a/a/a/l;

.field protected final n:Lcom/a/a/a/e/h;

.field protected o:[C

.field protected p:Z

.field protected q:Lcom/a/a/a/e/e;

.field protected r:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, -0x80000000

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/a/a/a/a/a;->s:Ljava/math/BigInteger;

    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/a/a/a/a/a;->t:Ljava/math/BigInteger;

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/a/a/a/a/a;->u:Ljava/math/BigInteger;

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/a/a/a/a/a;->v:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Lcom/a/a/a/a/a;->u:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lcom/a/a/a/a/a;->w:Ljava/math/BigDecimal;

    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Lcom/a/a/a/a/a;->v:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lcom/a/a/a/a/a;->x:Ljava/math/BigDecimal;

    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Lcom/a/a/a/a/a;->s:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lcom/a/a/a/a/a;->y:Ljava/math/BigDecimal;

    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Lcom/a/a/a/a/a;->t:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lcom/a/a/a/a/a;->z:Ljava/math/BigDecimal;

    return-void
.end method

.method protected constructor <init>(Lcom/a/a/a/b/c;I)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/a/a/a/a/b;-><init>()V

    iput v1, p0, Lcom/a/a/a/a/a;->d:I

    iput v1, p0, Lcom/a/a/a/a/a;->e:I

    iput-wide v4, p0, Lcom/a/a/a/a/a;->f:J

    iput v2, p0, Lcom/a/a/a/a/a;->g:I

    iput v1, p0, Lcom/a/a/a/a/a;->h:I

    iput-wide v4, p0, Lcom/a/a/a/a/a;->i:J

    iput v2, p0, Lcom/a/a/a/a/a;->j:I

    iput v1, p0, Lcom/a/a/a/a/a;->k:I

    iput-object v0, p0, Lcom/a/a/a/a/a;->o:[C

    iput-boolean v1, p0, Lcom/a/a/a/a/a;->p:Z

    iput-object v0, p0, Lcom/a/a/a/a/a;->q:Lcom/a/a/a/e/e;

    iput v1, p0, Lcom/a/a/a/a/a;->A:I

    iput p2, p0, Lcom/a/a/a/a/a;->a:I

    iput-object p1, p0, Lcom/a/a/a/a/a;->b:Lcom/a/a/a/b/c;

    invoke-virtual {p1}, Lcom/a/a/a/b/c;->d()Lcom/a/a/a/e/h;

    move-result-object v1

    iput-object v1, p0, Lcom/a/a/a/a/a;->n:Lcom/a/a/a/e/h;

    sget-object v1, Lcom/a/a/a/i;->j:Lcom/a/a/a/i;

    invoke-virtual {v1, p2}, Lcom/a/a/a/i;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/a/a/a/c/b;->a(Lcom/a/a/a/h;)Lcom/a/a/a/c/b;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/a/a/a/c/c;->a(Lcom/a/a/a/c/b;)Lcom/a/a/a/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/a/a;->l:Lcom/a/a/a/c/c;

    return-void
.end method

.method private a(I[CII)V
    .locals 4

    iget-object v0, p0, Lcom/a/a/a/a/a;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v0}, Lcom/a/a/a/e/h;->f()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-boolean v0, p0, Lcom/a/a/a/a/a;->G:Z

    invoke-static {p2, p3, p4, v0}, Lcom/a/a/a/b/f;->a([CIIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/a/a/a/a/a;->C:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/a/a/a/a/a;->A:I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/a/a/a/a/a;->E:Ljava/math/BigInteger;

    const/4 v0, 0x4

    iput v0, p0, Lcom/a/a/a/a/a;->A:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed numeric value \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private f(I)V
    .locals 3

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/a/a;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v0}, Lcom/a/a/a/e/h;->h()Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/a/a;->F:Ljava/math/BigDecimal;

    const/16 v0, 0x10

    iput v0, p0, Lcom/a/a/a/a/a;->A:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/a/a;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v0}, Lcom/a/a/a/e/h;->i()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a/a/a/a;->D:D

    const/16 v0, 0x8

    iput v0, p0, Lcom/a/a/a/a/a;->A:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed numeric value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/a/a/a;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v2}, Lcom/a/a/a/e/h;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected A()C
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final a(Ljava/lang/String;D)Lcom/a/a/a/l;
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/a/a;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v0, p1}, Lcom/a/a/a/e/h;->a(Ljava/lang/String;)V

    iput-wide p2, p0, Lcom/a/a/a/a/a;->D:D

    const/16 v0, 0x8

    iput v0, p0, Lcom/a/a/a/a/a;->A:I

    sget-object v0, Lcom/a/a/a/l;->j:Lcom/a/a/a/l;

    return-object v0
.end method

.method protected final a(ZI)Lcom/a/a/a/l;
    .locals 1

    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/a/a/a/a/a;->G:Z

    iput p2, p0, Lcom/a/a/a/a/a;->H:I

    iput v0, p0, Lcom/a/a/a/a/a;->I:I

    iput v0, p0, Lcom/a/a/a/a/a;->J:I

    iput v0, p0, Lcom/a/a/a/a/a;->A:I

    sget-object v0, Lcom/a/a/a/l;->i:Lcom/a/a/a/l;

    return-object v0
.end method

.method protected final a(ZIII)Lcom/a/a/a/l;
    .locals 1

    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    if-ge p4, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/a/a/a/a/a;->a(ZI)Lcom/a/a/a/l;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/a/a/a/a/a;->b(ZIII)Lcom/a/a/a/l;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(IC)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/a/a;->l:Lcom/a/a/a/c/c;

    iget-object v2, p0, Lcom/a/a/a/a/a;->b:Lcom/a/a/a/b/c;

    invoke-virtual {v2}, Lcom/a/a/a/b/c;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/a/c/c;->a(Ljava/lang/Object;)Lcom/a/a/a/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected close marker \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/a/a/a;->l:Lcom/a/a/a/c/c;

    invoke-virtual {v2}, Lcom/a/a/a/c/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " starting at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/a/a/a;->f(Ljava/lang/String;)V

    return-void
.end method

.method protected a(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected character ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/a/a/a/a/a;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in numeric value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/a/a/a/a/a;->f(Ljava/lang/String;)V

    return-void
.end method

.method protected final b(ZIII)Lcom/a/a/a/l;
    .locals 1

    iput-boolean p1, p0, Lcom/a/a/a/a/a;->G:Z

    iput p2, p0, Lcom/a/a/a/a/a;->H:I

    iput p3, p0, Lcom/a/a/a/a/a;->I:I

    iput p4, p0, Lcom/a/a/a/a/a;->J:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/a/a/a;->A:I

    sget-object v0, Lcom/a/a/a/l;->j:Lcom/a/a/a/l;

    return-object v0
.end method

.method protected b(I)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/a/a/a/a/a;->K:Lcom/a/a/a/l;

    sget-object v1, Lcom/a/a/a/l;->i:Lcom/a/a/a/l;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/a/a/a/a/a;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v0}, Lcom/a/a/a/e/h;->e()[C

    move-result-object v1

    iget-object v0, p0, Lcom/a/a/a/a/a;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v0}, Lcom/a/a/a/e/h;->d()I

    move-result v0

    iget v2, p0, Lcom/a/a/a/a/a;->H:I

    iget-boolean v3, p0, Lcom/a/a/a/a/a;->G:Z

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    const/16 v3, 0x9

    if-gt v2, v3, :cond_2

    invoke-static {v1, v0, v2}, Lcom/a/a/a/b/f;->a([CII)I

    move-result v0

    iget-boolean v1, p0, Lcom/a/a/a/a/a;->G:Z

    if-eqz v1, :cond_1

    neg-int v0, v0

    :cond_1
    iput v0, p0, Lcom/a/a/a/a/a;->B:I

    iput v4, p0, Lcom/a/a/a/a/a;->A:I

    :goto_0
    return-void

    :cond_2
    const/16 v3, 0x12

    if-gt v2, v3, :cond_6

    invoke-static {v1, v0, v2}, Lcom/a/a/a/b/f;->b([CII)J

    move-result-wide v0

    iget-boolean v3, p0, Lcom/a/a/a/a/a;->G:Z

    if-eqz v3, :cond_3

    neg-long v0, v0

    :cond_3
    const/16 v3, 0xa

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Lcom/a/a/a/a/a;->G:Z

    if-eqz v2, :cond_4

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_5

    long-to-int v0, v0

    iput v0, p0, Lcom/a/a/a/a/a;->B:I

    iput v4, p0, Lcom/a/a/a/a/a;->A:I

    goto :goto_0

    :cond_4
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_5

    long-to-int v0, v0

    iput v0, p0, Lcom/a/a/a/a/a;->B:I

    iput v4, p0, Lcom/a/a/a/a/a;->A:I

    goto :goto_0

    :cond_5
    iput-wide v0, p0, Lcom/a/a/a/a/a;->C:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/a/a/a/a/a;->A:I

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/a/a/a/a/a;->a(I[CII)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/a/a/a/a/a;->K:Lcom/a/a/a/l;

    sget-object v1, Lcom/a/a/a/l;->j:Lcom/a/a/a/l;

    if-ne v0, v1, :cond_8

    invoke-direct {p0, p1}, Lcom/a/a/a/a/a;->f(I)V

    goto :goto_0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/a/a;->K:Lcom/a/a/a/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not numeric, can not use numeric value accessors"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/a/a/a;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected c(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid numeric value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/a/a/a;->f(Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/a/a/a;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/a/a/a;->c:Z

    :try_start_0
    invoke-virtual {p0}, Lcom/a/a/a/a/a;->s()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/a/a/a/a/a;->t()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/a/a/a/a/a;->t()V

    throw v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/a/a;->K:Lcom/a/a/a/l;

    sget-object v1, Lcom/a/a/a/l;->b:Lcom/a/a/a/l;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/a/a/a/a/a;->K:Lcom/a/a/a/l;

    sget-object v1, Lcom/a/a/a/l;->d:Lcom/a/a/a/l;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/a/a;->l:Lcom/a/a/a/c/c;

    invoke-virtual {v0}, Lcom/a/a/a/c/c;->g()Lcom/a/a/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/c/c;->f()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/a/a;->l:Lcom/a/a/a/c/c;

    invoke-virtual {v0}, Lcom/a/a/a/c/c;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public e()Lcom/a/a/a/f;
    .locals 10

    iget v0, p0, Lcom/a/a/a/a/a;->d:I

    iget v1, p0, Lcom/a/a/a/a/a;->h:I

    sub-int/2addr v0, v1

    add-int/lit8 v7, v0, 0x1

    new-instance v0, Lcom/a/a/a/f;

    iget-object v1, p0, Lcom/a/a/a/a/a;->b:Lcom/a/a/a/b/c;

    invoke-virtual {v1}, Lcom/a/a/a/b/c;->a()Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v2, -0x1

    iget-wide v4, p0, Lcom/a/a/a/a/a;->f:J

    iget v6, p0, Lcom/a/a/a/a/a;->d:I

    int-to-long v8, v6

    add-long/2addr v4, v8

    iget v6, p0, Lcom/a/a/a/a/a;->g:I

    invoke-direct/range {v0 .. v7}, Lcom/a/a/a/f;-><init>(Ljava/lang/Object;JJII)V

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/a/a/a/a/a;->A:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/a/a/a/a/a;->A:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/a/a/a/a/a;->b(I)V

    :cond_0
    iget v0, p0, Lcom/a/a/a/a/a;->A:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/a/a/a/a/a;->v()V

    :cond_1
    iget v0, p0, Lcom/a/a/a/a/a;->B:I

    return v0
.end method

.method public h()J
    .locals 2

    iget v0, p0, Lcom/a/a/a/a/a;->A:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/a/a/a/a/a;->A:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/a/a/a/a/a;->b(I)V

    :cond_0
    iget v0, p0, Lcom/a/a/a/a/a;->A:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/a/a/a/a/a;->w()V

    :cond_1
    iget-wide v0, p0, Lcom/a/a/a/a/a;->C:J

    return-wide v0
.end method

.method public i()D
    .locals 2

    iget v0, p0, Lcom/a/a/a/a/a;->A:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    iget v0, p0, Lcom/a/a/a/a/a;->A:I

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/a/a/a/a/a;->b(I)V

    :cond_0
    iget v0, p0, Lcom/a/a/a/a/a;->A:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/a/a/a/a/a;->x()V

    :cond_1
    iget-wide v0, p0, Lcom/a/a/a/a/a;->D:D

    return-wide v0
.end method

.method public k()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final q()V
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/a/a/a;->r()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/a/a/a;->B()V

    :cond_0
    return-void
.end method

.method protected abstract r()Z
.end method

.method protected abstract s()V
.end method

.method protected t()V
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/a/a;->n:Lcom/a/a/a/e/h;

    invoke-virtual {v0}, Lcom/a/a/a/e/h;->a()V

    iget-object v0, p0, Lcom/a/a/a/a/a;->o:[C

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/a/a/a/a/a;->o:[C

    iget-object v1, p0, Lcom/a/a/a/a/a;->b:Lcom/a/a/a/b/c;

    invoke-virtual {v1, v0}, Lcom/a/a/a/b/c;->b([C)V

    :cond_0
    return-void
.end method

.method protected u()V
    .locals 3

    iget-object v0, p0, Lcom/a/a/a/a/a;->l:Lcom/a/a/a/c/c;

    invoke-virtual {v0}, Lcom/a/a/a/c/c;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": expected close marker for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/a/a;->l:Lcom/a/a/a/c/c;

    invoke-virtual {v1}, Lcom/a/a/a/c/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/a/a;->l:Lcom/a/a/a/c/c;

    iget-object v2, p0, Lcom/a/a/a/a/a;->b:Lcom/a/a/a/b/c;

    invoke-virtual {v2}, Lcom/a/a/a/b/c;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/a/c/c;->a(Ljava/lang/Object;)Lcom/a/a/a/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/a/a/a;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected v()V
    .locals 6

    iget v0, p0, Lcom/a/a/a/a/a;->A:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/a/a/a/a/a;->C:J

    long-to-int v0, v0

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/a/a/a/a/a;->C:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Numeric value ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/a/a/a/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") out of range of int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/a/a/a/a/a;->f(Ljava/lang/String;)V

    :cond_0
    iput v0, p0, Lcom/a/a/a/a/a;->B:I

    :goto_0
    iget v0, p0, Lcom/a/a/a/a/a;->A:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/a/a/a;->A:I

    return-void

    :cond_1
    iget v0, p0, Lcom/a/a/a/a/a;->A:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    sget-object v0, Lcom/a/a/a/a/a;->s:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/a/a/a/a/a;->E:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_2

    sget-object v0, Lcom/a/a/a/a/a;->t:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/a/a/a/a/a;->E:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/a/a/a/a/a;->y()V

    :cond_3
    iget-object v0, p0, Lcom/a/a/a/a/a;->E:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lcom/a/a/a/a/a;->B:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/a/a/a/a/a;->A:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/a/a/a/a/a;->D:D

    const-wide/high16 v2, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_5

    iget-wide v0, p0, Lcom/a/a/a/a/a;->D:D

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v0, v0, v2

    if-lez v0, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/a/a/a/a/a;->y()V

    :cond_6
    iget-wide v0, p0, Lcom/a/a/a/a/a;->D:D

    double-to-int v0, v0

    iput v0, p0, Lcom/a/a/a/a/a;->B:I

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/a/a/a/a/a;->A:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    sget-object v0, Lcom/a/a/a/a/a;->y:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/a/a/a/a/a;->F:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_8

    sget-object v0, Lcom/a/a/a/a/a;->z:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/a/a/a/a/a;->F:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_9

    :cond_8
    invoke-virtual {p0}, Lcom/a/a/a/a/a;->y()V

    :cond_9
    iget-object v0, p0, Lcom/a/a/a/a/a;->F:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    iput v0, p0, Lcom/a/a/a/a/a;->B:I

    goto :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/a/a/a/a/a;->D()V

    goto :goto_0
.end method

.method protected w()V
    .locals 4

    iget v0, p0, Lcom/a/a/a/a/a;->A:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/a/a/a/a/a;->B:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/a/a/a/a/a;->C:J

    :goto_0
    iget v0, p0, Lcom/a/a/a/a/a;->A:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/a/a/a/a/a;->A:I

    return-void

    :cond_0
    iget v0, p0, Lcom/a/a/a/a/a;->A:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    sget-object v0, Lcom/a/a/a/a/a;->u:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/a/a/a/a/a;->E:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_1

    sget-object v0, Lcom/a/a/a/a/a;->v:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/a/a/a/a/a;->E:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/a/a/a/a/a;->z()V

    :cond_2
    iget-object v0, p0, Lcom/a/a/a/a/a;->E:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a/a/a/a;->C:J

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/a/a/a/a/a;->A:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/a/a/a/a/a;->D:D

    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_4

    iget-wide v0, p0, Lcom/a/a/a/a/a;->D:D

    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v0, v0, v2

    if-lez v0, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/a/a/a/a/a;->z()V

    :cond_5
    iget-wide v0, p0, Lcom/a/a/a/a/a;->D:D

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/a/a/a/a/a;->C:J

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/a/a/a/a/a;->A:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    sget-object v0, Lcom/a/a/a/a/a;->w:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/a/a/a/a/a;->F:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_7

    sget-object v0, Lcom/a/a/a/a/a;->x:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/a/a/a/a/a;->F:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/a/a/a/a/a;->z()V

    :cond_8
    iget-object v0, p0, Lcom/a/a/a/a/a;->F:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a/a/a/a;->C:J

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/a/a/a/a/a;->D()V

    goto :goto_0
.end method

.method protected x()V
    .locals 2

    iget v0, p0, Lcom/a/a/a/a/a;->A:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/a/a;->F:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a/a/a/a;->D:D

    :goto_0
    iget v0, p0, Lcom/a/a/a/a/a;->A:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/a/a/a/a/a;->A:I

    return-void

    :cond_0
    iget v0, p0, Lcom/a/a/a/a/a;->A:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/a/a/a;->E:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a/a/a/a;->D:D

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/a/a/a/a/a;->A:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/a/a/a/a/a;->C:J

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/a/a/a/a/a;->D:D

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/a/a/a/a/a;->A:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/a/a/a/a/a;->B:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/a/a/a/a/a;->D:D

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/a/a/a/a/a;->D()V

    goto :goto_0
.end method

.method protected y()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Numeric value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/a/a/a/a/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out of range of int ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/a/a/a;->f(Ljava/lang/String;)V

    return-void
.end method

.method protected z()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Numeric value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/a/a/a/a/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out of range of long ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/high16 v2, -0x8000000000000000L

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/a/a/a;->f(Ljava/lang/String;)V

    return-void
.end method
