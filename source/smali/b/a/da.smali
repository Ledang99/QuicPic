.class public Lb/a/da;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/gk;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final e:Ljava/util/Map;

.field private static final f:Lb/a/hs;

.field private static final g:Lb/a/hk;

.field private static final h:Lb/a/hk;

.field private static final i:Lb/a/hk;

.field private static final j:Lb/a/hk;

.field private static final k:Ljava/util/Map;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/List;

.field public c:Ljava/util/List;

.field public d:Ljava/util/List;

.field private l:[Lb/a/dg;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v6, 0xb

    const/4 v5, 0x1

    const/16 v9, 0xc

    const/4 v8, 0x2

    const/16 v7, 0xf

    new-instance v0, Lb/a/hs;

    const-string v1, "InstantMsg"

    invoke-direct {v0, v1}, Lb/a/hs;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/da;->f:Lb/a/hs;

    new-instance v0, Lb/a/hk;

    const-string v1, "id"

    invoke-direct {v0, v1, v6, v5}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/da;->g:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "errors"

    invoke-direct {v0, v1, v7, v8}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/da;->h:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "events"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v7, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/da;->i:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "game_events"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v7, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/da;->j:Lb/a/hk;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/da;->k:Ljava/util/Map;

    sget-object v0, Lb/a/da;->k:Ljava/util/Map;

    const-class v1, Lb/a/hw;

    new-instance v2, Lb/a/dd;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lb/a/dd;-><init>(Lb/a/db;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lb/a/da;->k:Ljava/util/Map;

    const-class v1, Lb/a/hx;

    new-instance v2, Lb/a/df;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lb/a/df;-><init>(Lb/a/db;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lb/a/dg;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lb/a/dg;->a:Lb/a/dg;

    new-instance v2, Lb/a/gz;

    const-string v3, "id"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v6}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/dg;->b:Lb/a/dg;

    new-instance v2, Lb/a/gz;

    const-string v3, "errors"

    new-instance v4, Lb/a/hb;

    new-instance v5, Lb/a/hd;

    const-class v6, Lb/a/bb;

    invoke-direct {v5, v9, v6}, Lb/a/hd;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v7, v5}, Lb/a/hb;-><init>(BLb/a/ha;)V

    invoke-direct {v2, v3, v8, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/dg;->c:Lb/a/dg;

    new-instance v2, Lb/a/gz;

    const-string v3, "events"

    new-instance v4, Lb/a/hb;

    new-instance v5, Lb/a/hd;

    const-class v6, Lb/a/bj;

    invoke-direct {v5, v9, v6}, Lb/a/hd;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v7, v5}, Lb/a/hb;-><init>(BLb/a/ha;)V

    invoke-direct {v2, v3, v8, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/dg;->d:Lb/a/dg;

    new-instance v2, Lb/a/gz;

    const-string v3, "game_events"

    new-instance v4, Lb/a/hb;

    new-instance v5, Lb/a/hd;

    const-class v6, Lb/a/bj;

    invoke-direct {v5, v9, v6}, Lb/a/hd;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v7, v5}, Lb/a/hb;-><init>(BLb/a/ha;)V

    invoke-direct {v2, v3, v8, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lb/a/da;->e:Ljava/util/Map;

    const-class v0, Lb/a/da;

    sget-object v1, Lb/a/da;->e:Ljava/util/Map;

    invoke-static {v0, v1}, Lb/a/gz;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Lb/a/dg;

    const/4 v1, 0x0

    sget-object v2, Lb/a/dg;->b:Lb/a/dg;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lb/a/dg;->c:Lb/a/dg;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lb/a/dg;->d:Lb/a/dg;

    aput-object v2, v0, v1

    iput-object v0, p0, Lb/a/da;->l:[Lb/a/dg;

    return-void
.end method

.method static synthetic f()Lb/a/hs;
    .locals 1

    sget-object v0, Lb/a/da;->f:Lb/a/hs;

    return-object v0
.end method

.method static synthetic g()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/da;->g:Lb/a/hk;

    return-object v0
.end method

.method static synthetic h()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/da;->h:Lb/a/hk;

    return-object v0
.end method

.method static synthetic i()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/da;->i:Lb/a/hk;

    return-object v0
.end method

.method static synthetic j()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/da;->j:Lb/a/hk;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lb/a/da;
    .locals 0

    iput-object p1, p0, Lb/a/da;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/da;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lb/a/bb;)V
    .locals 1

    iget-object v0, p0, Lb/a/da;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/a/da;->b:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lb/a/da;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lb/a/bj;)V
    .locals 1

    iget-object v0, p0, Lb/a/da;->c:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/a/da;->c:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lb/a/da;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lb/a/hn;)V
    .locals 2

    sget-object v0, Lb/a/da;->k:Ljava/util/Map;

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

    iput-object v0, p0, Lb/a/da;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b(Lb/a/hn;)V
    .locals 2

    sget-object v0, Lb/a/da;->k:Ljava/util/Map;

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

    iput-object v0, p0, Lb/a/da;->b:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lb/a/da;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/da;->c:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lb/a/da;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/da;->d:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lb/a/da;->d:Ljava/util/List;

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

    iget-object v0, p0, Lb/a/da;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lb/a/ho;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/da;->toString()Ljava/lang/String;

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

    const-string v1, "InstantMsg("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/da;->a:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Lb/a/da;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "errors:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/da;->b:Ljava/util/List;

    if-nez v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lb/a/da;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "events:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/da;->c:Ljava/util/List;

    if-nez v1, :cond_5

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lb/a/da;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "game_events:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/da;->d:Ljava/util/List;

    if-nez v1, :cond_6

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_3
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v1, p0, Lb/a/da;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lb/a/da;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lb/a/da;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lb/a/da;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method
