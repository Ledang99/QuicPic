.class public Lb/a/dv;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/gk;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final k:Ljava/util/Map;

.field private static final l:Lb/a/hs;

.field private static final m:Lb/a/hk;

.field private static final n:Lb/a/hk;

.field private static final o:Lb/a/hk;

.field private static final p:Lb/a/hk;

.field private static final q:Lb/a/hk;

.field private static final r:Lb/a/hk;

.field private static final s:Lb/a/hk;

.field private static final t:Lb/a/hk;

.field private static final u:Lb/a/hk;

.field private static final v:Lb/a/hk;

.field private static final w:Ljava/util/Map;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:D

.field public e:D

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Lb/a/k;

.field public j:Ljava/lang/String;

.field private x:B

.field private y:[Lb/a/eb;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v3, 0x0

    const/4 v6, 0x4

    const/16 v5, 0x8

    const/16 v8, 0xb

    const/4 v7, 0x2

    new-instance v0, Lb/a/hs;

    const-string v1, "MiscInfo"

    invoke-direct {v0, v1}, Lb/a/hs;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/dv;->l:Lb/a/hs;

    new-instance v0, Lb/a/hk;

    const-string v1, "time_zone"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v5, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/dv;->m:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "language"

    invoke-direct {v0, v1, v8, v7}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/dv;->n:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "country"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v8, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/dv;->o:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "latitude"

    invoke-direct {v0, v1, v6, v6}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/dv;->p:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "longitude"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/dv;->q:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "carrier"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/dv;->r:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "latency"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v5, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/dv;->s:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "display_name"

    invoke-direct {v0, v1, v8, v5}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/dv;->t:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "access_type"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v5, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/dv;->u:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "access_subtype"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v8, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/dv;->v:Lb/a/hk;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/dv;->w:Ljava/util/Map;

    sget-object v0, Lb/a/dv;->w:Ljava/util/Map;

    const-class v1, Lb/a/hw;

    new-instance v2, Lb/a/dy;

    invoke-direct {v2, v3}, Lb/a/dy;-><init>(Lb/a/dw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lb/a/dv;->w:Ljava/util/Map;

    const-class v1, Lb/a/hx;

    new-instance v2, Lb/a/ea;

    invoke-direct {v2, v3}, Lb/a/ea;-><init>(Lb/a/dw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lb/a/eb;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lb/a/eb;->a:Lb/a/eb;

    new-instance v2, Lb/a/gz;

    const-string v3, "time_zone"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v5}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/eb;->b:Lb/a/eb;

    new-instance v2, Lb/a/gz;

    const-string v3, "language"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v8}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/eb;->c:Lb/a/eb;

    new-instance v2, Lb/a/gz;

    const-string v3, "country"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v8}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/eb;->d:Lb/a/eb;

    new-instance v2, Lb/a/gz;

    const-string v3, "latitude"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v6}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/eb;->e:Lb/a/eb;

    new-instance v2, Lb/a/gz;

    const-string v3, "longitude"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v6}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/eb;->f:Lb/a/eb;

    new-instance v2, Lb/a/gz;

    const-string v3, "carrier"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v8}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/eb;->g:Lb/a/eb;

    new-instance v2, Lb/a/gz;

    const-string v3, "latency"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v5}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/eb;->h:Lb/a/eb;

    new-instance v2, Lb/a/gz;

    const-string v3, "display_name"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v8}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/eb;->i:Lb/a/eb;

    new-instance v2, Lb/a/gz;

    const-string v3, "access_type"

    new-instance v4, Lb/a/gy;

    const/16 v5, 0x10

    const-class v6, Lb/a/k;

    invoke-direct {v4, v5, v6}, Lb/a/gy;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/eb;->j:Lb/a/eb;

    new-instance v2, Lb/a/gz;

    const-string v3, "access_subtype"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v8}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lb/a/dv;->k:Ljava/util/Map;

    const-class v0, Lb/a/dv;

    sget-object v1, Lb/a/dv;->k:Ljava/util/Map;

    invoke-static {v0, v1}, Lb/a/gz;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, Lb/a/dv;->x:B

    const/16 v0, 0xa

    new-array v0, v0, [Lb/a/eb;

    sget-object v1, Lb/a/eb;->a:Lb/a/eb;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lb/a/eb;->b:Lb/a/eb;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lb/a/eb;->c:Lb/a/eb;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lb/a/eb;->d:Lb/a/eb;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lb/a/eb;->e:Lb/a/eb;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lb/a/eb;->f:Lb/a/eb;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lb/a/eb;->g:Lb/a/eb;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lb/a/eb;->h:Lb/a/eb;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lb/a/eb;->i:Lb/a/eb;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lb/a/eb;->j:Lb/a/eb;

    aput-object v2, v0, v1

    iput-object v0, p0, Lb/a/dv;->y:[Lb/a/eb;

    return-void
.end method

.method static synthetic l()Lb/a/hs;
    .locals 1

    sget-object v0, Lb/a/dv;->l:Lb/a/hs;

    return-object v0
.end method

.method static synthetic m()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/dv;->m:Lb/a/hk;

    return-object v0
.end method

.method static synthetic n()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/dv;->n:Lb/a/hk;

    return-object v0
.end method

.method static synthetic o()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/dv;->o:Lb/a/hk;

    return-object v0
.end method

.method static synthetic p()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/dv;->p:Lb/a/hk;

    return-object v0
.end method

.method static synthetic q()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/dv;->q:Lb/a/hk;

    return-object v0
.end method

.method static synthetic r()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/dv;->r:Lb/a/hk;

    return-object v0
.end method

.method static synthetic s()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/dv;->s:Lb/a/hk;

    return-object v0
.end method

.method static synthetic t()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/dv;->t:Lb/a/hk;

    return-object v0
.end method

.method static synthetic u()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/dv;->u:Lb/a/hk;

    return-object v0
.end method

.method static synthetic v()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/dv;->v:Lb/a/hk;

    return-object v0
.end method


# virtual methods
.method public a(I)Lb/a/dv;
    .locals 1

    iput p1, p0, Lb/a/dv;->a:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/a/dv;->a(Z)V

    return-object p0
.end method

.method public a(Lb/a/k;)Lb/a/dv;
    .locals 0

    iput-object p1, p0, Lb/a/dv;->i:Lb/a/k;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lb/a/dv;
    .locals 0

    iput-object p1, p0, Lb/a/dv;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lb/a/hn;)V
    .locals 2

    sget-object v0, Lb/a/dv;->w:Ljava/util/Map;

    invoke-virtual {p1}, Lb/a/hn;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/hv;

    invoke-interface {v0}, Lb/a/hv;->b()Lb/a/hu;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lb/a/hu;->b(Lb/a/hn;Lb/a/gk;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-byte v0, p0, Lb/a/dv;->x:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lb/a/gi;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/dv;->x:B

    return-void
.end method

.method public a()Z
    .locals 2

    iget-byte v0, p0, Lb/a/dv;->x:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb/a/gi;->a(BI)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Lb/a/dv;
    .locals 0

    iput-object p1, p0, Lb/a/dv;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lb/a/hn;)V
    .locals 2

    sget-object v0, Lb/a/dv;->w:Ljava/util/Map;

    invoke-virtual {p1}, Lb/a/hn;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/hv;

    invoke-interface {v0}, Lb/a/hv;->b()Lb/a/hu;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lb/a/hu;->a(Lb/a/hn;Lb/a/gk;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/dv;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lb/a/dv;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Lb/a/dv;
    .locals 0

    iput-object p1, p0, Lb/a/dv;->f:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/dv;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lb/a/dv;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Lb/a/dv;
    .locals 0

    iput-object p1, p0, Lb/a/dv;->j:Ljava/lang/String;

    return-object p0
.end method

.method public d(Z)V
    .locals 2

    iget-byte v0, p0, Lb/a/dv;->x:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lb/a/gi;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/dv;->x:B

    return-void
.end method

.method public d()Z
    .locals 2

    iget-byte v0, p0, Lb/a/dv;->x:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lb/a/gi;->a(BI)Z

    move-result v0

    return v0
.end method

.method public e(Z)V
    .locals 2

    iget-byte v0, p0, Lb/a/dv;->x:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lb/a/gi;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/dv;->x:B

    return-void
.end method

.method public e()Z
    .locals 2

    iget-byte v0, p0, Lb/a/dv;->x:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lb/a/gi;->a(BI)Z

    move-result v0

    return v0
.end method

.method public f(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/dv;->f:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lb/a/dv;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(Z)V
    .locals 2

    iget-byte v0, p0, Lb/a/dv;->x:B

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lb/a/gi;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/dv;->x:B

    return-void
.end method

.method public g()Z
    .locals 2

    iget-byte v0, p0, Lb/a/dv;->x:B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lb/a/gi;->a(BI)Z

    move-result v0

    return v0
.end method

.method public h(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/dv;->h:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lb/a/dv;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/dv;->i:Lb/a/k;

    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lb/a/dv;->i:Lb/a/k;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/dv;->j:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lb/a/dv;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "MiscInfo("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lb/a/dv;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "time_zone:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lb/a/dv;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_0
    invoke-virtual {p0}, Lb/a/dv;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "language:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/a/dv;->b:Ljava/lang/String;

    if-nez v0, :cond_12

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    :cond_2
    invoke-virtual {p0}, Lb/a/dv;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v0, :cond_3

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v0, "country:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/a/dv;->c:Ljava/lang/String;

    if-nez v0, :cond_13

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move v0, v1

    :cond_4
    invoke-virtual {p0}, Lb/a/dv;->d()Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v0, :cond_5

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v0, "latitude:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lb/a/dv;->d:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_6
    invoke-virtual {p0}, Lb/a/dv;->e()Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v0, :cond_7

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v0, "longitude:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lb/a/dv;->e:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_8
    invoke-virtual {p0}, Lb/a/dv;->f()Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez v0, :cond_9

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v0, "carrier:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/a/dv;->f:Ljava/lang/String;

    if-nez v0, :cond_14

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    move v0, v1

    :cond_a
    invoke-virtual {p0}, Lb/a/dv;->g()Z

    move-result v3

    if-eqz v3, :cond_c

    if-nez v0, :cond_b

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v0, "latency:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lb/a/dv;->g:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_c
    invoke-virtual {p0}, Lb/a/dv;->h()Z

    move-result v3

    if-eqz v3, :cond_e

    if-nez v0, :cond_d

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const-string v0, "display_name:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/a/dv;->h:Ljava/lang/String;

    if-nez v0, :cond_15

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move v0, v1

    :cond_e
    invoke-virtual {p0}, Lb/a/dv;->i()Z

    move-result v3

    if-eqz v3, :cond_18

    if-nez v0, :cond_f

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const-string v0, "access_type:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/a/dv;->i:Lb/a/k;

    if-nez v0, :cond_16

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {p0}, Lb/a/dv;->j()Z

    move-result v0

    if-eqz v0, :cond_11

    if-nez v1, :cond_10

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    const-string v0, "access_subtype:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/a/dv;->j:Ljava/lang/String;

    if-nez v0, :cond_17

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    :goto_5
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    iget-object v0, p0, Lb/a/dv;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lb/a/dv;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_14
    iget-object v0, p0, Lb/a/dv;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_15
    iget-object v0, p0, Lb/a/dv;->h:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_16
    iget-object v0, p0, Lb/a/dv;->i:Lb/a/k;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_17
    iget-object v0, p0, Lb/a/dv;->j:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_18
    move v1, v0

    goto :goto_4
.end method
