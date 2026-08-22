.class public Lb/a/bb;
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
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Lb/a/bi;

.field private j:B

.field private k:[Lb/a/bh;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v4, 0x0

    const/16 v8, 0xb

    const/16 v6, 0xa

    const/4 v7, 0x2

    const/4 v5, 0x1

    new-instance v0, Lb/a/hs;

    const-string v1, "Error"

    invoke-direct {v0, v1}, Lb/a/hs;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/bb;->e:Lb/a/hs;

    new-instance v0, Lb/a/hk;

    const-string v1, "ts"

    invoke-direct {v0, v1, v6, v5}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/bb;->f:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "context"

    invoke-direct {v0, v1, v8, v7}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/bb;->g:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "source"

    const/16 v2, 0x8

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/bb;->h:Lb/a/hk;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/bb;->i:Ljava/util/Map;

    sget-object v0, Lb/a/bb;->i:Ljava/util/Map;

    const-class v1, Lb/a/hw;

    new-instance v2, Lb/a/be;

    invoke-direct {v2, v4}, Lb/a/be;-><init>(Lb/a/bc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lb/a/bb;->i:Ljava/util/Map;

    const-class v1, Lb/a/hx;

    new-instance v2, Lb/a/bg;

    invoke-direct {v2, v4}, Lb/a/bg;-><init>(Lb/a/bc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lb/a/bh;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lb/a/bh;->a:Lb/a/bh;

    new-instance v2, Lb/a/gz;

    const-string v3, "ts"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v6}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/bh;->b:Lb/a/bh;

    new-instance v2, Lb/a/gz;

    const-string v3, "context"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v8}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/bh;->c:Lb/a/bh;

    new-instance v2, Lb/a/gz;

    const-string v3, "source"

    new-instance v4, Lb/a/gy;

    const/16 v5, 0x10

    const-class v6, Lb/a/bi;

    invoke-direct {v4, v5, v6}, Lb/a/gy;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lb/a/bb;->d:Ljava/util/Map;

    const-class v0, Lb/a/bb;

    sget-object v1, Lb/a/bb;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lb/a/gz;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, Lb/a/bb;->j:B

    const/4 v0, 0x1

    new-array v0, v0, [Lb/a/bh;

    sget-object v1, Lb/a/bh;->c:Lb/a/bh;

    aput-object v1, v0, v2

    iput-object v0, p0, Lb/a/bb;->k:[Lb/a/bh;

    return-void
.end method

.method static synthetic d()Lb/a/hs;
    .locals 1

    sget-object v0, Lb/a/bb;->e:Lb/a/hs;

    return-object v0
.end method

.method static synthetic e()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/bb;->f:Lb/a/hk;

    return-object v0
.end method

.method static synthetic f()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/bb;->g:Lb/a/hk;

    return-object v0
.end method

.method static synthetic g()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/bb;->h:Lb/a/hk;

    return-object v0
.end method


# virtual methods
.method public a(J)Lb/a/bb;
    .locals 1

    iput-wide p1, p0, Lb/a/bb;->a:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/a/bb;->a(Z)V

    return-object p0
.end method

.method public a(Lb/a/bi;)Lb/a/bb;
    .locals 0

    iput-object p1, p0, Lb/a/bb;->c:Lb/a/bi;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lb/a/bb;
    .locals 0

    iput-object p1, p0, Lb/a/bb;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lb/a/hn;)V
    .locals 2

    sget-object v0, Lb/a/bb;->i:Ljava/util/Map;

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

    iget-byte v0, p0, Lb/a/bb;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lb/a/gi;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/bb;->j:B

    return-void
.end method

.method public a()Z
    .locals 2

    iget-byte v0, p0, Lb/a/bb;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb/a/gi;->a(BI)Z

    move-result v0

    return v0
.end method

.method public b(Lb/a/hn;)V
    .locals 2

    sget-object v0, Lb/a/bb;->i:Ljava/util/Map;

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

    iput-object v0, p0, Lb/a/bb;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lb/a/bb;->c:Lb/a/bi;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lb/a/bb;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lb/a/ho;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'context\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/bb;->toString()Ljava/lang/String;

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

.method public c(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/bb;->c:Lb/a/bi;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lb/a/bb;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/bb;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Lb/a/bb;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/bb;->c:Lb/a/bi;

    if-nez v1, :cond_2

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v1, p0, Lb/a/bb;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lb/a/bb;->c:Lb/a/bi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
