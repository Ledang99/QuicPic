.class public Lb/a/z;
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
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Lb/a/fa;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:I

.field private x:B

.field private y:[Lb/a/af;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v3, 0x0

    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x2

    const/16 v7, 0xb

    new-instance v0, Lb/a/hs;

    const-string v1, "AppInfo"

    invoke-direct {v0, v1}, Lb/a/hs;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/z;->l:Lb/a/hs;

    new-instance v0, Lb/a/hk;

    const-string v1, "key"

    invoke-direct {v0, v1, v7, v10}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/z;->m:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "version"

    invoke-direct {v0, v1, v7, v8}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/z;->n:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "version_index"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v9, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/z;->o:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "package_name"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v7, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/z;->p:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "sdk_type"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v9, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/z;->q:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "sdk_version"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/z;->r:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "channel"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v7, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/z;->s:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "wrapper_type"

    invoke-direct {v0, v1, v7, v9}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/z;->t:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "wrapper_version"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v7, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/z;->u:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "vertical_type"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v9, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/z;->v:Lb/a/hk;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/z;->w:Ljava/util/Map;

    sget-object v0, Lb/a/z;->w:Ljava/util/Map;

    const-class v1, Lb/a/hw;

    new-instance v2, Lb/a/ac;

    invoke-direct {v2, v3}, Lb/a/ac;-><init>(Lb/a/aa;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lb/a/z;->w:Ljava/util/Map;

    const-class v1, Lb/a/hx;

    new-instance v2, Lb/a/ae;

    invoke-direct {v2, v3}, Lb/a/ae;-><init>(Lb/a/aa;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lb/a/af;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lb/a/af;->a:Lb/a/af;

    new-instance v2, Lb/a/gz;

    const-string v3, "key"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v7}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v10, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/af;->b:Lb/a/af;

    new-instance v2, Lb/a/gz;

    const-string v3, "version"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v7}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/af;->c:Lb/a/af;

    new-instance v2, Lb/a/gz;

    const-string v3, "version_index"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v9}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/af;->d:Lb/a/af;

    new-instance v2, Lb/a/gz;

    const-string v3, "package_name"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v7}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/af;->e:Lb/a/af;

    new-instance v2, Lb/a/gz;

    const-string v3, "sdk_type"

    new-instance v4, Lb/a/gy;

    const/16 v5, 0x10

    const-class v6, Lb/a/fa;

    invoke-direct {v4, v5, v6}, Lb/a/gy;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v10, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/af;->f:Lb/a/af;

    new-instance v2, Lb/a/gz;

    const-string v3, "sdk_version"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v7}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v10, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/af;->g:Lb/a/af;

    new-instance v2, Lb/a/gz;

    const-string v3, "channel"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v7}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v10, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/af;->h:Lb/a/af;

    new-instance v2, Lb/a/gz;

    const-string v3, "wrapper_type"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v7}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/af;->i:Lb/a/af;

    new-instance v2, Lb/a/gz;

    const-string v3, "wrapper_version"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v7}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/af;->j:Lb/a/af;

    new-instance v2, Lb/a/gz;

    const-string v3, "vertical_type"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v9}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lb/a/z;->k:Ljava/util/Map;

    const-class v0, Lb/a/z;

    sget-object v1, Lb/a/z;->k:Ljava/util/Map;

    invoke-static {v0, v1}, Lb/a/gz;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, Lb/a/z;->x:B

    const/4 v0, 0x6

    new-array v0, v0, [Lb/a/af;

    sget-object v1, Lb/a/af;->b:Lb/a/af;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lb/a/af;->c:Lb/a/af;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lb/a/af;->d:Lb/a/af;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lb/a/af;->h:Lb/a/af;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lb/a/af;->i:Lb/a/af;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lb/a/af;->j:Lb/a/af;

    aput-object v2, v0, v1

    iput-object v0, p0, Lb/a/z;->y:[Lb/a/af;

    return-void
.end method

.method static synthetic h()Lb/a/hs;
    .locals 1

    sget-object v0, Lb/a/z;->l:Lb/a/hs;

    return-object v0
.end method

.method static synthetic i()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/z;->m:Lb/a/hk;

    return-object v0
.end method

.method static synthetic j()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/z;->n:Lb/a/hk;

    return-object v0
.end method

.method static synthetic k()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/z;->o:Lb/a/hk;

    return-object v0
.end method

.method static synthetic l()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/z;->p:Lb/a/hk;

    return-object v0
.end method

.method static synthetic m()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/z;->q:Lb/a/hk;

    return-object v0
.end method

.method static synthetic n()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/z;->r:Lb/a/hk;

    return-object v0
.end method

.method static synthetic o()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/z;->s:Lb/a/hk;

    return-object v0
.end method

.method static synthetic p()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/z;->t:Lb/a/hk;

    return-object v0
.end method

.method static synthetic q()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/z;->u:Lb/a/hk;

    return-object v0
.end method

.method static synthetic r()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/z;->v:Lb/a/hk;

    return-object v0
.end method


# virtual methods
.method public a(I)Lb/a/z;
    .locals 1

    iput p1, p0, Lb/a/z;->c:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/a/z;->c(Z)V

    return-object p0
.end method

.method public a(Lb/a/fa;)Lb/a/z;
    .locals 0

    iput-object p1, p0, Lb/a/z;->e:Lb/a/fa;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lb/a/z;
    .locals 0

    iput-object p1, p0, Lb/a/z;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lb/a/hn;)V
    .locals 2

    sget-object v0, Lb/a/z;->w:Ljava/util/Map;

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

    iput-object v0, p0, Lb/a/z;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lb/a/z;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)Lb/a/z;
    .locals 1

    iput p1, p0, Lb/a/z;->j:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/a/z;->j(Z)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lb/a/z;
    .locals 0

    iput-object p1, p0, Lb/a/z;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lb/a/hn;)V
    .locals 2

    sget-object v0, Lb/a/z;->w:Ljava/util/Map;

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

    iput-object v0, p0, Lb/a/z;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 2

    iget-byte v0, p0, Lb/a/z;->x:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb/a/gi;->a(BI)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Lb/a/z;
    .locals 0

    iput-object p1, p0, Lb/a/z;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)V
    .locals 2

    iget-byte v0, p0, Lb/a/z;->x:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lb/a/gi;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/z;->x:B

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lb/a/z;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Lb/a/z;
    .locals 0

    iput-object p1, p0, Lb/a/z;->f:Ljava/lang/String;

    return-object p0
