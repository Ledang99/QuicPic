.class public Lb/a/au;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/gk;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final A:Lb/a/hk;

.field private static final B:Lb/a/hk;

.field private static final C:Lb/a/hk;

.field private static final D:Lb/a/hk;

.field private static final E:Lb/a/hk;

.field private static final F:Lb/a/hk;

.field private static final G:Lb/a/hk;

.field private static final H:Lb/a/hk;

.field private static final I:Lb/a/hk;

.field private static final J:Lb/a/hk;

.field private static final K:Ljava/util/Map;

.field public static final r:Ljava/util/Map;

.field private static final s:Lb/a/hs;

.field private static final t:Lb/a/hk;

.field private static final u:Lb/a/hk;

.field private static final v:Lb/a/hk;

.field private static final w:Lb/a/hk;

.field private static final x:Lb/a/hk;

.field private static final y:Lb/a/hk;

.field private static final z:Lb/a/hk;


# instance fields
.field private L:B

.field private M:[Lb/a/ba;

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Lb/a/em;

.field public j:Z

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:J

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v3, 0x0

    const/16 v9, 0xc

    const/16 v8, 0xa

    const/4 v7, 0x2

    const/16 v6, 0xb

    new-instance v0, Lb/a/hs;

    const-string v1, "DeviceInfo"

    invoke-direct {v0, v1}, Lb/a/hs;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/au;->s:Lb/a/hs;

    new-instance v0, Lb/a/hk;

    const-string v1, "device_id"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v6, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/au;->t:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "idmd5"

    invoke-direct {v0, v1, v6, v7}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/au;->u:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "mac_address"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v6, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/au;->v:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "open_udid"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v6, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/au;->w:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "model"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/au;->x:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "cpu"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v6, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/au;->y:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "os"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v6, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/au;->z:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "os_version"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v6, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/au;->A:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "resolution"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v9, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/au;->B:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "is_jailbroken"

    invoke-direct {v0, v1, v7, v8}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/au;->C:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "is_pirated"

    invoke-direct {v0, v1, v7, v6}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/au;->D:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "device_board"

    invoke-direct {v0, v1, v6, v9}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/au;->E:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "device_brand"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v6, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/au;->F:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "device_manutime"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v8, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/au;->G:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "device_manufacturer"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v6, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/au;->H:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "device_manuid"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v6, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/au;->I:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "device_name"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v6, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/au;->J:Lb/a/hk;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/au;->K:Ljava/util/Map;

    sget-object v0, Lb/a/au;->K:Ljava/util/Map;

    const-class v1, Lb/a/hw;

    new-instance v2, Lb/a/ax;

    invoke-direct {v2, v3}, Lb/a/ax;-><init>(Lb/a/av;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lb/a/au;->K:Ljava/util/Map;

    const-class v1, Lb/a/hx;

    new-instance v2, Lb/a/az;

    invoke-direct {v2, v3}, Lb/a/az;-><init>(Lb/a/av;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lb/a/ba;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lb/a/ba;->a:Lb/a/ba;

    new-instance v2, Lb/a/gz;

    const-string v3, "device_id"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v6}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/ba;->b:Lb/a/ba;

    new-instance v2, Lb/a/gz;

    const-string v3, "idmd5"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v6}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/ba;->c:Lb/a/ba;

    new-instance v2, Lb/a/gz;

    const-string v3, "mac_address"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v6}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/ba;->d:Lb/a/ba;

    new-instance v2, Lb/a/gz;

    const-string v3, "open_udid"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v6}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/ba;->e:Lb/a/ba;

    new-instance v2, Lb/a/gz;

    const-string v3, "model"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v6}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/ba;->f:Lb/a/ba;

    new-instance v2, Lb/a/gz;

    const-string v3, "cpu"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v6}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/ba;->g:Lb/a/ba;

    new-instance v2, Lb/a/gz;

    const-string v3, "os"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v6}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/ba;->h:Lb/a/ba;

    new-instance v2, Lb/a/gz;

    const-string v3, "os_version"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v6}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/ba;->i:Lb/a/ba;

    new-instance v2, Lb/a/gz;

    const-string v3, "resolution"

    new-instance v4, Lb/a/hd;

    const-class v5, Lb/a/em;

    invoke-direct {v4, v9, v5}, Lb/a/hd;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/ba;->j:Lb/a/ba;

    new-instance v2, Lb/a/gz;

    const-string v3, "is_jailbroken"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v7}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/ba;->k:Lb/a/ba;

    new-instance v2, Lb/a/gz;

    const-string v3, "is_pirated"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v7}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/ba;->l:Lb/a/ba;

    new-instance v2, Lb/a/gz;

    const-string v3, "device_board"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v6}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/ba;->m:Lb/a/ba;

    new-instance v2, Lb/a/gz;

    const-string v3, "device_brand"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v6}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/ba;->n:Lb/a/ba;

    new-instance v2, Lb/a/gz;

    const-string v3, "device_manutime"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v8}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/ba;->o:Lb/a/ba;

    new-instance v2, Lb/a/gz;

    const-string v3, "device_manufacturer"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v6}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/ba;->p:Lb/a/ba;

    new-instance v2, Lb/a/gz;

    const-string v3, "device_manuid"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v6}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/ba;->q:Lb/a/ba;

    new-instance v2, Lb/a/gz;

    const-string v3, "device_name"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v6}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lb/a/au;->r:Ljava/util/Map;

    const-class v0, Lb/a/au;

    sget-object v1, Lb/a/au;->r:Ljava/util/Map;

    invoke-static {v0, v1}, Lb/a/gz;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, Lb/a/au;->L:B

    const/16 v0, 0x11

    new-array v0, v0, [Lb/a/ba;

    sget-object v1, Lb/a/ba;->a:Lb/a/ba;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lb/a/ba;->b:Lb/a/ba;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lb/a/ba;->c:Lb/a/ba;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lb/a/ba;->d:Lb/a/ba;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lb/a/ba;->e:Lb/a/ba;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lb/a/ba;->f:Lb/a/ba;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lb/a/ba;->g:Lb/a/ba;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lb/a/ba;->h:Lb/a/ba;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lb/a/ba;->i:Lb/a/ba;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lb/a/ba;->j:Lb/a/ba;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lb/a/ba;->k:Lb/a/ba;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lb/a/ba;->l:Lb/a/ba;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lb/a/ba;->m:Lb/a/ba;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lb/a/ba;->n:Lb/a/ba;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lb/a/ba;->o:Lb/a/ba;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lb/a/ba;->p:Lb/a/ba;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lb/a/ba;->q:Lb/a/ba;

    aput-object v2, v0, v1

    iput-object v0, p0, Lb/a/au;->M:[Lb/a/ba;

    return-void
.end method

.method static synthetic A()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/au;->A:Lb/a/hk;

    return-object v0
.end method

.method static synthetic B()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/au;->B:Lb/a/hk;

    return-object v0
.end method

.method static synthetic C()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/au;->C:Lb/a/hk;

    return-object v0
.end method

.method static synthetic D()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/au;->D:Lb/a/hk;

    return-object v0
.end method

.method static synthetic E()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/au;->E:Lb/a/hk;

    return-object v0
.end method

.method static synthetic F()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/au;->F:Lb/a/hk;

    return-object v0
.end method

.method static synthetic G()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/au;->G:Lb/a/hk;

    return-object v0
.end method

.method static synthetic H()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/au;->H:Lb/a/hk;

    return-object v0
.end method

.method static synthetic I()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/au;->I:Lb/a/hk;

    return-object v0
.end method

.method static synthetic J()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/au;->J:Lb/a/hk;

    return-object v0
.end method

.method static synthetic s()Lb/a/hs;
    .locals 1

    sget-object v0, Lb/a/au;->s:Lb/a/hs;

    return-object v0
.end method

.method static synthetic t()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/au;->t:Lb/a/hk;

    return-object v0
.end method

.method static synthetic u()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/au;->u:Lb/a/hk;

    return-object v0
.end method

.method static synthetic v()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/au;->v:Lb/a/hk;

    return-object v0
.end method

.method static synthetic w()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/au;->w:Lb/a/hk;

    return-object v0
.end method

.method static synthetic x()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/au;->x:Lb/a/hk;

    return-object v0
.end method

.method static synthetic y()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/au;->y:Lb/a/hk;

    return-object v0
.end method

.method static synthetic z()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/au;->z:Lb/a/hk;

    return-object v0
.end method


# virtual methods
.method public a(J)Lb/a/au;
    .locals 1

    iput-wide p1, p0, Lb/a/au;->n:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/a/au;->n(Z)V

    return-object p0
.end method

.method public a(Lb/a/em;)Lb/a/au;
    .locals 0

    iput-object p1, p0, Lb/a/au;->i:Lb/a/em;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lb/a/au;
    .locals 0

    iput-object p1, p0, Lb/a/au;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lb/a/hn;)V
    .locals 2

    sget-object v0, Lb/a/au;->K:Ljava/util/Map;

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

    iput-object v0, p0, Lb/a/au;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lb/a/au;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lb/a/au;
    .locals 0

    iput-object p1, p0, Lb/a/au;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lb/a/hn;)V
    .locals 2

    sget-object v0, Lb/a/au;->K:Ljava/util/Map;

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

    iput-object v0, p0, Lb/a/au;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lb/a/au;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Lb/a/au;
    .locals 0

    iput-object p1, p0, Lb/a/au;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/au;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lb/a/au;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Lb/a/au;
    .locals 0

    iput-object p1, p0, Lb/a/au;->e:Ljava/lang/String;

    return-object p0
