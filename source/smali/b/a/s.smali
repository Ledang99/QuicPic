.class public Lb/a/s;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/gk;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final c:Ljava/util/Map;

.field private static final d:Lb/a/hs;

.field private static final e:Lb/a/hk;

.field private static final f:Lb/a/hk;

.field private static final g:Ljava/util/Map;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/16 v5, 0xb

    new-instance v0, Lb/a/hs;

    const-string v1, "ActiveUser"

    invoke-direct {v0, v1}, Lb/a/hs;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/s;->d:Lb/a/hs;

    new-instance v0, Lb/a/hk;

    const-string v1, "provider"

    invoke-direct {v0, v1, v5, v6}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/s;->e:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "puid"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v5, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/s;->f:Lb/a/hk;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/s;->g:Ljava/util/Map;

    sget-object v0, Lb/a/s;->g:Ljava/util/Map;

    const-class v1, Lb/a/hw;

    new-instance v2, Lb/a/v;

    invoke-direct {v2, v3}, Lb/a/v;-><init>(Lb/a/t;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lb/a/s;->g:Ljava/util/Map;

    const-class v1, Lb/a/hx;

    new-instance v2, Lb/a/x;

    invoke-direct {v2, v3}, Lb/a/x;-><init>(Lb/a/t;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lb/a/y;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lb/a/y;->a:Lb/a/y;

    new-instance v2, Lb/a/gz;

    const-string v3, "provider"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v5}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/y;->b:Lb/a/y;

    new-instance v2, Lb/a/gz;

    const-string v3, "puid"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v5}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lb/a/s;->c:Ljava/util/Map;

    const-class v0, Lb/a/s;

    sget-object v1, Lb/a/s;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Lb/a/gz;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lb/a/s;-><init>()V

    iput-object p1, p0, Lb/a/s;->a:Ljava/lang/String;

    iput-object p2, p0, Lb/a/s;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic b()Lb/a/hs;
    .locals 1

    sget-object v0, Lb/a/s;->d:Lb/a/hs;

    return-object v0
.end method

.method static synthetic c()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/s;->e:Lb/a/hk;

    return-object v0
.end method

.method static synthetic d()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/s;->f:Lb/a/hk;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lb/a/s;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lb/a/ho;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'provider\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/s;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/ho;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/a/s;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Lb/a/ho;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'puid\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/s;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/ho;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public a(Lb/a/hn;)V
    .locals 2

    sget-object v0, Lb/a/s;->g:Ljava/util/Map;

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

    iput-object v0, p0, Lb/a/s;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b(Lb/a/hn;)V
    .locals 2

    sget-object v0, Lb/a/s;->g:Ljava/util/Map;

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

    iput-object v0, p0, Lb/a/s;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActiveUser("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "provider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/s;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "puid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/s;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lb/a/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lb/a/s;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
