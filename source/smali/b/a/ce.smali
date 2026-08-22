.class public Lb/a/ce;
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
.field public a:Ljava/util/Map;

.field public b:Ljava/util/List;

.field public c:Ljava/lang/String;

.field private j:[Lb/a/ck;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/16 v12, 0xd

    const/16 v11, 0xc

    const/4 v10, 0x1

    const/16 v9, 0xb

    const/4 v8, 0x2

    new-instance v0, Lb/a/hs;

    const-string v1, "IdTracking"

    invoke-direct {v0, v1}, Lb/a/hs;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/ce;->e:Lb/a/hs;

    new-instance v0, Lb/a/hk;

    const-string v1, "snapshots"

    invoke-direct {v0, v1, v12, v10}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/ce;->f:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "journals"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v8}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/ce;->g:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "checksum"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v9, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/ce;->h:Lb/a/hk;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/ce;->i:Ljava/util/Map;

    sget-object v0, Lb/a/ce;->i:Ljava/util/Map;

    const-class v1, Lb/a/hw;

    new-instance v2, Lb/a/ch;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lb/a/ch;-><init>(Lb/a/cf;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lb/a/ce;->i:Ljava/util/Map;

    const-class v1, Lb/a/hx;

    new-instance v2, Lb/a/cj;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lb/a/cj;-><init>(Lb/a/cf;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lb/a/ck;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lb/a/ck;->a:Lb/a/ck;

    new-instance v2, Lb/a/gz;

    const-string v3, "snapshots"

    new-instance v4, Lb/a/hc;

    new-instance v5, Lb/a/ha;

    invoke-direct {v5, v9}, Lb/a/ha;-><init>(B)V

    new-instance v6, Lb/a/hd;

    const-class v7, Lb/a/bx;

    invoke-direct {v6, v11, v7}, Lb/a/hd;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v12, v5, v6}, Lb/a/hc;-><init>(BLb/a/ha;Lb/a/ha;)V

    invoke-direct {v2, v3, v10, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/ck;->b:Lb/a/ck;

    new-instance v2, Lb/a/gz;

    const-string v3, "journals"

    new-instance v4, Lb/a/hb;

    const/16 v5, 0xf

    new-instance v6, Lb/a/hd;

    const-class v7, Lb/a/bq;

    invoke-direct {v6, v11, v7}, Lb/a/hd;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v5, v6}, Lb/a/hb;-><init>(BLb/a/ha;)V

    invoke-direct {v2, v3, v8, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/ck;->c:Lb/a/ck;

    new-instance v2, Lb/a/gz;

    const-string v3, "checksum"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v9}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lb/a/ce;->d:Ljava/util/Map;

    const-class v0, Lb/a/ce;

    sget-object v1, Lb/a/ce;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lb/a/gz;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lb/a/ck;

    const/4 v1, 0x0

    sget-object v2, Lb/a/ck;->b:Lb/a/ck;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lb/a/ck;->c:Lb/a/ck;

    aput-object v2, v0, v1

    iput-object v0, p0, Lb/a/ce;->j:[Lb/a/ck;

    return-void
.end method

.method static synthetic f()Lb/a/hs;
    .locals 1

    sget-object v0, Lb/a/ce;->e:Lb/a/hs;

    return-object v0
.end method

.method static synthetic g()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/ce;->f:Lb/a/hk;

    return-object v0
.end method

.method static synthetic h()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/ce;->g:Lb/a/hk;

    return-object v0
.end method

.method static synthetic i()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/ce;->h:Lb/a/hk;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)Lb/a/ce;
    .locals 0

    iput-object p1, p0, Lb/a/ce;->b:Ljava/util/List;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lb/a/ce;
    .locals 0

    iput-object p1, p0, Lb/a/ce;->a:Ljava/util/Map;

    return-object p0
.end method

.method public a()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lb/a/ce;->a:Ljava/util/Map;

    return-object v0
.end method

.method public a(Lb/a/hn;)V
    .locals 2

    sget-object v0, Lb/a/ce;->i:Ljava/util/Map;

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
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/ce;->a:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lb/a/ce;->b:Ljava/util/List;

    return-object v0
.end method

.method public b(Lb/a/hn;)V
    .locals 2

    sget-object v0, Lb/a/ce;->i:Ljava/util/Map;

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

    iput-object v0, p0, Lb/a/ce;->b:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/ce;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lb/a/ce;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lb/a/ce;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lb/a/ce;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Lb/a/ho;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'snapshots\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/ce;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/ho;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdTracking("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "snapshots:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/ce;->a:Ljava/util/Map;

    if-nez v1, :cond_2

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Lb/a/ce;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "journals:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/ce;->b:Ljava/util/List;

    if-nez v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lb/a/ce;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/ce;->c:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v1, p0, Lb/a/ce;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lb/a/ce;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lb/a/ce;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