.end method

.method public d(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/au;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lb/a/au;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)Lb/a/au;
    .locals 0

    iput-object p1, p0, Lb/a/au;->f:Ljava/lang/String;

    return-object p0
.end method

.method public e(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/au;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lb/a/au;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)Lb/a/au;
    .locals 0

    iput-object p1, p0, Lb/a/au;->g:Ljava/lang/String;

    return-object p0
.end method

.method public f(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/au;->f:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lb/a/au;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(Ljava/lang/String;)Lb/a/au;
    .locals 0

    iput-object p1, p0, Lb/a/au;->h:Ljava/lang/String;

    return-object p0
.end method

.method public g(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/au;->g:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lb/a/au;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h(Ljava/lang/String;)Lb/a/au;
    .locals 0

    iput-object p1, p0, Lb/a/au;->l:Ljava/lang/String;

    return-object p0
.end method

.method public h(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/au;->h:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lb/a/au;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i(Ljava/lang/String;)Lb/a/au;
    .locals 0

    iput-object p1, p0, Lb/a/au;->m:Ljava/lang/String;

    return-object p0
.end method

.method public i(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/au;->i:Lb/a/em;

    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lb/a/au;->i:Lb/a/em;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j(Ljava/lang/String;)Lb/a/au;
    .locals 0

    iput-object p1, p0, Lb/a/au;->o:Ljava/lang/String;

    return-object p0
.end method

.method public j(Z)V
    .locals 2

    iget-byte v0, p0, Lb/a/au;->L:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lb/a/gi;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/au;->L:B

    return-void
.end method

.method public j()Z
    .locals 2

    iget-byte v0, p0, Lb/a/au;->L:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb/a/gi;->a(BI)Z

    move-result v0

    return v0
.end method

.method public k(Ljava/lang/String;)Lb/a/au;
    .locals 0

    iput-object p1, p0, Lb/a/au;->p:Ljava/lang/String;

    return-object p0
.end method

.method public k(Z)V
    .locals 2

    iget-byte v0, p0, Lb/a/au;->L:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lb/a/gi;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/au;->L:B

    return-void
.end method

.method public k()Z
    .locals 2

    iget-byte v0, p0, Lb/a/au;->L:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lb/a/gi;->a(BI)Z

    move-result v0

    return v0
.end method

.method public l(Ljava/lang/String;)Lb/a/au;
    .locals 0

    iput-object p1, p0, Lb/a/au;->q:Ljava/lang/String;

    return-object p0
.end method

.method public l(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/au;->l:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lb/a/au;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/au;->m:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lb/a/au;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n(Z)V
    .locals 2

    iget-byte v0, p0, Lb/a/au;->L:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lb/a/gi;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/au;->L:B

    return-void
.end method

.method public n()Z
    .locals 2

    iget-byte v0, p0, Lb/a/au;->L:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lb/a/gi;->a(BI)Z

    move-result v0

    return v0
.end method

.method public o(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/au;->o:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public o()Z
    .locals 1

    iget-object v0, p0, Lb/a/au;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/au;->p:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Lb/a/au;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/au;->q:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lb/a/au;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, Lb/a/au;->i:Lb/a/em;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/au;->i:Lb/a/em;

    invoke-virtual {v0}, Lb/a/em;->c()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "DeviceInfo("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lb/a/au;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "device_id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/a/au;->a:Ljava/lang/String;

    if-nez v0, :cond_20

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    :cond_0
    invoke-virtual {p0}, Lb/a/au;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "idmd5:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/a/au;->b:Ljava/lang/String;

    if-nez v0, :cond_21

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move v0, v1

    :cond_2
    invoke-virtual {p0}, Lb/a/au;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v0, :cond_3

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v0, "mac_address:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/a/au;->c:Ljava/lang/String;

    if-nez v0, :cond_22

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    move v0, v1

    :cond_4
    invoke-virtual {p0}, Lb/a/au;->d()Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v0, :cond_5

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v0, "open_udid:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/a/au;->d:Ljava/lang/String;

    if-nez v0, :cond_23

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move v0, v1

    :cond_6
    invoke-virtual {p0}, Lb/a/au;->e()Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v0, :cond_7

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v0, "model:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/a/au;->e:Ljava/lang/String;

    if-nez v0, :cond_24

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    move v0, v1

    :cond_8
    invoke-virtual {p0}, Lb/a/au;->f()Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez v0, :cond_9

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v0, "cpu:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/a/au;->f:Ljava/lang/String;

    if-nez v0, :cond_25

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    move v0, v1

    :cond_a
    invoke-virtual {p0}, Lb/a/au;->g()Z

    move-result v3

    if-eqz v3, :cond_c

    if-nez v0, :cond_b

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v0, "os:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/a/au;->g:Ljava/lang/String;

    if-nez v0, :cond_26

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    move v0, v1

    :cond_c
    invoke-virtual {p0}, Lb/a/au;->h()Z

    move-result v3

    if-eqz v3, :cond_e

    if-nez v0, :cond_d

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const-string v0, "os_version:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/a/au;->h:Ljava/lang/String;

    if-nez v0, :cond_27

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    move v0, v1

    :cond_e
    invoke-virtual {p0}, Lb/a/au;->i()Z

    move-result v3

    if-eqz v3, :cond_10

    if-nez v0, :cond_f

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const-string v0, "resolution:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/a/au;->i:Lb/a/em;

    if-nez v0, :cond_28

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    move v0, v1

    :cond_10
    invoke-virtual {p0}, Lb/a/au;->j()Z

    move-result v3

    if-eqz v3, :cond_12

    if-nez v0, :cond_11

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-string v0, "is_jailbroken:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lb/a/au;->j:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_12
    invoke-virtual {p0}, Lb/a/au;->k()Z

    move-result v3

    if-eqz v3, :cond_14

    if-nez v0, :cond_13

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    const-string v0, "is_pirated:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lb/a/au;->k:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_14
    invoke-virtual {p0}, Lb/a/au;->l()Z

    move-result v3

    if-eqz v3, :cond_16

    if-nez v0, :cond_15

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    const-string v0, "device_board:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/a/au;->l:Ljava/lang/String;

    if-nez v0, :cond_29

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9
    move v0, v1

    :cond_16
    invoke-virtual {p0}, Lb/a/au;->m()Z

    move-result v3

    if-eqz v3, :cond_18

    if-nez v0, :cond_17

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    const-string v0, "device_brand:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/a/au;->m:Ljava/lang/String;

    if-nez v0, :cond_2a

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    move v0, v1

    :cond_18
    invoke-virtual {p0}, Lb/a/au;->n()Z

    move-result v3

    if-eqz v3, :cond_1a

    if-nez v0, :cond_19

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    const-string v0, "device_manutime:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lb/a/au;->n:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_1a
    invoke-virtual {p0}, Lb/a/au;->o()Z

    move-result v3

    if-eqz v3, :cond_1c

    if-nez v0, :cond_1b

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    const-string v0, "device_manufacturer:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/a/au;->o:Ljava/lang/String;

    if-nez v0, :cond_2b

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_b
    move v0, v1

    :cond_1c
    invoke-virtual {p0}, Lb/a/au;->p()Z

    move-result v3

    if-eqz v3, :cond_2e

    if-nez v0, :cond_1d

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    const-string v0, "device_manuid:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/a/au;->p:Ljava/lang/String;

    if-nez v0, :cond_2c

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_c
    invoke-virtual {p0}, Lb/a/au;->q()Z

    move-result v0

    if-eqz v0, :cond_1f

    if-nez v1, :cond_1e

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    const-string v0, "device_name:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/a/au;->q:Ljava/lang/String;

    if-nez v0, :cond_2d

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    :goto_d
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_20
    iget-object v0, p0, Lb/a/au;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_21
    iget-object v0, p0, Lb/a/au;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_22
    iget-object v0, p0, Lb/a/au;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_23
    iget-object v0, p0, Lb/a/au;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_24
    iget-object v0, p0, Lb/a/au;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_25
    iget-object v0, p0, Lb/a/au;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_26
    iget-object v0, p0, Lb/a/au;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_27
    iget-object v0, p0, Lb/a/au;->h:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_28
    iget-object v0, p0, Lb/a/au;->i:Lb/a/em;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :cond_29
    iget-object v0, p0, Lb/a/au;->l:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :cond_2a
    iget-object v0, p0, Lb/a/au;->m:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :cond_2b
    iget-object v0, p0, Lb/a/au;->o:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    :cond_2c
    iget-object v0, p0, Lb/a/au;->p:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_2d
    iget-object v0, p0, Lb/a/au;->q:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_2e
    move v1, v0

    goto/16 :goto_c
.end method
