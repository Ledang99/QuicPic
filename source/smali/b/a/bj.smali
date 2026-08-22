.class public Lb/a/bj;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/gk;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final f:Ljava/util/Map;

.field private static final g:Lb/a/hs;

.field private static final h:Lb/a/hk;

.field private static final i:Lb/a/hk;

.field private static final j:Lb/a/hk;

.field private static final k:Lb/a/hk;

.field private static final l:Lb/a/hk;

.field private static final m:Ljava/util/Map;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/Map;

.field public c:J

.field public d:I

.field public e:J

.field private n:B

.field private o:[Lb/a/bp;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v13, 0x8

    const/16 v7, 0xb

    const/4 v12, 0x2

    const/16 v11, 0xa

    const/4 v10, 0x1

    new-instance v0, Lb/a/hs;

    const-string v1, "Event"

    invoke-direct {v0, v1}, Lb/a/hs;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/bj;->g:Lb/a/hs;

    new-instance v0, Lb/a/hk;

    const-string v1, "name"

    invoke-direct {v0, v1, v7, v10}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/bj;->h:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "properties"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v12}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/bj;->i:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "duration"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v11, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/bj;->j:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "acc"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v13, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/bj;->k:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "ts"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v11, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/bj;->l:Lb/a/hk;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/bj;->m:Ljava/util/Map;

    sget-object v0, Lb/a/bj;->m:Ljava/util/Map;

    const-class v1, Lb/a/hw;

    new-instance v2, Lb/a/bm;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lb/a/bm;-><init>(Lb/a/bk;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lb/a/bj;->m:Ljava/util/Map;

    const-class v1, Lb/a/hx;

    new-instance v2, Lb/a/bo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lb/a/bo;-><init>(Lb/a/bk;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lb/a/bp;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lb/a/bp;->a:Lb/a/bp;

    new-instance v2, Lb/a/gz;

    const-string v3, "name"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v7}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v10, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/bp;->b:Lb/a/bp;

    new-instance v2, Lb/a/gz;

    const-string v3, "properties"

    new-instance v4, Lb/a/hc;

    const/16 v5, 0xd

    new-instance v6, Lb/a/ha;

    invoke-direct {v6, v7}, Lb/a/ha;-><init>(B)V

    new-instance v7, Lb/a/hd;

    const/16 v8, 0xc

    const-class v9, Lb/a/ej;

    invoke-direct {v7, v8, v9}, Lb/a/hd;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v5, v6, v7}, Lb/a/hc;-><init>(BLb/a/ha;Lb/a/ha;)V

    invoke-direct {v2, v3, v10, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/bp;->c:Lb/a/bp;

    new-instance v2, Lb/a/gz;

    const-string v3, "duration"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v11}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v12, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/bp;->d:Lb/a/bp;

    new-instance v2, Lb/a/gz;

    const-string v3, "acc"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v13}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v12, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/bp;->e:Lb/a/bp;

    new-instance v2, Lb/a/gz;

    const-string v3, "ts"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v11}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v10, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lb/a/bj;->f:Ljava/util/Map;

    const-class v0, Lb/a/bj;

    sget-object v1, Lb/a/bj;->f:Ljava/util/Map;

    invoke-static {v0, v1}, Lb/a/gz;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, Lb/a/bj;->n:B

    const/4 v0, 0x2

    new-array v0, v0, [Lb/a/bp;

    sget-object v1, Lb/a/bp;->c:Lb/a/bp;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lb/a/bp;->d:Lb/a/bp;

    aput-object v2, v0, v1

    iput-object v0, p0, Lb/a/bj;->o:[Lb/a/bp;

    return-void
.end method

.method static synthetic e()Lb/a/hs;
    .locals 1

    sget-object v0, Lb/a/bj;->g:Lb/a/hs;

    return-object v0
.end method

.method static synthetic f()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/bj;->h:Lb/a/hk;

    return-object v0
.end method

.method static synthetic g()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/bj;->i:Lb/a/hk;

    return-object v0
.end method

.method static synthetic h()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/bj;->j:Lb/a/hk;

    return-object v0
.end method

.method static synthetic i()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/bj;->k:Lb/a/hk;

    return-object v0
.end method

.method static synthetic j()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/bj;->l:Lb/a/hk;

    return-object v0
.end method


# virtual methods
.method public a(I)Lb/a/bj;
    .locals 1

    iput p1, p0, Lb/a/bj;->d:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/a/bj;->d(Z)V

    return-object p0
.end method

.method public a(J)Lb/a/bj;
    .locals 1

    iput-wide p1, p0, Lb/a/bj;->c:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/a/bj;->c(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lb/a/bj;
    .locals 0

    iput-object p1, p0, Lb/a/bj;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lb/a/bj;
    .locals 0

    iput-object p1, p0, Lb/a/bj;->b:Ljava/util/Map;

    return-object p0
.end method

.method public a(Lb/a/hn;)V
    .locals 2

    sget-object v0, Lb/a/bj;->m:Ljava/util/Map;

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

    iput-object v0, p0, Lb/a/bj;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 2

    iget-byte v0, p0, Lb/a/bj;->n:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb/a/gi;->a(BI)Z

    move-result v0

    return v0
.end method

.method public b(J)Lb/a/bj;
    .locals 1

    iput-wide p1, p0, Lb/a/bj;->e:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/a/bj;->e(Z)V

    return-object p0
.end method

.method public b(Lb/a/hn;)V
    .locals 2

    sget-object v0, Lb/a/bj;->m:Ljava/util/Map;

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

    iput-object v0, p0, Lb/a/bj;->b:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 2

    iget-byte v0, p0, Lb/a/bj;->n:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lb/a/gi;->a(BI)Z

    move-result v0

    return v0
.end method

.method public c(Z)V
    .locals 2

    iget-byte v0, p0, Lb/a/bj;->n:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lb/a/gi;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/bj;->n:B

    return-void
.end method

.method public c()Z
    .locals 2

    iget-byte v0, p0, Lb/a/bj;->n:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lb/a/gi;->a(BI)Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lb/a/bj;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lb/a/ho;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'name\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/bj;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/ho;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/a/bj;->b:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Lb/a/ho;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'properties\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/bj;->toString()Ljava/lang/String;

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

.method public d(Z)V
    .locals 2

    iget-byte v0, p0, Lb/a/bj;->n:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lb/a/gi;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/bj;->n:B

    return-void
.end method

.method public e(Z)V
    .locals 2

    iget-byte v0, p0, Lb/a/bj;->n:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lb/a/gi;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/bj;->n:B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/bj;->a:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "properties:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/bj;->b:Ljava/util/Map;

    if-nez v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p0}, Lb/a/bj;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lb/a/bj;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lb/a/bj;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "acc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/a/bj;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lb/a/bj;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v1, p0, Lb/a/bj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lb/a/bj;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
