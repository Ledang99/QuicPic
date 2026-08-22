.class public Lb/a/fp;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/gk;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final l:Ljava/util/Map;

.field private static final m:Lb/a/hs;

.field private static final n:Lb/a/hk;

.field private static final o:Lb/a/hk;

.field private static final p:Lb/a/hk;

.field private static final q:Lb/a/hk;

.field private static final r:Lb/a/hk;

.field private static final s:Lb/a/hk;

.field private static final t:Lb/a/hk;

.field private static final u:Lb/a/hk;

.field private static final v:Lb/a/hk;

.field private static final w:Lb/a/hk;

.field private static final x:Lb/a/hk;

.field private static final y:Ljava/util/Map;


# instance fields
.field public a:Lb/a/ag;

.field public b:Lb/a/z;

.field public c:Lb/a/au;

.field public d:Lb/a/dv;

.field public e:Lb/a/l;

.field public f:Ljava/util/List;

.field public g:Ljava/util/List;

.field public h:Lb/a/cm;

.field public i:Lb/a/ce;

.field public j:Lb/a/s;

.field public k:Lb/a/an;

.field private z:[Lb/a/fv;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v3, 0x0

    const/16 v9, 0xf

    const/4 v6, 0x1

    const/4 v8, 0x2

    const/16 v7, 0xc

    new-instance v0, Lb/a/hs;

    const-string v1, "UALogEntry"

    invoke-direct {v0, v1}, Lb/a/hs;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/fp;->m:Lb/a/hs;

    new-instance v0, Lb/a/hk;

    const-string v1, "client_stats"

    invoke-direct {v0, v1, v7, v6}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/fp;->n:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "app_info"

    invoke-direct {v0, v1, v7, v8}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/fp;->o:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "device_info"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v7, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/fp;->p:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "misc_info"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v7, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/fp;->q:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "activate_msg"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v7, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/fp;->r:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "instant_msgs"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/fp;->s:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "sessions"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v9, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/fp;->t:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "imprint"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v7, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/fp;->u:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "id_tracking"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v7, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/fp;->v:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "active_user"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v7, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/fp;->w:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "control_policy"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v7, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/fp;->x:Lb/a/hk;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/fp;->y:Ljava/util/Map;

    sget-object v0, Lb/a/fp;->y:Ljava/util/Map;

    const-class v1, Lb/a/hw;

    new-instance v2, Lb/a/fs;

    invoke-direct {v2, v3}, Lb/a/fs;-><init>(Lb/a/fq;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lb/a/fp;->y:Ljava/util/Map;

    const-class v1, Lb/a/hx;

    new-instance v2, Lb/a/fu;

    invoke-direct {v2, v3}, Lb/a/fu;-><init>(Lb/a/fq;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lb/a/fv;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lb/a/fv;->a:Lb/a/fv;

    new-instance v2, Lb/a/gz;

    const-string v3, "client_stats"

    new-instance v4, Lb/a/hd;

    const-class v5, Lb/a/ag;

    invoke-direct {v4, v7, v5}, Lb/a/hd;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/fv;->b:Lb/a/fv;

    new-instance v2, Lb/a/gz;

    const-string v3, "app_info"

    new-instance v4, Lb/a/hd;

    const-class v5, Lb/a/z;

    invoke-direct {v4, v7, v5}, Lb/a/hd;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/fv;->c:Lb/a/fv;

    new-instance v2, Lb/a/gz;

    const-string v3, "device_info"

    new-instance v4, Lb/a/hd;

    const-class v5, Lb/a/au;

    invoke-direct {v4, v7, v5}, Lb/a/hd;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/fv;->d:Lb/a/fv;

    new-instance v2, Lb/a/gz;

    const-string v3, "misc_info"

    new-instance v4, Lb/a/hd;

    const-class v5, Lb/a/dv;

    invoke-direct {v4, v7, v5}, Lb/a/hd;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/fv;->e:Lb/a/fv;

    new-instance v2, Lb/a/gz;

    const-string v3, "activate_msg"

    new-instance v4, Lb/a/hd;

    const-class v5, Lb/a/l;

    invoke-direct {v4, v7, v5}, Lb/a/hd;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/fv;->f:Lb/a/fv;

    new-instance v2, Lb/a/gz;

    const-string v3, "instant_msgs"

    new-instance v4, Lb/a/hb;

    new-instance v5, Lb/a/hd;

    const-class v6, Lb/a/da;

    invoke-direct {v5, v7, v6}, Lb/a/hd;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v9, v5}, Lb/a/hb;-><init>(BLb/a/ha;)V

    invoke-direct {v2, v3, v8, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/fv;->g:Lb/a/fv;

    new-instance v2, Lb/a/gz;

    const-string v3, "sessions"

    new-instance v4, Lb/a/hb;

    new-instance v5, Lb/a/hd;

    const-class v6, Lb/a/fb;

    invoke-direct {v5, v7, v6}, Lb/a/hd;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v9, v5}, Lb/a/hb;-><init>(BLb/a/ha;)V

    invoke-direct {v2, v3, v8, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/fv;->h:Lb/a/fv;

    new-instance v2, Lb/a/gz;

    const-string v3, "imprint"

    new-instance v4, Lb/a/hd;

    const-class v5, Lb/a/cm;

    invoke-direct {v4, v7, v5}, Lb/a/hd;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/fv;->i:Lb/a/fv;

    new-instance v2, Lb/a/gz;

    const-string v3, "id_tracking"

    new-instance v4, Lb/a/hd;

    const-class v5, Lb/a/ce;

    invoke-direct {v4, v7, v5}, Lb/a/hd;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/fv;->j:Lb/a/fv;

    new-instance v2, Lb/a/gz;

    const-string v3, "active_user"

    new-instance v4, Lb/a/hd;

    const-class v5, Lb/a/s;

    invoke-direct {v4, v7, v5}, Lb/a/hd;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/fv;->k:Lb/a/fv;

    new-instance v2, Lb/a/gz;

    const-string v3, "control_policy"

    new-instance v4, Lb/a/hd;

    const-class v5, Lb/a/an;

    invoke-direct {v4, v7, v5}, Lb/a/hd;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lb/a/fp;->l:Ljava/util/Map;

    const-class v0, Lb/a/fp;

    sget-object v1, Lb/a/fp;->l:Ljava/util/Map;

    invoke-static {v0, v1}, Lb/a/gz;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    new-array v0, v0, [Lb/a/fv;

    const/4 v1, 0x0

    sget-object v2, Lb/a/fv;->e:Lb/a/fv;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lb/a/fv;->f:Lb/a/fv;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lb/a/fv;->g:Lb/a/fv;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lb/a/fv;->h:Lb/a/fv;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lb/a/fv;->i:Lb/a/fv;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lb/a/fv;->j:Lb/a/fv;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lb/a/fv;->k:Lb/a/fv;

    aput-object v2, v0, v1

    iput-object v0, p0, Lb/a/fp;->z:[Lb/a/fv;

    return-void
.end method

.method static synthetic l()Lb/a/hs;
    .locals 1

    sget-object v0, Lb/a/fp;->m:Lb/a/hs;

    return-object v0
.end method

.method static synthetic m()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/fp;->n:Lb/a/hk;

    return-object v0
.end method

.method static synthetic n()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/fp;->o:Lb/a/hk;

    return-object v0
.end method

.method static synthetic o()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/fp;->p:Lb/a/hk;

    return-object v0
.end method

.method static synthetic p()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/fp;->q:Lb/a/hk;

    return-object v0
.end method

.method static synthetic q()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/fp;->r:Lb/a/hk;

    return-object v0
.end method

.method static synthetic r()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/fp;->s:Lb/a/hk;

    return-object v0
.end method

.method static synthetic s()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/fp;->t:Lb/a/hk;

    return-object v0
.end method

.method static synthetic t()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/fp;->u:Lb/a/hk;

    return-object v0
.end method

.method static synthetic u()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/fp;->v:Lb/a/hk;

    return-object v0
.end method

.method static synthetic v()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/fp;->w:Lb/a/hk;

    return-object v0
.end method

.method static synthetic w()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/fp;->x:Lb/a/hk;

    return-object v0
.end method


# virtual methods
.method public a(Lb/a/ag;)Lb/a/fp;
    .locals 0

    iput-object p1, p0, Lb/a/fp;->a:Lb/a/ag;

    return-object p0
.end method

.method public a(Lb/a/an;)Lb/a/fp;
    .locals 0

    iput-object p1, p0, Lb/a/fp;->k:Lb/a/an;

    return-object p0
.end method

.method public a(Lb/a/au;)Lb/a/fp;
    .locals 0

    iput-object p1, p0, Lb/a/fp;->c:Lb/a/au;

    return-object p0
.end method

.method public a(Lb/a/ce;)Lb/a/fp;
    .locals 0

    iput-object p1, p0, Lb/a/fp;->i:Lb/a/ce;

    return-object p0
.end method

.method public a(Lb/a/cm;)Lb/a/fp;
    .locals 0

    iput-object p1, p0, Lb/a/fp;->h:Lb/a/cm;

    return-object p0
.end method

.method public a(Lb/a/dv;)Lb/a/fp;
    .locals 0

    iput-object p1, p0, Lb/a/fp;->d:Lb/a/dv;

    return-object p0
.end method

.method public a(Lb/a/l;)Lb/a/fp;
    .locals 0

    iput-object p1, p0, Lb/a/fp;->e:Lb/a/l;

    return-object p0
.end method

.method public a(Lb/a/s;)Lb/a/fp;
    .locals 0

    iput-object p1, p0, Lb/a/fp;->j:Lb/a/s;

    return-object p0
.end method

.method public a(Lb/a/z;)Lb/a/fp;
    .locals 0

    iput-object p1, p0, Lb/a/fp;->b:Lb/a/z;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lb/a/fp;
    .locals 0

    iput-object p1, p0, Lb/a/fp;->f:Ljava/util/List;

    return-object p0
.end method

.method public a(Lb/a/da;)V
    .locals 1

    iget-object v0, p0, Lb/a/fp;->f:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/a/fp;->f:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lb/a/fp;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lb/a/fb;)V
    .locals 1

    iget-object v0, p0, Lb/a/fp;->g:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/a/fp;->g:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lb/a/fp;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lb/a/hn;)V
    .locals 2

    sget-object v0, Lb/a/fp;->y:Ljava/util/Map;

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

    iput-object v0, p0, Lb/a/fp;->a:Lb/a/ag;

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lb/a/fp;->e:Lb/a/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lb/a/fp;->f:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lb/a/fp;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public b(Ljava/util/List;)Lb/a/fp;
    .locals 0

    iput-object p1, p0, Lb/a/fp;->g:Ljava/util/List;

    return-object p0
.end method

.method public b(Lb/a/hn;)V
    .locals 2

    sget-object v0, Lb/a/fp;->y:Ljava/util/Map;

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

    iput-object v0, p0, Lb/a/fp;->b:Lb/a/z;

    :cond_0
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lb/a/fp;->f:Ljava/util/List;

    return-object v0
.end method

.method public c(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/fp;->c:Lb/a/au;

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/fp;->d:Lb/a/dv;

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lb/a/fp;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lb/a/fp;->g:Ljava/util/List;

    return-object v0
.end method

.method public e(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/fp;->e:Lb/a/l;

    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/fp;->f:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lb/a/fp;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/fp;->g:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lb/a/fp;->h:Lb/a/cm;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/fp;->h:Lb/a/cm;

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lb/a/fp;->i:Lb/a/ce;

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

    iput-object v0, p0, Lb/a/fp;->i:Lb/a/ce;

    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lb/a/fp;->j:Lb/a/s;

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

    iput-object v0, p0, Lb/a/fp;->j:Lb/a/s;

    :cond_0
    return-void
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lb/a/fp;->k:Lb/a/an;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()V
    .locals 3

    iget-object v0, p0, Lb/a/fp;->a:Lb/a/ag;

    if-nez v0, :cond_0

    new-instance v0, Lb/a/ho;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'client_stats\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/fp;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/ho;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/a/fp;->b:Lb/a/z;

    if-nez v0, :cond_1

    new-instance v0, Lb/a/ho;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'app_info\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/fp;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/ho;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lb/a/fp;->c:Lb/a/au;

    if-nez v0, :cond_2

    new-instance v0, Lb/a/ho;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'device_info\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/fp;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/ho;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lb/a/fp;->d:Lb/a/dv;

    if-nez v0, :cond_3

    new-instance v0, Lb/a/ho;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'misc_info\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/fp;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/ho;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lb/a/fp;->a:Lb/a/ag;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lb/a/fp;->a:Lb/a/ag;

    invoke-virtual {v0}, Lb/a/ag;->d()V

    :cond_4
    iget-object v0, p0, Lb/a/fp;->b:Lb/a/z;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lb/a/fp;->b:Lb/a/z;

    invoke-virtual {v0}, Lb/a/z;->g()V

    :cond_5
    iget-object v0, p0, Lb/a/fp;->c:Lb/a/au;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lb/a/fp;->c:Lb/a/au;

    invoke-virtual {v0}, Lb/a/au;->r()V

    :cond_6
    iget-object v0, p0, Lb/a/fp;->d:Lb/a/dv;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lb/a/fp;->d:Lb/a/dv;

    invoke-virtual {v0}, Lb/a/dv;->k()V

    :cond_7
    iget-object v0, p0, Lb/a/fp;->e:Lb/a/l;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lb/a/fp;->e:Lb/a/l;

    invoke-virtual {v0}, Lb/a/l;->b()V

    :cond_8
    iget-object v0, p0, Lb/a/fp;->h:Lb/a/cm;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lb/a/fp;->h:Lb/a/cm;

    invoke-virtual {v0}, Lb/a/cm;->f()V

    :cond_9
    iget-object v0, p0, Lb/a/fp;->i:Lb/a/ce;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lb/a/fp;->i:Lb/a/ce;

    invoke-virtual {v0}, Lb/a/ce;->e()V

    :cond_a
    iget-object v0, p0, Lb/a/fp;->j:Lb/a/s;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lb/a/fp;->j:Lb/a/s;

    invoke-virtual {v0}, Lb/a/s;->a()V

    :cond_b
    iget-object v0, p0, Lb/a/fp;->k:Lb/a/an;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lb/a/fp;->k:Lb/a/an;

    invoke-virtual {v0}, Lb/a/an;->b()V

    :cond_c
    return-void
.end method

.method public k(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/fp;->k:Lb/a/an;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UALogEntry("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "client_stats:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/fp;->a:Lb/a/ag;

    if-nez v1, :cond_7

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "app_info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/fp;->b:Lb/a/z;

    if-nez v1, :cond_8

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "device_info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/fp;->c:Lb/a/au;

    if-nez v1, :cond_9

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "misc_info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/fp;->d:Lb/a/dv;

    if-nez v1, :cond_a

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {p0}, Lb/a/fp;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "activate_msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/fp;->e:Lb/a/l;

    if-nez v1, :cond_b

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_4
    invoke-virtual {p0}, Lb/a/fp;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "instant_msgs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/fp;->f:Ljava/util/List;

    if-nez v1, :cond_c

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_5
    invoke-virtual {p0}, Lb/a/fp;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sessions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/fp;->g:Ljava/util/List;

    if-nez v1, :cond_d

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_6
    invoke-virtual {p0}, Lb/a/fp;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "imprint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/fp;->h:Lb/a/cm;

    if-nez v1, :cond_e

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_7
    invoke-virtual {p0}, Lb/a/fp;->h()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "id_tracking:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/fp;->i:Lb/a/ce;

    if-nez v1, :cond_f

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_8
    invoke-virtual {p0}, Lb/a/fp;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "active_user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/fp;->j:Lb/a/s;

    if-nez v1, :cond_10

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_9
    invoke-virtual {p0}, Lb/a/fp;->j()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "control_policy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/fp;->k:Lb/a/an;

    if-nez v1, :cond_11

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_a
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    iget-object v1, p0, Lb/a/fp;->a:Lb/a/ag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lb/a/fp;->b:Lb/a/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_9
    iget-object v1, p0, Lb/a/fp;->c:Lb/a/au;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_a
    iget-object v1, p0, Lb/a/fp;->d:Lb/a/dv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_b
    iget-object v1, p0, Lb/a/fp;->e:Lb/a/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_c
    iget-object v1, p0, Lb/a/fp;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_d
    iget-object v1, p0, Lb/a/fp;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_e
    iget-object v1, p0, Lb/a/fp;->h:Lb/a/cm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_f
    iget-object v1, p0, Lb/a/fp;->i:Lb/a/ce;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_10
    iget-object v1, p0, Lb/a/fp;->j:Lb/a/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_11
    iget-object v1, p0, Lb/a/fp;->k:Lb/a/an;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_a
.end method