.end method

.method public d(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/z;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lb/a/z;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)Lb/a/z;
    .locals 0

    iput-object p1, p0, Lb/a/z;->g:Ljava/lang/String;

    return-object p0
.end method

.method public e(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/z;->e:Lb/a/fa;

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lb/a/z;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)Lb/a/z;
    .locals 0

    iput-object p1, p0, Lb/a/z;->h:Ljava/lang/String;

    return-object p0
.end method

.method public f(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/z;->f:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 2

    iget-byte v0, p0, Lb/a/z;->x:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lb/a/gi;->a(BI)Z

    move-result v0

    return v0
.end method

.method public g(Ljava/lang/String;)Lb/a/z;
    .locals 0

    iput-object p1, p0, Lb/a/z;->i:Ljava/lang/String;

    return-object p0
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, Lb/a/z;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lb/a/ho;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'key\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/z;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/ho;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/a/z;->e:Lb/a/fa;

    if-nez v0, :cond_1

    new-instance v0, Lb/a/ho;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'sdk_type\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/z;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/ho;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lb/a/z;->f:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Lb/a/ho;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'sdk_version\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/z;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/ho;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lb/a/z;->g:Ljava/lang/String;

    if-nez v0, :cond_3

    new-instance v0, Lb/a/ho;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'channel\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/z;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/ho;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method public g(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/z;->g:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public h(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/z;->h:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public i(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/z;->i:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public j(Z)V
    .locals 2

    iget-byte v0, p0, Lb/a/z;->x:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lb/a/gi;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/z;->x:B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/z;->a:Ljava/lang/String;

    if-nez v1, :cond_6

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Lb/a/z;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/z;->b:Ljava/lang/String;

    if-nez v1, :cond_7

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lb/a/z;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "version_index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/a/z;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lb/a/z;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "package_name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/z;->d:Ljava/lang/String;

    if-nez v1, :cond_8

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_2
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sdk_type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/z;->e:Lb/a/fa;

    if-nez v1, :cond_9

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sdk_version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/z;->f:Ljava/lang/String;

    if-nez v1, :cond_a

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "channel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/z;->g:Ljava/lang/String;

    if-nez v1, :cond_b

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {p0}, Lb/a/z;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "wrapper_type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/z;->h:Ljava/lang/String;

    if-nez v1, :cond_c

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_6
    invoke-virtual {p0}, Lb/a/z;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "wrapper_version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/z;->i:Ljava/lang/String;

    if-nez v1, :cond_d

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_7
    invoke-virtual {p0}, Lb/a/z;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "vertical_type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/a/z;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    iget-object v1, p0, Lb/a/z;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lb/a/z;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_8
    iget-object v1, p0, Lb/a/z;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_9
    iget-object v1, p0, Lb/a/z;->e:Lb/a/fa;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_a
    iget-object v1, p0, Lb/a/z;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_b
    iget-object v1, p0, Lb/a/z;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_c
    iget-object v1, p0, Lb/a/z;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_d
    iget-object v1, p0, Lb/a/z;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7
.end method
