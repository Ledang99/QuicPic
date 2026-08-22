.class public Lb/a/ag;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/gk;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final d:Ljava/util/Map;

.field private static final e:Lb/a/hs;

.field private static final f:Lb/a/hk;

.field private static final g:Lb/a/hk;

.field private static final h:Lb/a/hk;

.field private static final i:Ljava/util/Map;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field private j:B

.field private k:[Lb/a/am;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0x8

    new-instance v0, Lb/a/hs;

    const-string v1, "ClientStats"

    invoke-direct {v0, v1}, Lb/a/hs;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/ag;->e:Lb/a/hs;

    new-instance v0, Lb/a/hk;

    const-string v1, "successful_requests"

    invoke-direct {v0, v1, v5, v6}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/ag;->f:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "failed_requests"

    invoke-direct {v0, v1, v5, v7}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/ag;->g:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "last_request_spent_ms"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/ag;->h:Lb/a/hk;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/ag;->i:Ljava/util/Map;

    sget-object v0, Lb/a/ag;->i:Ljava/util/Map;

    const-class v1, Lb/a/hw;

    new-instance v2, Lb/a/aj;

    invoke-direct {v2, v3}, Lb/a/aj;-><init>(Lb/a/ah;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lb/a/ag;->i:Ljava/util/Map;

    const-class v1, Lb/a/hx;

    new-instance v2, Lb/a/al;

    invoke-direct {v2, v3}, Lb/a/al;-><init>(Lb/a/ah;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lb/a/am;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lb/a/am;->a:Lb/a/am;

    new-instance v2, Lb/a/gz;

    const-string v3, "successful_requests"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v5}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/am;->b:Lb/a/am;

    new-instance v2, Lb/a/gz;

    const-string v3, "failed_requests"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v5}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/am;->c:Lb/a/am;

    new-instance v2, Lb/a/gz;

    const-string v3, "last_request_spent_ms"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v5}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lb/a/ag;->d:Ljava/util/Map;

    const-class v0, Lb/a/ag;

    sget-object v1, Lb/a/ag;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lb/a/gz;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, Lb/a/ag;->j:B

    const/4 v0, 0x1

    new-array v0, v0, [Lb/a/am;

    sget-object v1, Lb/a/am;->c:Lb/a/am;

    aput-object v1, v0, v2

    iput-object v0, p0, Lb/a/ag;->k:[Lb/a/am;

    iput v2, p0, Lb/a/ag;->a:I

    iput v2, p0, Lb/a/ag;->b:I

    return-void
.end method

.method static synthetic e()Lb/a/hs;
    .locals 1

    sget-object v0, Lb/a/ag;->e:Lb/a/hs;

    return-object v0
.end method

.method static synthetic f()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/ag;->f:Lb/a/hk;

    return-object v0
.end method

.method static synthetic g()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/ag;->g:Lb/a/hk;

    return-object v0
.end method

.method static synthetic h()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/ag;->h:Lb/a/hk;

    return-object v0
.end method


# virtual methods
.method public a(I)Lb/a/ag;
    .locals 1

    iput p1, p0, Lb/a/ag;->a:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/a/ag;->a(Z)V

    return-object p0
.end method

.method public a(Lb/a/hn;)V
    .locals 2

    sget-object v0, Lb/a/ag;->i:Ljava/util/Map;

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

    iget-byte v0, p0, Lb/a/ag;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lb/a/gi;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/ag;->j:B

    return-void
.end method

.method public a()Z
    .locals 2

    iget-byte v0, p0, Lb/a/ag;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb/a/gi;->a(BI)Z

    move-result v0

    return v0
.end method

.method public b(I)Lb/a/ag;
    .locals 1

    iput p1, p0, Lb/a/ag;->b:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/a/ag;->b(Z)V

    return-object p0
.end method

.method public b(Lb/a/hn;)V
    .locals 2

    sget-object v0, Lb/a/ag;->i:Ljava/util/Map;

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
    .locals 2

    iget-byte v0, p0, Lb/a/ag;->j:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lb/a/gi;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/ag;->j:B

    return-void
.end method

.method public b()Z
    .locals 2

    iget-byte v0, p0, Lb/a/ag;->j:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lb/a/gi;->a(BI)Z

    move-result v0

    return v0
.end method

.method public c(I)Lb/a/ag;
    .locals 1

    iput p1, p0, Lb/a/ag;->c:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/a/ag;->c(Z)V

    return-object p0
.end method

.method public c(Z)V
    .locals 2

    iget-byte v0, p0, Lb/a/ag;->j:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lb/a/gi;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/ag;->j:B

    return-void
.end method

.method public c()Z
    .locals 2

    iget-byte v0, p0, Lb/a/ag;->j:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lb/a/gi;->a(BI)Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClientStats("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "successful_requests:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/a/ag;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "failed_requests:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/a/ag;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/a/ag;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "last_request_spent_ms:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/a/ag;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
