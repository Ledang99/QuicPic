.class public La/d/bd;
.super Ljava/net/URLConnection;

# interfaces
.implements La/d/bb;


# static fields
.field static final a:I

.field static final b:I

.field static c:La/e/e;

.field static d:J

.field protected static e:La/d/d;


# instance fields
.field f:La/d/t;

.field g:La/d/bo;

.field h:Ljava/lang/String;

.field i:I

.field j:I

.field k:Z

.field l:I

.field m:[La/a;

.field n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:J

.field private r:J

.field private s:I

.field private t:J

.field private u:J

.field private v:J

.field private w:Z

.field private x:I

.field private y:La/d/x;

.field private z:La/d/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "."

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, La/d/bd;->a:I

    const-string v0, ".."

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, La/d/bd;->b:I

    invoke-static {}, La/e/e;->a()La/e/e;

    move-result-object v0

    sput-object v0, La/d/bd;->c:La/e/e;

    const-wide/16 v0, 0x1388

    sput-wide v0, La/d/bd;->d:J

    new-instance v0, La/d/d;

    invoke-direct {v0}, La/d/d;-><init>()V

    sput-object v0, La/d/bd;->e:La/d/d;

    return-void
.end method

.method constructor <init>(La/d/bd;Ljava/lang/String;IIJJJ)V
    .locals 5

    const/16 v4, 0x5c

    invoke-virtual {p1}, La/d/bd;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smb://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, La/d/j;->a:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    :goto_0
    invoke-direct {p0, v0}, La/d/bd;-><init>(Ljava/net/URL;)V

    iget-object v0, p1, La/d/bd;->f:La/d/t;

    iput-object v0, p0, La/d/bd;->f:La/d/t;

    iget-object v0, p1, La/d/bd;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, La/d/bd;->g:La/d/bo;

    iput-object v0, p0, La/d/bd;->g:La/d/bo;

    iget-object v0, p1, La/d/bd;->z:La/d/f;

    iput-object v0, p0, La/d/bd;->z:La/d/f;

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_1
    iget-object v0, p1, La/d/bd;->p:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, "\\"

    iput-object v0, p0, La/d/bd;->h:Ljava/lang/String;

    :goto_1
    iput p3, p0, La/d/bd;->j:I

    iput p4, p0, La/d/bd;->s:I

    iput-wide p5, p0, La/d/bd;->q:J

    iput-wide p7, p0, La/d/bd;->r:J

    iput-wide p9, p0, La/d/bd;->u:J

    const/4 v0, 0x1

    iput-boolean v0, p0, La/d/bd;->w:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, La/d/bd;->d:J

    add-long/2addr v0, v2

    iput-wide v0, p0, La/d/bd;->v:J

    iput-wide v0, p0, La/d/bd;->t:J

    return-void

    :cond_2
    new-instance v1, Ljava/net/URL;

    iget-object v2, p1, La/d/bd;->url:Ljava/net/URL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit8 v0, p4, 0x10

    if-lez v0, :cond_3

    const-string v0, "/"

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_2

    :cond_4
    iget-object v0, p1, La/d/bd;->h:Ljava/lang/String;

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/d/bd;->h:Ljava/lang/String;

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, La/d/bd;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/d/bd;->h:Ljava/lang/String;

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    sget-object v2, La/d/j;->a:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0}, La/d/bd;-><init>(Ljava/net/URL;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;La/d/t;)V
    .locals 3

    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    sget-object v2, La/d/j;->a:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0, p2}, La/d/bd;-><init>(Ljava/net/URL;La/d/t;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 2

    new-instance v0, La/d/t;

    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/d/t;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, La/d/bd;-><init>(Ljava/net/URL;La/d/t;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;La/d/t;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    const/4 v0, 0x7

    iput v0, p0, La/d/bd;->x:I

    iput-object v1, p0, La/d/bd;->y:La/d/x;

    iput-object v1, p0, La/d/bd;->z:La/d/f;

    iput-object v1, p0, La/d/bd;->g:La/d/bo;

    if-nez p2, :cond_0

    new-instance p2, La/d/t;

    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, La/d/t;-><init>(Ljava/lang/String;)V

    :cond_0
    iput-object p2, p0, La/d/bd;->f:La/d/t;

    invoke-virtual {p0}, La/d/bd;->k()Ljava/lang/String;

    return-void
.end method

.method private A()La/d/x;
    .locals 1

    iget-object v0, p0, La/d/bd;->y:La/d/x;

    if-nez v0, :cond_0

    new-instance v0, La/d/x;

    invoke-direct {v0}, La/d/x;-><init>()V

    iput-object v0, p0, La/d/bd;->y:La/d/x;

    :cond_0
    iget-object v0, p0, La/d/bd;->y:La/d/x;

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_3

    aget-char v4, v3, v2

    const/16 v5, 0x26

    if-ne v4, v5, :cond_2

    if-le v0, v1, :cond_0

    new-instance v4, Ljava/lang/String;

    sub-int v5, v0, v1

    invoke-direct {v4, v3, v1, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    new-instance v0, Ljava/lang/String;

    sub-int/2addr v2, v1

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v1, v2, 0x1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/16 v5, 0x3d

    if-ne v4, v5, :cond_1

    move v0, v2

    goto :goto_2

    :cond_3
    if-le v0, v1, :cond_4

    new-instance v2, Ljava/lang/String;

    sub-int v4, v0, v1

    invoke-direct {v2, v3, v1, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v1, v0, 0x1

    new-instance v0, Ljava/lang/String;

    array-length v2, v3

    sub-int/2addr v2, v1

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic b(La/d/bd;)I
    .locals 1

    iget v0, p0, La/d/bd;->s:I

    return v0
.end method

.method static synthetic c(La/d/bd;)J
    .locals 2

    iget-wide v0, p0, La/d/bd;->q:J

    return-wide v0
.end method

.method static synthetic d(La/d/bd;)J
    .locals 2

    iget-wide v0, p0, La/d/bd;->r:J

    return-wide v0
.end method

.method static synthetic e(La/d/bd;)J
    .locals 2

    iget-wide v0, p0, La/d/bd;->u:J

    return-wide v0
.end method


# virtual methods
.method a(IIII)I
    .locals 10

    const/4 v7, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0}, La/d/bd;->e()V

    sget-object v0, La/d/bd;->c:La/e/e;

    sget v0, La/e/e;->a:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    sget-object v0, La/d/bd;->c:La/e/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/d/bd;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/e/e;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, La/d/bd;->g:La/d/bo;

    iget-object v0, v0, La/d/bo;->f:La/d/bk;

    iget-object v0, v0, La/d/bk;->e:La/d/bm;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, La/d/bm;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v8, La/d/af;

    invoke-direct {v8}, La/d/af;-><init>()V

    new-instance v0, La/d/ae;

    iget-object v1, p0, La/d/bd;->h:Ljava/lang/String;

    iget v4, p0, La/d/bd;->x:I

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, La/d/ae;-><init>(Ljava/lang/String;IIIIILa/d/u;)V

    instance-of v1, p0, La/d/bj;

    if-eqz v1, :cond_1

    iget v1, v0, La/d/ae;->b:I

    or-int/lit8 v1, v1, 0x16

    iput v1, v0, La/d/ae;->b:I

    iget v1, v0, La/d/ae;->c:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, La/d/ae;->c:I

    iput-boolean v9, v8, La/d/af;->N:Z

    :cond_1
    invoke-virtual {p0, v0, v8}, La/d/bd;->a(La/d/u;La/d/u;)V

    iget v0, v8, La/d/af;->c:I

    iget v1, v8, La/d/af;->D:I

    and-int/lit16 v1, v1, 0x7fff

    iput v1, p0, La/d/bd;->s:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, La/d/bd;->d:J

    add-long/2addr v2, v4

    iput-wide v2, p0, La/d/bd;->t:J

    iput-boolean v9, p0, La/d/bd;->w:Z

    :goto_0
    return v0

    :cond_2
    new-instance v0, La/d/ak;

    invoke-direct {v0}, La/d/ak;-><init>()V

    new-instance v1, La/d/aj;

    iget-object v2, p0, La/d/bd;->h:Ljava/lang/String;

    invoke-direct {v1, v2, p2, p1, v7}, La/d/aj;-><init>(Ljava/lang/String;IILa/d/u;)V

    invoke-virtual {p0, v1, v0}, La/d/bd;->a(La/d/u;La/d/u;)V

    iget v0, v0, La/d/ak;->b:I

    goto :goto_0
.end method

.method a()La/a;
    .locals 2

    iget v0, p0, La/d/bd;->n:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, La/d/bd;->b()La/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/d/bd;->m:[La/a;

    iget v1, p0, La/d/bd;->n:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method a(Ljava/lang/String;I)La/d/k;
    .locals 6

    invoke-virtual {p0}, La/d/bd;->e()V

    sget-object v0, La/d/bd;->c:La/e/e;

    sget v0, La/e/e;->a:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    sget-object v0, La/d/bd;->c:La/e/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/e/e;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, La/d/bd;->g:La/d/bo;

    iget-object v0, v0, La/d/bo;->f:La/d/bk;

    iget-object v0, v0, La/d/bk;->e:La/d/bm;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, La/d/bm;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, La/d/ca;

    invoke-direct {v0, p2}, La/d/ca;-><init>(I)V

    new-instance v1, La/d/bz;

    invoke-direct {v1, p1, p2}, La/d/bz;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1, v0}, La/d/bd;->a(La/d/u;La/d/u;)V

    iget-object v0, v0, La/d/ca;->a:La/d/k;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, La/d/am;

    iget-object v1, p0, La/d/bd;->g:La/d/bo;

    iget-object v1, v1, La/d/bo;->f:La/d/bk;

    iget-object v1, v1, La/d/bk;->e:La/d/bm;

    iget-object v1, v1, La/d/bm;->s:La/d/bn;

    iget v1, v1, La/d/bn;->n:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, La/d/am;-><init>(J)V

    new-instance v1, La/d/al;

    invoke-direct {v1, p1}, La/d/al;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, La/d/bd;->a(La/d/u;La/d/u;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;ILa/d/bi;La/d/bf;)Ljava/util/ArrayList;
    .locals 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, La/d/bd;->a(Ljava/util/ArrayList;ZLjava/lang/String;ILa/d/bi;La/d/bf;)V

    return-object v1
.end method

.method public a(I)V
    .locals 6

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, La/d/bd;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, La/d/bc;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, La/d/bc;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    and-int/lit16 v1, p1, 0x30a7

    move-object v0, p0

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, La/d/bd;->a(IJJ)V

    return-void
.end method

.method a(IJ)V
    .locals 4

    sget-object v0, La/d/bd;->c:La/e/e;

    sget v0, La/e/e;->a:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    sget-object v0, La/d/bd;->c:La/e/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/e/e;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v0, La/d/y;

    invoke-direct {v0, p1, p2, p3}, La/d/y;-><init>(IJ)V

    invoke-direct {p0}, La/d/bd;->A()La/d/x;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, La/d/bd;->a(La/d/u;La/d/u;)V

    return-void
.end method

.method a(IJJ)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, La/d/bd;->p()Z

    iget v0, p0, La/d/bd;->s:I

    and-int/lit8 v3, v0, 0x10

    const/16 v2, 0x100

    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v1, v2, v3, v0}, La/d/bd;->a(IIII)I

    move-result v2

    new-instance v1, La/d/cd;

    or-int/2addr v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, La/d/cd;-><init>(IIJJ)V

    new-instance v0, La/d/ce;

    invoke-direct {v0}, La/d/ce;-><init>()V

    invoke-virtual {p0, v1, v0}, La/d/bd;->a(La/d/u;La/d/u;)V

    invoke-virtual {p0, v2, v8, v9}, La/d/bd;->a(IJ)V

    iput-wide v8, p0, La/d/bd;->t:J

    return-void

    :cond_0
    const/16 v0, 0x40

    goto :goto_0
.end method

.method a(J)V
    .locals 1

    invoke-virtual {p0}, La/d/bd;->h()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, La/d/bd;->i:I

    invoke-virtual {p0, v0, p1, p2}, La/d/bd;->a(IJ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, La/d/bd;->k:Z

    goto :goto_0
.end method

.method public a(La/d/bd;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, La/d/bd;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, La/d/bd;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, La/d/bc;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, La/d/bc;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, v2}, La/d/bd;->a(La/d/u;)V

    invoke-virtual {p1, v2}, La/d/bd;->a(La/d/u;)V

    iget-object v0, p0, La/d/bd;->g:La/d/bo;

    iget-object v1, p1, La/d/bd;->g:La/d/bo;

    invoke-virtual {v0, v1}, La/d/bo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, La/d/bc;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, La/d/bc;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v0, La/d/bd;->c:La/e/e;

    sget v0, La/e/e;->a:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    sget-object v0, La/d/bd;->c:La/e/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "renameTo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/d/bd;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, La/d/bd;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/e/e;->println(Ljava/lang/String;)V

    :cond_3
    iput-wide v4, p0, La/d/bd;->v:J

    iput-wide v4, p0, La/d/bd;->t:J

    iput-wide v4, p1, La/d/bd;->t:J

    new-instance v0, La/d/ap;

    iget-object v1, p0, La/d/bd;->h:Ljava/lang/String;

    iget-object v2, p1, La/d/bd;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, La/d/ap;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, La/d/bd;->A()La/d/x;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, La/d/bd;->a(La/d/u;La/d/u;)V

    return-void
.end method

.method a(La/d/u;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x0

    instance-of v0, p1, La/d/y;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, La/d/bd;->e()V

    sget-object v0, La/d/bd;->e:La/d/d;

    iget-object v1, p0, La/d/bd;->g:La/d/bo;

    iget-object v1, v1, La/d/bo;->f:La/d/bk;

    iget-object v1, v1, La/d/bk;->e:La/d/bm;

    iget-object v1, v1, La/d/bm;->A:Ljava/lang/String;

    iget-object v3, p0, La/d/bd;->g:La/d/bo;

    iget-object v3, v3, La/d/bo;->c:Ljava/lang/String;

    iget-object v4, p0, La/d/bd;->h:Ljava/lang/String;

    iget-object v5, p0, La/d/bd;->f:La/d/t;

    invoke-virtual {v0, v1, v3, v4, v5}, La/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/d/t;)La/d/f;

    move-result-object v5

    if-eqz v5, :cond_c

    if-eqz p1, :cond_f

    iget-byte v0, p1, La/d/u;->g:B

    sparse-switch v0, :sswitch_data_0

    const-string v0, "A:"

    move-object v1, v0

    :goto_1
    move-object v4, v5

    :goto_2
    :try_start_0
    sget-object v0, La/d/bd;->c:La/e/e;

    sget v0, La/e/e;->a:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_2

    sget-object v0, La/d/bd;->c:La/e/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DFS redirect: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, La/e/e;->println(Ljava/lang/String;)V

    :cond_2
    iget-object v0, v4, La/d/f;->c:Ljava/lang/String;

    invoke-static {v0}, La/a;->a(Ljava/lang/String;)La/a;

    move-result-object v0

    iget-object v3, p0, La/d/bd;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    move-result v3

    invoke-static {v0, v3}, La/d/bm;->a(La/a;I)La/d/bm;

    move-result-object v0

    invoke-virtual {v0}, La/d/bm;->b()V

    iget-object v3, p0, La/d/bd;->f:La/d/t;

    invoke-virtual {v0, v3}, La/d/bm;->a(La/d/t;)La/d/bk;

    move-result-object v0

    iget-object v3, v4, La/d/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, La/d/bk;->a(Ljava/lang/String;Ljava/lang/String;)La/d/bo;

    move-result-object v0

    iput-object v0, p0, La/d/bd;->g:La/d/bo;

    if-eq v4, v5, :cond_3

    iget-object v0, v4, La/d/f;->k:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, v4, La/d/f;->j:Ljava/util/Map;

    iget-object v3, v4, La/d/f;->k:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move-object v1, v4

    :goto_3
    if-eqz v2, :cond_5

    throw v2

    :sswitch_0
    move-object v0, p1

    check-cast v0, La/d/as;

    iget-byte v0, v0, La/d/as;->S:B

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    const-string v0, "A:"

    move-object v1, v0

    goto :goto_1

    :pswitch_0
    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    instance-of v3, v0, La/d/bc;

    if-eqz v3, :cond_4

    check-cast v0, La/d/bc;

    :goto_4
    iget-object v3, v4, La/d/f;->i:La/d/f;

    if-ne v3, v5, :cond_e

    move-object v2, v0

    move-object v1, v3

    goto :goto_3

    :cond_4
    new-instance v3, La/d/bc;

    iget-object v6, v4, La/d/f;->c:Ljava/lang/String;

    invoke-direct {v3, v6, v0}, La/d/bc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v3

    goto :goto_4

    :cond_5
    sget-object v0, La/d/bd;->c:La/e/e;

    sget v0, La/e/e;->a:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_6

    sget-object v0, La/d/bd;->c:La/e/e;

    invoke-virtual {v0, v1}, La/e/e;->println(Ljava/lang/Object;)V

    :cond_6
    iput-object v1, p0, La/d/bd;->z:La/d/f;

    iget v0, v1, La/d/f;->a:I

    if-gez v0, :cond_b

    iput v7, v1, La/d/f;->a:I

    :cond_7
    :goto_5
    iget-object v0, p0, La/d/bd;->h:Ljava/lang/String;

    iget v2, v1, La/d/f;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v0, "\\"

    :cond_8
    iget-object v2, v1, La/d/f;->f:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, La/d/f;->f:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
    iput-object v0, p0, La/d/bd;->h:Ljava/lang/String;

    if-eqz p1, :cond_a

    iget-object v1, p1, La/d/u;->A:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p1, La/d/u;->A:Ljava/lang/String;

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_a
    if-eqz p1, :cond_0

    iput-object v0, p1, La/d/u;->A:Ljava/lang/String;

    iget v0, p1, La/d/u;->m:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p1, La/d/u;->m:I

    goto/16 :goto_0

    :cond_b
    iget v0, v1, La/d/f;->a:I

    iget-object v2, p0, La/d/bd;->h:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_7

    iget-object v0, p0, La/d/bd;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, v1, La/d/f;->a:I

    goto :goto_5

    :cond_c
    iget-object v0, p0, La/d/bd;->g:La/d/bo;

    iget-boolean v0, v0, La/d/bo;->h:Z

    if-eqz v0, :cond_d

    instance-of v0, p1, La/d/q;

    if-nez v0, :cond_d

    instance-of v0, p1, La/d/y;

    if-nez v0, :cond_d

    instance-of v0, p1, La/d/ac;

    if-nez v0, :cond_d

    new-instance v0, La/d/bc;

    const v1, -0x3ffffddb    # -2.000131f

    invoke-direct {v0, v1, v7}, La/d/bc;-><init>(IZ)V

    throw v0

    :cond_d
    if-eqz p1, :cond_0

    iget v0, p1, La/d/u;->m:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p1, La/d/u;->m:I

    goto/16 :goto_0

    :cond_e
    move-object v4, v3

    goto/16 :goto_2

    :cond_f
    move-object v1, v2

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_0
        0x32 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method a(La/d/u;La/d/u;)V
    .locals 2

    :goto_0
    invoke-virtual {p0, p1}, La/d/bd;->a(La/d/u;)V

    :try_start_0
    iget-object v0, p0, La/d/bd;->g:La/d/bo;

    invoke-virtual {v0, p1, p2}, La/d/bo;->a(La/d/u;La/d/u;)V
    :try_end_0
    .catch La/d/f; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-boolean v1, v0, La/d/f;->g:Z

    if-eqz v1, :cond_0

    throw v0

    :cond_0
    invoke-virtual {p1}, La/d/u;->e()V

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v0, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual {p0}, La/d/bd;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v8, :cond_0

    new-instance v0, La/d/bc;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, La/d/bc;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, La/d/bd;->t:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    const/16 v1, 0x11

    iput v1, p0, La/d/bd;->s:I

    iput-wide v6, p0, La/d/bd;->q:J

    iput-wide v6, p0, La/d/bd;->r:J

    iput-boolean v0, p0, La/d/bd;->w:Z

    invoke-virtual {p0}, La/d/bd;->k()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x101

    invoke-virtual {p0, v1, v2}, La/d/bd;->a(Ljava/lang/String;I)La/d/k;

    move-result-object v1

    invoke-interface {v1}, La/d/k;->a()I

    move-result v2

    iput v2, p0, La/d/bd;->s:I

    invoke-interface {v1}, La/d/k;->b()J

    move-result-wide v2

    iput-wide v2, p0, La/d/bd;->q:J

    invoke-interface {v1}, La/d/k;->c()J

    move-result-wide v2

    iput-wide v2, p0, La/d/bd;->r:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, La/d/bd;->d:J

    add-long/2addr v2, v4

    iput-wide v2, p0, La/d/bd;->t:J

    iput-boolean v8, p0, La/d/bd;->w:Z

    :cond_1
    iget v1, p0, La/d/bd;->s:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, La/d/bd;->y()V

    :cond_2
    sget-object v1, La/d/bd;->c:La/e/e;

    sget v1, La/e/e;->a:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    sget-object v1, La/d/bd;->c:La/e/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/e/e;->println(Ljava/lang/String;)V

    :cond_3
    iget v1, p0, La/d/bd;->s:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    :try_start_0
    const-string v1, "*"

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, La/d/bd;->b(Ljava/lang/String;ILa/d/bi;La/d/bf;)[La/d/bd;

    move-result-object v1

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_4

    aget-object v2, v1, v0

    invoke-virtual {v2}, La/d/bd;->u()V
    :try_end_0
    .catch La/d/bc; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, La/d/bc;->a()I

    move-result v1

    const v2, -0x3ffffff1    # -2.0000036f

    if-eq v1, v2, :cond_4

    throw v0

    :cond_4
    new-instance v0, La/d/ab;

    invoke-direct {v0, p1}, La/d/ab;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, La/d/bd;->A()La/d/x;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, La/d/bd;->a(La/d/u;La/d/u;)V

    :goto_1
    iput-wide v6, p0, La/d/bd;->v:J

    iput-wide v6, p0, La/d/bd;->t:J

    return-void

    :cond_5
    new-instance v0, La/d/aa;

    invoke-direct {v0, p1}, La/d/aa;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, La/d/bd;->A()La/d/x;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, La/d/bd;->a(La/d/u;La/d/u;)V

    goto :goto_1
.end method

.method a(Ljava/util/ArrayList;ZLjava/lang/String;ILa/d/bi;La/d/bf;)V
    .locals 7

    if-eqz p6, :cond_4

    instance-of v0, p6, La/d/h;

    if-eqz v0, :cond_4

    move-object v0, p6

    check-cast v0, La/d/h;

    iget-object v1, v0, La/d/h;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object p3, v0, La/d/h;->a:Ljava/lang/String;

    :cond_0
    iget p4, v0, La/d/h;->b:I

    move v4, p4

    move-object v3, p3

    :goto_0
    :try_start_0
    iget-object v0, p0, La/d/bd;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, La/d/bd;->n()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, La/d/bd;->c(Ljava/util/ArrayList;ZLjava/lang/String;ILa/d/bi;La/d/bf;)V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, La/d/bd;->p:Ljava/lang/String;

    if-nez v0, :cond_3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, La/d/bd;->b(Ljava/util/ArrayList;ZLjava/lang/String;ILa/d/bi;La/d/bf;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, La/d/bc;

    iget-object v2, p0, La/d/bd;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, La/d/bc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p5

    move-object v6, p6

    :try_start_1
    invoke-virtual/range {v0 .. v6}, La/d/bd;->d(Ljava/util/ArrayList;ZLjava/lang/String;ILa/d/bi;La/d/bf;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, La/d/bc;

    iget-object v2, p0, La/d/bd;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, La/d/bc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    move v4, p4

    move-object v3, p3

    goto :goto_0
.end method

.method b()La/a;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iput v6, p0, La/d/bd;->n:I

    iget-object v0, p0, La/d/bd;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, La/d/bd;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, La/d/bd;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "server"

    invoke-static {v2, v3}, La/d/bd;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    new-array v0, v5, [La/a;

    iput-object v0, p0, La/d/bd;->m:[La/a;

    iget-object v0, p0, La/d/bd;->m:[La/a;

    invoke-static {v3}, La/a;->a(Ljava/lang/String;)La/a;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0}, La/d/bd;->c()La/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v3, "address"

    invoke-static {v2, v3}, La/d/bd;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    new-array v2, v5, [La/a;

    iput-object v2, p0, La/d/bd;->m:[La/a;

    iget-object v2, p0, La/d/bd;->m:[La/a;

    new-instance v3, La/a;

    invoke-static {v0, v1}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-direct {v3, v0}, La/a;-><init>(Ljava/lang/Object;)V

    aput-object v3, v2, v6

    invoke-virtual {p0}, La/d/bd;->c()La/a;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :try_start_0
    const-string v0, "\u0001\u0002__MSBROWSE__\u0002"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, La/b/g;->a(Ljava/lang/String;ILjava/lang/String;)La/b/g;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [La/a;

    iput-object v1, p0, La/d/bd;->m:[La/a;

    iget-object v1, p0, La/d/bd;->m:[La/a;

    const/4 v2, 0x0

    invoke-virtual {v0}, La/b/g;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/a;->a(Ljava/lang/String;)La/a;

    move-result-object v0

    aput-object v0, v1, v2
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, La/d/bd;->c()La/a;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, La/d/t;->a()V

    sget-object v1, La/d/t;->a:Ljava/lang/String;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    throw v0

    :cond_2
    sget-object v0, La/d/t;->a:Ljava/lang/String;

    invoke-static {v0, v5}, La/a;->b(Ljava/lang/String;Z)[La/a;

    move-result-object v0

    iput-object v0, p0, La/d/bd;->m:[La/a;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-static {v0, v5}, La/a;->b(Ljava/lang/String;Z)[La/a;

    move-result-object v0

    iput-object v0, p0, La/d/bd;->m:[La/a;

    goto :goto_1

    :cond_5
    invoke-static {v0, v6}, La/a;->b(Ljava/lang/String;Z)[La/a;

    move-result-object v0

    iput-object v0, p0, La/d/bd;->m:[La/a;

    goto :goto_1
.end method

.method public b(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, La/d/bd;->a(Ljava/lang/String;ILa/d/bi;La/d/bf;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method b(IIII)V
    .locals 1

    invoke-virtual {p0}, La/d/bd;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, La/d/bd;->a(IIII)I

    move-result v0

    iput v0, p0, La/d/bd;->i:I

    const/4 v0, 0x1

    iput-boolean v0, p0, La/d/bd;->k:Z

    iget-object v0, p0, La/d/bd;->g:La/d/bo;

    iget v0, v0, La/d/bo;->i:I

    iput v0, p0, La/d/bd;->l:I

    goto :goto_0
.end method

.method public b(J)V
    .locals 7

    invoke-virtual {p0}, La/d/bd;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, La/d/bc;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, La/d/bc;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, La/d/bd;->a(IJJ)V

    return-void
.end method

.method b(Ljava/util/ArrayList;ZLjava/lang/String;ILa/d/bi;La/d/bf;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, La/d/bd;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v4, v2, :cond_0

    new-instance v2, La/d/bc;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, La/d/bd;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " directory must end with \'/\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, La/d/bc;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual/range {p0 .. p0}, La/d/bd;->n()I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_1

    new-instance v2, La/d/bc;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The requested list operations is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, La/d/bd;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, La/d/bc;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sget-object v2, La/d/bd;->e:La/d/d;

    invoke-virtual/range {p0 .. p0}, La/d/bd;->m()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, La/d/bd;->f:La/d/t;

    invoke-virtual {v2, v4, v6}, La/d/d;->a(Ljava/lang/String;La/d/t;)Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    invoke-virtual/range {p0 .. p0}, La/d/bd;->r()[La/d/i;

    move-result-object v4

    const/4 v2, 0x0

    :goto_0
    array-length v6, v4

    if-ge v2, v6, :cond_3

    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v5, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v4, La/d/bd;->c:La/e/e;

    sget v4, La/e/e;->a:I

    const/4 v6, 0x4

    if-lt v4, v6, :cond_3

    sget-object v4, La/d/bd;->c:La/e/e;

    invoke-virtual {v2, v4}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, La/d/bd;->b()La/a;

    move-result-object v2

    move-object/from16 v16, v2

    move-object v2, v3

    move-object/from16 v3, v16

    :goto_1
    if-eqz v3, :cond_7

    :try_start_1
    invoke-virtual/range {p0 .. p0}, La/d/bd;->f()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual/range {p0 .. p0}, La/d/bd;->s()[La/d/i;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    :goto_2
    const/4 v4, 0x0

    :goto_3
    :try_start_3
    array-length v6, v3

    if-ge v4, v6, :cond_7

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v5, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :catch_1
    move-exception v3

    sget-object v4, La/d/bd;->c:La/e/e;

    sget v4, La/e/e;->a:I

    const/4 v6, 0x3

    if-lt v4, v6, :cond_5

    sget-object v4, La/d/bd;->c:La/e/e;

    invoke-virtual {v3, v4}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_5
    invoke-virtual/range {p0 .. p0}, La/d/bd;->t()[La/d/i;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v3

    goto :goto_2

    :catch_2
    move-exception v2

    sget-object v3, La/d/bd;->c:La/e/e;

    sget v3, La/e/e;->a:I

    const/4 v4, 0x3

    if-lt v3, v4, :cond_6

    sget-object v3, La/d/bd;->c:La/e/e;

    invoke-virtual {v2, v3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_6
    invoke-virtual/range {p0 .. p0}, La/d/bd;->c()La/a;

    move-result-object v3

    goto :goto_1

    :cond_7
    if-eqz v2, :cond_9

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    instance-of v3, v2, La/d/bc;

    if-nez v3, :cond_8

    new-instance v3, La/d/bc;

    move-object/from16 v0, p0

    iget-object v4, v0, La/d/bd;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, La/d/bc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_8
    check-cast v2, La/d/bc;

    throw v2

    :cond_9
    and-int/lit8 v2, p4, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d

    const/4 v2, 0x1

    move v14, v2

    :goto_4
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_a
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/d/i;

    invoke-interface {v2}, La/d/i;->a()Ljava/lang/String;

    move-result-object v5

    if-eqz p5, :cond_b

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v5}, La/d/bi;->a(La/d/bd;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_b
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a

    if-eqz p2, :cond_e

    new-instance v3, La/d/bd;

    invoke-interface {v2}, La/d/i;->b()I

    move-result v6

    const/16 v7, 0x11

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v13}, La/d/bd;-><init>(La/d/bd;Ljava/lang/String;IIJJJ)V

    if-eqz p6, :cond_c

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, La/d/bf;->a(La/d/bd;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_c
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    const/4 v2, 0x0

    move v14, v2

    goto :goto_4

    :cond_e
    if-nez v14, :cond_f

    const-string v3, "$"

    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_10
    return-void
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/16 v0, 0x2f

    const/16 v6, 0x2e

    const/4 v1, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v5, v0, v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    if-le v5, v1, :cond_1

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-le v0, v1, :cond_2

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_0

    :cond_2
    if-ne v5, v0, :cond_3

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method b(Ljava/lang/String;ILa/d/bi;La/d/bf;)[La/d/bd;
    .locals 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, La/d/bd;->a(Ljava/util/ArrayList;ZLjava/lang/String;ILa/d/bi;La/d/bf;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [La/d/bd;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/d/bd;

    check-cast v0, [La/d/bd;

    return-object v0
.end method

.method c()La/a;
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, La/d/bd;->n:I

    iget-object v2, p0, La/d/bd;->m:[La/a;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v0, p0, La/d/bd;->m:[La/a;

    iget v1, p0, La/d/bd;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/d/bd;->n:I

    aget-object v0, v0, v1

    :cond_0
    return-object v0
.end method

.method c(Ljava/util/ArrayList;ZLjava/lang/String;ILa/d/bi;La/d/bf;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v2, v0, La/d/bd;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, La/d/bd;->e()V

    new-instance v2, La/d/l;

    move-object/from16 v0, p0

    iget-object v3, v0, La/d/bd;->g:La/d/bo;

    iget-object v3, v3, La/d/bo;->f:La/d/bk;

    iget-object v3, v3, La/d/bk;->e:La/d/bm;

    iget-object v3, v3, La/d/bm;->s:La/d/bn;

    iget-object v3, v3, La/d/bn;->e:Ljava/lang/String;

    const/high16 v4, -0x80000000

    invoke-direct {v2, v3, v4}, La/d/l;-><init>(Ljava/lang/String;I)V

    new-instance v14, La/d/m;

    invoke-direct {v14}, La/d/m;-><init>()V

    move-object/from16 v18, v2

    :goto_1
    and-int/lit8 v2, p4, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    move v15, v2

    :cond_0
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, La/d/bd;->a(La/d/u;La/d/u;)V

    iget v2, v14, La/d/at;->P:I

    if-eqz v2, :cond_5

    iget v2, v14, La/d/at;->P:I

    const/16 v3, 0xea

    if-eq v2, v3, :cond_5

    new-instance v2, La/d/bc;

    iget v3, v14, La/d/at;->P:I

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, La/d/bc;-><init>(IZ)V

    throw v2

    :cond_1
    invoke-virtual/range {p0 .. p0}, La/d/bd;->n()I

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    new-instance v2, La/d/l;

    move-object/from16 v0, p0

    iget-object v3, v0, La/d/bd;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, La/d/l;-><init>(Ljava/lang/String;I)V

    new-instance v14, La/d/m;

    invoke-direct {v14}, La/d/m;-><init>()V

    move-object/from16 v18, v2

    goto :goto_1

    :cond_3
    new-instance v2, La/d/bc;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The requested list operations is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, La/d/bd;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, La/d/bc;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v2, 0x0

    move v15, v2

    goto :goto_2

    :cond_5
    iget v2, v14, La/d/at;->P:I

    const/16 v3, 0xea

    if-ne v2, v3, :cond_7

    const/4 v2, 0x1

    move/from16 v17, v2

    :goto_3
    if-eqz v17, :cond_8

    iget v2, v14, La/d/at;->Q:I

    add-int/lit8 v2, v2, -0x1

    :goto_4
    const/4 v3, 0x0

    move/from16 v16, v3

    :goto_5
    move/from16 v0, v16

    if-ge v0, v2, :cond_d

    iget-object v3, v14, La/d/at;->R:[La/d/i;

    aget-object v4, v3, v16

    invoke-interface {v4}, La/d/i;->a()Ljava/lang/String;

    move-result-object v5

    if-eqz p5, :cond_9

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v5}, La/d/bi;->a(La/d/bd;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_6
    :goto_6
    add-int/lit8 v3, v16, 0x1

    move/from16 v16, v3

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    move/from16 v17, v2

    goto :goto_3

    :cond_8
    iget v2, v14, La/d/at;->Q:I

    goto :goto_4

    :cond_9
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    if-eqz p2, :cond_b

    new-instance v3, La/d/bd;

    invoke-interface {v4}, La/d/i;->b()I

    move-result v6

    const/16 v7, 0x11

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v13}, La/d/bd;-><init>(La/d/bd;Ljava/lang/String;IIJJJ)V

    if-eqz p6, :cond_a

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, La/d/bf;->a(La/d/bd;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    if-nez v15, :cond_c

    const-string v3, "$"

    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_c
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    invoke-virtual/range {p0 .. p0}, La/d/bd;->n()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_e

    :goto_7
    return-void

    :cond_e
    const/16 v2, -0x29

    move-object/from16 v0, v18

    iput-byte v2, v0, La/d/as;->S:B

    const/4 v3, 0x0

    move-object v2, v14

    check-cast v2, La/d/m;

    iget-object v2, v2, La/d/m;->a:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, La/d/as;->a(ILjava/lang/String;)V

    invoke-virtual {v14}, La/d/at;->e()V

    if-nez v17, :cond_0

    goto :goto_7
.end method

.method public connect()V
    .locals 3

    invoke-virtual {p0}, La/d/bd;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La/d/bd;->g:La/d/bo;

    iget-object v0, v0, La/d/bo;->f:La/d/bk;

    iget-object v0, v0, La/d/bk;->e:La/d/bm;

    iget-object v0, v0, La/d/bm;->A:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, La/d/bd;->g:La/d/bo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, La/d/bo;->a(Z)V

    :cond_0
    invoke-virtual {p0}, La/d/bd;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, La/d/bd;->k()Ljava/lang/String;

    invoke-virtual {p0}, La/d/bd;->b()La/a;

    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {p0}, La/d/bd;->f()V
    :try_end_0
    .catch La/d/w; {:try_start_0 .. :try_end_0} :catch_0
    .catch La/d/bc; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, La/d/bd;->c()La/a;

    move-result-object v1

    if-nez v1, :cond_3

    throw v0

    :cond_3
    sget-object v1, La/d/bd;->c:La/e/e;

    sget v1, La/e/e;->a:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    sget-object v1, La/d/bd;->c:La/e/e;

    invoke-virtual {v0, v1}, La/d/bc;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_1
.end method

.method d(Ljava/util/ArrayList;ZLjava/lang/String;ILa/d/bi;La/d/bf;)V
    .locals 17

    invoke-virtual/range {p0 .. p0}, La/d/bd;->k()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, La/d/bd;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_0

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v4, v3, :cond_0

    new-instance v2, La/d/bc;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, La/d/bd;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " directory must end with \'/\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, La/d/bc;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v3, La/d/bp;

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v3, v2, v0, v1}, La/d/bp;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v14, La/d/bq;

    invoke-direct {v14}, La/d/bq;-><init>()V

    sget-object v2, La/d/bd;->c:La/e/e;

    sget v2, La/e/e;->a:I

    const/4 v4, 0x3

    if-lt v2, v4, :cond_1

    sget-object v2, La/d/bd;->c:La/e/e;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doFindFirstNext: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, La/d/as;->A:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, La/e/e;->println(Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, La/d/bd;->a(La/d/u;La/d/u;)V

    iget v15, v14, La/d/bq;->a:I

    new-instance v16, La/d/bs;

    iget v2, v14, La/d/bq;->af:I

    iget-object v3, v14, La/d/bq;->ae:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v15, v2, v3}, La/d/bs;-><init>(IILjava/lang/String;)V

    const/4 v2, 0x2

    iput-byte v2, v14, La/d/bq;->L:B

    :goto_0
    const/4 v2, 0x0

    :goto_1
    iget v3, v14, La/d/bq;->Q:I

    if-ge v2, v3, :cond_8

    iget-object v3, v14, La/d/bq;->R:[La/d/i;

    aget-object v4, v3, v2

    invoke-interface {v4}, La/d/i;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x3

    if-ge v3, v6, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v3

    sget v6, La/d/bd;->a:I

    if-eq v3, v6, :cond_2

    sget v6, La/d/bd;->b:I

    if-ne v3, v6, :cond_4

    :cond_2
    const-string v3, "."

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ".."

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    if-eqz p5, :cond_5

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v5}, La/d/bi;->a(La/d/bd;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    if-eqz p2, :cond_7

    new-instance v3, La/d/bd;

    const/4 v6, 0x1

    invoke-interface {v4}, La/d/i;->c()I

    move-result v7

    invoke-interface {v4}, La/d/i;->d()J

    move-result-wide v8

    invoke-interface {v4}, La/d/i;->e()J

    move-result-wide v10

    invoke-interface {v4}, La/d/i;->f()J

    move-result-wide v12

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v13}, La/d/bd;-><init>(La/d/bd;Ljava/lang/String;IIJJJ)V

    if-eqz p6, :cond_6

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, La/d/bf;->a(La/d/bd;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    iget-boolean v2, v14, La/d/bq;->S:Z

    if-nez v2, :cond_9

    iget v2, v14, La/d/bq;->Q:I

    if-nez v2, :cond_b

    :cond_9
    :try_start_0
    new-instance v2, La/d/ac;

    invoke-direct {v2, v15}, La/d/ac;-><init>(I)V

    invoke-direct/range {p0 .. p0}, La/d/bd;->A()La/d/x;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, La/d/bd;->a(La/d/u;La/d/u;)V
    :try_end_0
    .catch La/d/bc; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_3
    return-void

    :cond_b
    iget v2, v14, La/d/bq;->af:I

    iget-object v3, v14, La/d/bq;->ae:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, La/d/as;->a(ILjava/lang/String;)V

    invoke-virtual {v14}, La/d/bq;->e()V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14}, La/d/bd;->a(La/d/u;La/d/u;)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    sget-object v3, La/d/bd;->c:La/e/e;

    sget v3, La/e/e;->a:I

    const/4 v4, 0x4

    if-lt v3, v4, :cond_a

    sget-object v3, La/d/bd;->c:La/e/e;

    invoke-virtual {v2, v3}, La/d/bc;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_3
.end method

.method d()Z
    .locals 2

    iget v0, p0, La/d/bd;->n:I

    iget-object v1, p0, La/d/bd;->m:[La/a;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, La/d/bd;->connect()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch La/d/bc; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    return-void

    :catch_0
    move-exception v0

    new-instance v1, La/d/bc;

    const-string v2, "Failed to connect to server"

    invoke-direct {v1, v2, v0}, La/d/bc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    new-instance v1, La/d/bc;

    const-string v2, "Failed to connect to server"

    invoke-direct {v1, v2, v0}, La/d/bc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, La/d/bd;

    if-eqz v0, :cond_1

    check-cast p1, La/d/bd;

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, La/d/bd;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, La/d/bd;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, La/d/bd;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, La/d/bd;->k()Ljava/lang/String;

    invoke-virtual {p1}, La/d/bd;->k()Ljava/lang/String;

    iget-object v0, p0, La/d/bd;->o:Ljava/lang/String;

    iget-object v1, p1, La/d/bd;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, La/d/bd;->a()La/a;

    move-result-object v0

    invoke-virtual {p1}, La/d/bd;->a()La/a;

    move-result-object v1

    invoke-virtual {v0, v1}, La/a;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, La/d/bd;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, La/d/bd;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method f()V
    .locals 11

    const/4 v10, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, La/d/bd;->a()La/a;

    move-result-object v4

    iget-object v0, p0, La/d/bd;->g:La/d/bo;

    if-eqz v0, :cond_2

    iget-object v0, p0, La/d/bd;->g:La/d/bo;

    iget-object v0, v0, La/d/bo;->f:La/d/bk;

    iget-object v0, v0, La/d/bk;->e:La/d/bm;

    :goto_0
    invoke-virtual {p0}, La/d/bd;->l()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, La/d/bd;->g:La/d/bo;

    sget-object v1, La/d/bd;->e:La/d/d;

    iget-object v7, p0, La/d/bd;->g:La/d/bo;

    iget-object v7, v7, La/d/bo;->c:Ljava/lang/String;

    iget-object v8, p0, La/d/bd;->f:La/d/t;

    invoke-virtual {v1, v5, v7, v9, v8}, La/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/d/t;)La/d/f;

    move-result-object v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, v6, La/d/bo;->h:Z

    iget-object v1, p0, La/d/bd;->g:La/d/bo;

    iget-boolean v1, v1, La/d/bo;->h:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, La/d/bd;->g:La/d/bo;

    iput v10, v1, La/d/bo;->a:I

    :cond_0
    :try_start_0
    sget-object v1, La/d/bd;->c:La/e/e;

    sget v1, La/e/e;->a:I

    const/4 v6, 0x3

    if-lt v1, v6, :cond_1

    sget-object v1, La/d/bd;->c:La/e/e;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doConnect: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, La/e/e;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, La/d/bd;->g:La/d/bo;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, La/d/bo;->b(La/d/u;La/d/u;)V
    :try_end_0
    .catch La/d/w; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, La/d/bd;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    invoke-static {v4, v0}, La/d/bm;->a(La/a;I)La/d/bm;

    move-result-object v0

    iget-object v1, p0, La/d/bd;->f:La/d/t;

    invoke-virtual {v0, v1}, La/d/bm;->a(La/d/t;)La/d/bk;

    move-result-object v1

    iget-object v5, p0, La/d/bd;->p:Ljava/lang/String;

    invoke-virtual {v1, v5, v9}, La/d/bk;->a(Ljava/lang/String;Ljava/lang/String;)La/d/bo;

    move-result-object v1

    iput-object v1, p0, La/d/bd;->g:La/d/bo;

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v4, p0, La/d/bd;->p:Ljava/lang/String;

    if-nez v4, :cond_4

    sget-object v1, La/d/t;->e:La/d/t;

    invoke-virtual {v0, v1}, La/d/bm;->a(La/d/t;)La/d/bk;

    move-result-object v0

    invoke-virtual {v0, v9, v9}, La/d/bk;->a(Ljava/lang/String;Ljava/lang/String;)La/d/bo;

    move-result-object v0

    iput-object v0, p0, La/d/bd;->g:La/d/bo;

    iget-object v0, p0, La/d/bd;->g:La/d/bo;

    invoke-virtual {v0, v9, v9}, La/d/bo;->b(La/d/u;La/d/u;)V

    goto :goto_2

    :cond_4
    iget-object v4, p0, La/d/bd;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, La/d/r;->a(Ljava/lang/String;La/d/w;)La/d/t;

    move-result-object v4

    if-eqz v4, :cond_7

    iput-object v4, p0, La/d/bd;->f:La/d/t;

    iget-object v1, p0, La/d/bd;->f:La/d/t;

    invoke-virtual {v0, v1}, La/d/bm;->a(La/d/t;)La/d/bk;

    move-result-object v0

    iget-object v1, p0, La/d/bd;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v9}, La/d/bk;->a(Ljava/lang/String;Ljava/lang/String;)La/d/bo;

    move-result-object v0

    iput-object v0, p0, La/d/bd;->g:La/d/bo;

    iget-object v0, p0, La/d/bd;->g:La/d/bo;

    sget-object v1, La/d/bd;->e:La/d/d;

    iget-object v4, p0, La/d/bd;->g:La/d/bo;

    iget-object v4, v4, La/d/bo;->c:Ljava/lang/String;

    iget-object v6, p0, La/d/bd;->f:La/d/t;

    invoke-virtual {v1, v5, v4, v9, v6}, La/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/d/t;)La/d/f;

    move-result-object v1

    if-eqz v1, :cond_6

    :goto_3
    iput-boolean v2, v0, La/d/bo;->h:Z

    iget-object v0, p0, La/d/bd;->g:La/d/bo;

    iget-boolean v0, v0, La/d/bo;->h:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, La/d/bd;->g:La/d/bo;

    iput v10, v0, La/d/bo;->a:I

    :cond_5
    iget-object v0, p0, La/d/bd;->g:La/d/bo;

    invoke-virtual {v0, v9, v9}, La/d/bo;->b(La/d/u;La/d/u;)V

    goto :goto_2

    :cond_6
    move v2, v3

    goto :goto_3

    :cond_7
    sget-object v0, La/d/bd;->c:La/e/e;

    sget v0, La/e/e;->a:I

    if-lt v0, v2, :cond_8

    invoke-virtual {p0}, La/d/bd;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, La/d/bd;->c:La/e/e;

    invoke-virtual {v1, v0}, La/d/w;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_8
    throw v1
.end method

.method g()Z
    .locals 2

    iget-object v0, p0, La/d/bd;->g:La/d/bo;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/d/bd;->g:La/d/bo;

    iget v0, v0, La/d/bo;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentLength()I
    .locals 4

    :try_start_0
    invoke-virtual {p0}, La/d/bd;->v()J
    :try_end_0
    .catch La/d/bc; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDate()J
    .locals 2

    :try_start_0
    invoke-virtual {p0}, La/d/bd;->q()J
    :try_end_0
    .catch La/d/bc; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    new-instance v0, La/d/bg;

    invoke-direct {v0, p0}, La/d/bg;-><init>(La/d/bd;)V

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    :try_start_0
    invoke-virtual {p0}, La/d/bd;->q()J
    :try_end_0
    .catch La/d/bc; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    new-instance v0, La/d/bh;

    invoke-direct {v0, p0}, La/d/bh;-><init>(La/d/bd;)V

    return-object v0
.end method

.method h()Z
    .locals 2

    iget-boolean v0, p0, La/d/bd;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, La/d/bd;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, La/d/bd;->l:I

    iget-object v1, p0, La/d/bd;->g:La/d/bo;

    iget v1, v1, La/d/bo;->i:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    :try_start_0
    invoke-virtual {p0}, La/d/bd;->a()La/a;

    move-result-object v0

    invoke-virtual {v0}, La/a;->hashCode()I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    invoke-virtual {p0}, La/d/bd;->k()Ljava/lang/String;

    iget-object v1, p0, La/d/bd;->o:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, La/d/bd;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method i()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, La/d/bd;->a(J)V

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x2f

    invoke-virtual {p0}, La/d/bd;->k()Ljava/lang/String;

    iget-object v0, p0, La/d/bd;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, La/d/bd;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    iget-object v1, p0, La/d/bd;->o:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, La/d/bd;->o:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, La/d/bd;->p:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, La/d/bd;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, La/d/bd;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, La/d/bd;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, "smb://"

    goto :goto_1
.end method

.method k()Ljava/lang/String;
    .locals 13

    const/4 v5, 0x0

    const/16 v12, 0x2e

    const/4 v6, 0x0

    const/16 v11, 0x2f

    const/4 v1, 0x1

    iget-object v0, p0, La/d/bd;->h:Ljava/lang/String;

    if-nez v0, :cond_a

    iget-object v0, p0, La/d/bd;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    array-length v0, v7

    new-array v8, v0, [C

    array-length v9, v7

    move v0, v6

    move v2, v6

    move v4, v6

    :goto_0
    if-ge v4, v9, :cond_9

    packed-switch v0, :pswitch_data_0

    move v3, v4

    :cond_0
    :goto_1
    add-int/lit8 v4, v3, 0x1

    goto :goto_0

    :pswitch_0
    aget-char v0, v7, v4

    if-eq v0, v11, :cond_1

    move-object v0, v5

    :goto_2
    return-object v0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    aget-char v3, v7, v4

    aput-char v3, v8, v2

    move v2, v0

    move v3, v4

    move v0, v1

    goto :goto_1

    :pswitch_1
    aget-char v3, v7, v4

    if-ne v3, v11, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    aget-char v3, v7, v4

    if-ne v3, v12, :cond_4

    add-int/lit8 v3, v4, 0x1

    if-ge v3, v9, :cond_3

    add-int/lit8 v3, v4, 0x1

    aget-char v3, v7, v3

    if-ne v3, v11, :cond_4

    :cond_3
    add-int/lit8 v3, v4, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v4, 0x1

    if-ge v3, v9, :cond_7

    aget-char v3, v7, v4

    if-ne v3, v12, :cond_7

    add-int/lit8 v3, v4, 0x1

    aget-char v3, v7, v3

    if-ne v3, v12, :cond_7

    add-int/lit8 v3, v4, 0x2

    if-ge v3, v9, :cond_5

    add-int/lit8 v3, v4, 0x2

    aget-char v3, v7, v3

    if-ne v3, v11, :cond_7

    :cond_5
    add-int/lit8 v3, v4, 0x2

    if-eq v2, v1, :cond_0

    :cond_6
    add-int/lit8 v2, v2, -0x1

    if-le v2, v1, :cond_0

    add-int/lit8 v4, v2, -0x1

    aget-char v4, v8, v4

    if-ne v4, v11, :cond_6

    goto :goto_1

    :cond_7
    const/4 v0, 0x2

    :pswitch_2
    aget-char v3, v7, v4

    if-ne v3, v11, :cond_8

    move v0, v1

    :cond_8
    add-int/lit8 v3, v2, 0x1

    aget-char v10, v7, v4

    aput-char v10, v8, v2

    move v2, v3

    move v3, v4

    goto :goto_1

    :cond_9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8, v6, v2}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, La/d/bd;->o:Ljava/lang/String;

    if-le v2, v1, :cond_e

    add-int/lit8 v0, v2, -0x1

    iget-object v2, p0, La/d/bd;->o:Ljava/lang/String;

    invoke-virtual {v2, v11, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gez v2, :cond_b

    iget-object v0, p0, La/d/bd;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/d/bd;->p:Ljava/lang/String;

    const-string v0, "\\"

    iput-object v0, p0, La/d/bd;->h:Ljava/lang/String;

    :cond_a
    :goto_3
    iget-object v0, p0, La/d/bd;->h:Ljava/lang/String;

    goto :goto_2

    :cond_b
    if-ne v2, v0, :cond_c

    iget-object v0, p0, La/d/bd;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/d/bd;->p:Ljava/lang/String;

    const-string v0, "\\"

    iput-object v0, p0, La/d/bd;->h:Ljava/lang/String;

    goto :goto_3

    :cond_c
    iget-object v3, p0, La/d/bd;->o:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La/d/bd;->p:Ljava/lang/String;

    iget-object v1, p0, La/d/bd;->o:Ljava/lang/String;

    aget-char v3, v8, v0

    if-ne v3, v11, :cond_d

    :goto_4
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/d/bd;->h:Ljava/lang/String;

    iget-object v0, p0, La/d/bd;->h:Ljava/lang/String;

    const/16 v1, 0x5c

    invoke-virtual {v0, v11, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/d/bd;->h:Ljava/lang/String;

    goto :goto_3

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    iput-object v5, p0, La/d/bd;->p:Ljava/lang/String;

    const-string v0, "\\"

    iput-object v0, p0, La/d/bd;->h:Ljava/lang/String;

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/d/bd;->z:La/d/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/d/bd;->z:La/d/f;

    iget-object v0, v0, La/d/f;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, La/d/bd;->m()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, La/d/bd;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public n()I
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget v0, p0, La/d/bd;->j:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, La/d/bd;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    iput v1, p0, La/d/bd;->j:I

    :cond_0
    :goto_0
    iget v0, p0, La/d/bd;->j:I

    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, La/d/bd;->p:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, La/d/bd;->e()V

    iget-object v0, p0, La/d/bd;->p:Ljava/lang/String;

    const-string v1, "IPC$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x10

    iput v0, p0, La/d/bd;->j:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, La/d/bd;->g:La/d/bo;

    iget-object v0, v0, La/d/bo;->d:Ljava/lang/String;

    const-string v1, "LPT1:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x20

    iput v0, p0, La/d/bd;->j:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, La/d/bd;->g:La/d/bo;

    iget-object v0, v0, La/d/bo;->d:Ljava/lang/String;

    const-string v1, "COMM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x40

    iput v0, p0, La/d/bd;->j:I

    goto :goto_0

    :cond_4
    const/16 v0, 0x8

    iput v0, p0, La/d/bd;->j:I

    goto :goto_0

    :cond_5
    iget-object v0, p0, La/d/bd;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, La/d/bd;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    iput v2, p0, La/d/bd;->j:I

    goto :goto_0

    :cond_7
    :try_start_0
    invoke-virtual {p0}, La/d/bd;->a()La/a;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v0}, La/a;->c()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, La/b/g;

    if-eqz v1, :cond_9

    invoke-virtual {v0}, La/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/b/g;

    invoke-virtual {v0}, La/b/g;->j()I

    move-result v0

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_8

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_9

    :cond_8
    iput v2, p0, La/d/bd;->j:I

    iget v0, p0, La/d/bd;->j:I

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, La/d/bc;

    iget-object v2, p0, La/d/bd;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, La/d/bc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_9
    const/4 v0, 0x4

    iput v0, p0, La/d/bd;->j:I

    goto/16 :goto_0
.end method

.method o()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x2

    iget v0, p0, La/d/bd;->j:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, La/d/bd;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput v3, p0, La/d/bd;->j:I

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, La/d/bd;->k()Ljava/lang/String;

    iget-object v0, p0, La/d/bd;->p:Ljava/lang/String;

    if-nez v0, :cond_4

    invoke-virtual {p0}, La/d/bd;->a()La/a;

    move-result-object v0

    invoke-virtual {v0}, La/a;->c()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, La/b/g;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, La/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/b/g;

    invoke-virtual {v0}, La/b/g;->j()I

    move-result v0

    const/16 v2, 0x1d

    if-eq v0, v2, :cond_2

    const/16 v2, 0x1b

    if-ne v0, v2, :cond_3

    :cond_2
    iput v3, p0, La/d/bd;->j:I

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    iput v0, p0, La/d/bd;->j:I

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Z
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    iget-wide v0, p0, La/d/bd;->t:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-boolean v0, p0, La/d/bd;->w:Z

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x11

    iput v0, p0, La/d/bd;->s:I

    iput-wide v6, p0, La/d/bd;->q:J

    iput-wide v6, p0, La/d/bd;->r:J

    const/4 v0, 0x0

    iput-boolean v0, p0, La/d/bd;->w:Z

    :try_start_0
    iget-object v0, p0, La/d/bd;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, La/d/bd;->w:Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch La/d/bc; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    :sswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, La/d/bd;->d:J

    add-long/2addr v0, v2

    iput-wide v0, p0, La/d/bd;->t:J

    iget-boolean v0, p0, La/d/bd;->w:Z

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, La/d/bd;->p:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-virtual {p0}, La/d/bd;->n()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, La/d/bd;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, La/a;->a(Ljava/lang/String;Z)La/a;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, La/d/bd;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/a;->a(Ljava/lang/String;)La/a;

    move-result-object v0

    invoke-virtual {v0}, La/a;->d()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch La/d/bc; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, La/d/bc;->a()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    throw v0

    :cond_3
    :try_start_2
    invoke-virtual {p0}, La/d/bd;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v4, :cond_4

    iget-object v0, p0, La/d/bd;->p:Ljava/lang/String;

    const-string v1, "IPC$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {p0}, La/d/bd;->e()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, La/d/bd;->k()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x101

    invoke-virtual {p0, v0, v1}, La/d/bd;->a(Ljava/lang/String;I)La/d/k;

    move-result-object v0

    invoke-interface {v0}, La/d/k;->a()I

    move-result v1

    iput v1, p0, La/d/bd;->s:I

    invoke-interface {v0}, La/d/k;->b()J

    move-result-wide v2

    iput-wide v2, p0, La/d/bd;->q:J

    invoke-interface {v0}, La/d/k;->c()J

    move-result-wide v0

    iput-wide v0, p0, La/d/bd;->r:J
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch La/d/bc; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x3ffffff1 -> :sswitch_0
        -0x3fffffcd -> :sswitch_0
        -0x3fffffcc -> :sswitch_0
        -0x3fffffc6 -> :sswitch_0
    .end sparse-switch
.end method

.method public q()J
    .locals 2

    invoke-virtual {p0}, La/d/bd;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, La/d/bd;->p()Z

    iget-wide v0, p0, La/d/bd;->r:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method r()[La/d/i;
    .locals 5

    const/4 v4, 0x4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ncacn_np:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, La/d/bd;->a()La/a;

    move-result-object v1

    invoke-virtual {v1}, La/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[\\PIPE\\netdfs]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, La/d/bd;->f:La/d/t;

    invoke-static {v0, v1}, La/a/e;->a(Ljava/lang/String;La/d/t;)La/a/e;

    move-result-object v1

    :try_start_0
    new-instance v0, La/a/a/a;

    invoke-virtual {p0}, La/d/bd;->m()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, La/a/a/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, La/a/e;->a(La/a/f;)V

    iget v2, v0, La/a/a/a;->a:I

    if-eqz v2, :cond_1

    new-instance v2, La/d/bc;

    iget v0, v0, La/a/a/a;->a:I

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, La/d/bc;-><init>(IZ)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {v1}, La/a/e;->b()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    throw v0

    :cond_1
    :try_start_2
    invoke-virtual {v0}, La/a/a/a;->c()[La/d/i;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :try_start_3
    invoke-virtual {v1}, La/a/e;->b()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    sget-object v2, La/d/bd;->c:La/e/e;

    sget v2, La/e/e;->a:I

    if-lt v2, v4, :cond_2

    sget-object v2, La/d/bd;->c:La/e/e;

    invoke-virtual {v1, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v2, La/d/bd;->c:La/e/e;

    sget v2, La/e/e;->a:I

    if-lt v2, v4, :cond_0

    sget-object v2, La/d/bd;->c:La/e/e;

    invoke-virtual {v1, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method s()[La/d/i;
    .locals 5

    const/4 v4, 0x4

    new-instance v0, La/a/a/b;

    iget-object v1, p0, La/d/bd;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/b;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ncacn_np:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, La/d/bd;->a()La/a;

    move-result-object v2

    invoke-virtual {v2}, La/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[\\PIPE\\srvsvc]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, La/d/bd;->f:La/d/t;

    invoke-static {v1, v2}, La/a/e;->a(Ljava/lang/String;La/d/t;)La/a/e;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, v0}, La/a/e;->a(La/a/f;)V

    iget v2, v0, La/a/a/b;->a:I

    if-eqz v2, :cond_1

    new-instance v2, La/d/bc;

    iget v0, v0, La/a/a/b;->a:I

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, La/d/bc;-><init>(IZ)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {v1}, La/a/e;->b()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    throw v0

    :cond_1
    :try_start_2
    invoke-virtual {v0}, La/a/a/b;->c()[La/d/i;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :try_start_3
    invoke-virtual {v1}, La/a/e;->b()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    sget-object v2, La/d/bd;->c:La/e/e;

    sget v2, La/e/e;->a:I

    if-lt v2, v4, :cond_2

    sget-object v2, La/d/bd;->c:La/e/e;

    invoke-virtual {v1, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v2, La/d/bd;->c:La/e/e;

    sget v2, La/e/e;->a:I

    if-lt v2, v4, :cond_0

    sget-object v2, La/d/bd;->c:La/e/e;

    invoke-virtual {v1, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method t()[La/d/i;
    .locals 3

    new-instance v0, La/d/o;

    invoke-direct {v0}, La/d/o;-><init>()V

    new-instance v1, La/d/p;

    invoke-direct {v1}, La/d/p;-><init>()V

    invoke-virtual {p0, v0, v1}, La/d/bd;->a(La/d/u;La/d/u;)V

    iget v0, v1, La/d/at;->P:I

    if-eqz v0, :cond_0

    new-instance v0, La/d/bc;

    iget v1, v1, La/d/at;->P:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, La/d/bc;-><init>(IZ)V

    throw v0

    :cond_0
    iget-object v0, v1, La/d/at;->R:[La/d/i;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/d/bd;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .locals 1

    invoke-virtual {p0}, La/d/bd;->p()Z

    invoke-virtual {p0}, La/d/bd;->k()Ljava/lang/String;

    iget-object v0, p0, La/d/bd;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, La/d/bd;->a(Ljava/lang/String;)V

    return-void
.end method

.method public v()J
    .locals 5

    const/4 v4, 0x1

    iget-wide v0, p0, La/d/bd;->v:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, La/d/bd;->u:J

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, La/d/bd;->n()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    new-instance v0, La/d/bx;

    invoke-direct {v0, v4}, La/d/bx;-><init>(I)V

    new-instance v1, La/d/bw;

    invoke-direct {v1, v4}, La/d/bw;-><init>(I)V

    invoke-virtual {p0, v1, v0}, La/d/bd;->a(La/d/u;La/d/u;)V

    iget-object v0, v0, La/d/bx;->a:La/d/a;

    invoke-interface {v0}, La/d/a;->a()J

    move-result-wide v0

    iput-wide v0, p0, La/d/bd;->u:J

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, La/d/bd;->d:J

    add-long/2addr v0, v2

    iput-wide v0, p0, La/d/bd;->v:J

    iget-wide v0, p0, La/d/bd;->u:J

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, La/d/bd;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_2

    iget v0, p0, La/d/bd;->j:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, La/d/bd;->k()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x102

    invoke-virtual {p0, v0, v1}, La/d/bd;->a(Ljava/lang/String;I)La/d/k;

    move-result-object v0

    invoke-interface {v0}, La/d/k;->d()J

    move-result-wide v0

    iput-wide v0, p0, La/d/bd;->u:J

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, La/d/bd;->u:J

    goto :goto_1
.end method

.method public w()V
    .locals 4

    invoke-virtual {p0}, La/d/bd;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v0, La/d/bc;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, La/d/bc;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v1, La/d/bd;->c:La/e/e;

    sget v1, La/e/e;->a:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    sget-object v1, La/d/bd;->c:La/e/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mkdir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/e/e;->println(Ljava/lang/String;)V

    :cond_1
    new-instance v1, La/d/z;

    invoke-direct {v1, v0}, La/d/z;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, La/d/bd;->A()La/d/x;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, La/d/bd;->a(La/d/u;La/d/u;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, La/d/bd;->v:J

    iput-wide v0, p0, La/d/bd;->t:J

    return-void
.end method

.method public x()I
    .locals 2

    invoke-virtual {p0}, La/d/bd;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, La/d/bd;->p()Z

    iget v0, p0, La/d/bd;->s:I

    and-int/lit16 v0, v0, 0x7fff

    goto :goto_0
.end method

.method public y()V
    .locals 1

    invoke-virtual {p0}, La/d/bd;->x()I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, La/d/bd;->a(I)V

    return-void
.end method

.method public z()La/d/i;
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, La/d/bd;->t:J

    invoke-virtual {p0}, La/d/bd;->p()Z

    new-instance v0, La/d/be;

    invoke-direct {v0, p0}, La/d/be;-><init>(La/d/bd;)V

    return-object v0
.end method
