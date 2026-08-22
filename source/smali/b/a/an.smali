.class public Lb/a/an;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/gk;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final b:Ljava/util/Map;

.field private static final c:Lb/a/hs;

.field private static final d:Lb/a/hk;

.field private static final e:Ljava/util/Map;


# instance fields
.field public a:Lb/a/dh;

.field private f:[Lb/a/at;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v3, 0x0

    const/16 v7, 0xc

    new-instance v0, Lb/a/hs;

    const-string v1, "ControlPolicy"

    invoke-direct {v0, v1}, Lb/a/hs;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/an;->c:Lb/a/hs;

    new-instance v0, Lb/a/hk;

    const-string v1, "latent"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v7, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/an;->d:Lb/a/hk;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/an;->e:Ljava/util/Map;

    sget-object v0, Lb/a/an;->e:Ljava/util/Map;

    const-class v1, Lb/a/hw;

    new-instance v2, Lb/a/aq;

    invoke-direct {v2, v3}, Lb/a/aq;-><init>(Lb/a/ao;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lb/a/an;->e:Ljava/util/Map;

    const-class v1, Lb/a/hx;

    new-instance v2, Lb/a/as;

    invoke-direct {v2, v3}, Lb/a/as;-><init>(Lb/a/ao;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lb/a/at;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lb/a/at;->a:Lb/a/at;

    new-instance v2, Lb/a/gz;

    const-string v3, "latent"

    const/4 v4, 0x2

    new-instance v5, Lb/a/hd;

    const-class v6, Lb/a/dh;

    invoke-direct {v5, v7, v6}, Lb/a/hd;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v4, v5}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lb/a/an;->b:Ljava/util/Map;

    const-class v0, Lb/a/an;

    sget-object v1, Lb/a/an;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lb/a/gz;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lb/a/at;

    const/4 v1, 0x0

    sget-object v2, Lb/a/at;->a:Lb/a/at;

    aput-object v2, v0, v1

    iput-object v0, p0, Lb/a/an;->f:[Lb/a/at;

    return-void
.end method

.method static synthetic c()Lb/a/hs;
    .locals 1

    sget-object v0, Lb/a/an;->c:Lb/a/hs;

    return-object v0
.end method

.method static synthetic d()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/an;->d:Lb/a/hk;

    return-object v0
.end method


# virtual methods
.method public a(Lb/a/dh;)Lb/a/an;
    .locals 0

    iput-object p1, p0, Lb/a/an;->a:Lb/a/dh;

    return-object p0
.end method

.method public a(Lb/a/hn;)V
    .locals 2

    sget-object v0, Lb/a/an;->e:Ljava/util/Map;

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

    iput-object v0, p0, Lb/a/an;->a:Lb/a/dh;

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lb/a/an;->a:Lb/a/dh;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lb/a/an;->a:Lb/a/dh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/an;->a:Lb/a/dh;

    invoke-virtual {v0}, Lb/a/dh;->c()V

    :cond_0
    return-void
.end method

.method public b(Lb/a/hn;)V
    .locals 2

    sget-object v0, Lb/a/an;->e:Ljava/util/Map;

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

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ControlPolicy("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/a/an;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "latent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/an;->a:Lb/a/dh;

    if-nez v1, :cond_1

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v1, p0, Lb/a/an;->a:Lb/a/dh;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
