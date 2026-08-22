.class public Lb/a/do;
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
.field public a:D

.field public b:D

.field public c:J

.field private j:B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v3, 0x0

    const/16 v7, 0xa

    const/4 v6, 0x4

    const/4 v5, 0x1

    new-instance v0, Lb/a/hs;

    const-string v1, "Location"

    invoke-direct {v0, v1}, Lb/a/hs;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/do;->e:Lb/a/hs;

    new-instance v0, Lb/a/hk;

    const-string v1, "lat"

    invoke-direct {v0, v1, v6, v5}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/do;->f:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "lng"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v6, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/do;->g:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "ts"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v7, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/do;->h:Lb/a/hk;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/do;->i:Ljava/util/Map;

    sget-object v0, Lb/a/do;->i:Ljava/util/Map;

    const-class v1, Lb/a/hw;

    new-instance v2, Lb/a/dr;

    invoke-direct {v2, v3}, Lb/a/dr;-><init>(Lb/a/dp;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lb/a/do;->i:Ljava/util/Map;

    const-class v1, Lb/a/hx;

    new-instance v2, Lb/a/dt;

    invoke-direct {v2, v3}, Lb/a/dt;-><init>(Lb/a/dp;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lb/a/du;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lb/a/du;->a:Lb/a/du;

    new-instance v2, Lb/a/gz;

    const-string v3, "lat"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v6}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/du;->b:Lb/a/du;

    new-instance v2, Lb/a/gz;

    const-string v3, "lng"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v6}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/du;->c:Lb/a/du;

    new-instance v2, Lb/a/gz;

    const-string v3, "ts"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v7}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lb/a/do;->d:Ljava/util/Map;

    const-class v0, Lb/a/do;

    sget-object v1, Lb/a/do;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lb/a/gz;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lb/a/do;->j:B

    return-void
.end method

.method public constructor <init>(DDJ)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Lb/a/do;-><init>()V

    iput-wide p1, p0, Lb/a/do;->a:D

    invoke-virtual {p0, v0}, Lb/a/do;->a(Z)V

    iput-wide p3, p0, Lb/a/do;->b:D

    invoke-virtual {p0, v0}, Lb/a/do;->b(Z)V

    iput-wide p5, p0, Lb/a/do;->c:J

    invoke-virtual {p0, v0}, Lb/a/do;->c(Z)V

    return-void
.end method

.method static synthetic e()Lb/a/hs;
    .locals 1

    sget-object v0, Lb/a/do;->e:Lb/a/hs;

    return-object v0
.end method

.method static synthetic f()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/do;->f:Lb/a/hk;

    return-object v0
.end method

.method static synthetic g()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/do;->g:Lb/a/hk;

    return-object v0
.end method

.method static synthetic h()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/do;->h:Lb/a/hk;

    return-object v0
.end method


# virtual methods
.method public a(Lb/a/hn;)V
    .locals 2

    sget-object v0, Lb/a/do;->i:Ljava/util/Map;

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

    iget-byte v0, p0, Lb/a/do;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lb/a/gi;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/do;->j:B

    return-void
.end method

.method public a()Z
    .locals 2

    iget-byte v0, p0, Lb/a/do;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb/a/gi;->a(BI)Z

    move-result v0

    return v0
.end method

.method public b(Lb/a/hn;)V
    .locals 2

    sget-object v0, Lb/a/do;->i:Ljava/util/Map;

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

    iget-byte v0, p0, Lb/a/do;->j:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lb/a/gi;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/do;->j:B

    return-void
.end method

.method public b()Z
    .locals 2

    iget-byte v0, p0, Lb/a/do;->j:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lb/a/gi;->a(BI)Z

    move-result v0

    return v0
.end method

.method public c(Z)V
    .locals 2

    iget-byte v0, p0, Lb/a/do;->j:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lb/a/gi;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/do;->j:B

    return-void
.end method

.method public c()Z
    .locals 2

    iget-byte v0, p0, Lb/a/do;->j:B

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
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Location("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "lat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lb/a/do;->a:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "lng:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lb/a/do;->b:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lb/a/do;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
