.class public Lb/a/fb;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/gk;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final h:Ljava/util/Map;

.field private static final i:Lb/a/hs;

.field private static final j:Lb/a/hk;

.field private static final k:Lb/a/hk;

.field private static final l:Lb/a/hk;

.field private static final m:Lb/a/hk;

.field private static final n:Lb/a/hk;

.field private static final o:Lb/a/hk;

.field private static final p:Lb/a/hk;

.field private static final q:Ljava/util/Map;


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:J

.field public d:J

.field public e:Ljava/util/List;

.field public f:Ljava/util/List;

.field public g:Lb/a/fi;

.field private r:B

.field private s:[Lb/a/fh;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v10, 0xf

    const/16 v9, 0xc

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0xa

    new-instance v0, Lb/a/hs;

    const-string v1, "Session"

    invoke-direct {v0, v1}, Lb/a/hs;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/fb;->i:Lb/a/hs;

    new-instance v0, Lb/a/hk;

    const-string v1, "id"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v7}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/fb;->j:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "start_time"

    invoke-direct {v0, v1, v6, v8}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/fb;->k:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "end_time"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v6, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/fb;->l:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "duration"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v6, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/fb;->m:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "pages"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v10, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/fb;->n:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "locations"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v10, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/fb;->o:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "traffic"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v9, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/fb;->p:Lb/a/hk;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/fb;->q:Ljava/util/Map;

    sget-object v0, Lb/a/fb;->q:Ljava/util/Map;

    const-class v1, Lb/a/hw;

    new-instance v2, Lb/a/fe;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lb/a/fe;-><init>(Lb/a/fc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lb/a/fb;->q:Ljava/util/Map;

    const-class v1, Lb/a/hx;

    new-instance v2, Lb/a/fg;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lb/a/fg;-><init>(Lb/a/fc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lb/a/fh;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lb/a/fh;->a:Lb/a/fh;

    new-instance v2, Lb/a/gz;

    const-string v3, "id"

    new-instance v4, Lb/a/ha;

    const/16 v5, 0xb

    invoke-direct {v4, v5}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/fh;->b:Lb/a/fh;

    new-instance v2, Lb/a/gz;

    const-string v3, "start_time"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v6}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/fh;->c:Lb/a/fh;

    new-instance v2, Lb/a/gz;

    const-string v3, "end_time"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v6}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/fh;->d:Lb/a/fh;

    new-instance v2, Lb/a/gz;

    const-string v3, "duration"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v6}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/fh;->e:Lb/a/fh;

    new-instance v2, Lb/a/gz;

    const-string v3, "pages"

    new-instance v4, Lb/a/hb;

    new-instance v5, Lb/a/hd;

    const-class v6, Lb/a/ec;

    invoke-direct {v5, v9, v6}, Lb/a/hd;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v10, v5}, Lb/a/hb;-><init>(BLb/a/ha;)V

    invoke-direct {v2, v3, v8, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/fh;->f:Lb/a/fh;

    new-instance v2, Lb/a/gz;

    const-string v3, "locations"

    new-instance v4, Lb/a/hb;

    new-instance v5, Lb/a/hd;

    const-class v6, Lb/a/do;

    invoke-direct {v5, v9, v6}, Lb/a/hd;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v10, v5}, Lb/a/hb;-><init>(BLb/a/ha;)V

    invoke-direct {v2, v3, v8, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/fh;->g:Lb/a/fh;

    new-instance v2, Lb/a/gz;

    const-string v3, "traffic"

    new-instance v4, Lb/a/hd;

    const-class v5, Lb/a/fi;

    invoke-direct {v4, v9, v5}, Lb/a/hd;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lb/a/fb;->h:Ljava/util/Map;

    const-class v0, Lb/a/fb;

    sget-object v1, Lb/a/fb;->h:Ljava/util/Map;

    invoke-static {v0, v1}, Lb/a/gz;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, Lb/a/fb;->r:B

    const/4 v0, 0x3

    new-array v0, v0, [Lb/a/fh;

    sget-object v1, Lb/a/fh;->e:Lb/a/fh;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lb/a/fh;->f:Lb/a/fh;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lb/a/fh;->g:Lb/a/fh;

    aput-object v2, v0, v1

    iput-object v0, p0, Lb/a/fb;->s:[Lb/a/fh;

    return-void
.end method

.method static synthetic i()Lb/a/hs;
    .locals 1

    sget-object v0, Lb/a/fb;->i:Lb/a/hs;

    return-object v0
.end method

.method static synthetic j()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/fb;->j:Lb/a/hk;

    return-object v0
.end method

.method static synthetic k()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/fb;->k:Lb/a/hk;

    return-object v0
.end method

.method static synthetic l()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/fb;->l:Lb/a/hk;

    return-object v0
.end method

.method static synthetic m()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/fb;->m:Lb/a/hk;

    return-object v0
.end method

.method static synthetic n()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/fb;->n:Lb/a/hk;

    return-object v0
.end method

.method static synthetic o()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/fb;->o:Lb/a/hk;

    return-object v0
.end method

.method static synthetic p()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/fb;->p:Lb/a/hk;

    return-object v0
.end method


# virtual methods
.method public a(J)Lb/a/fb;
    .locals 1

    iput-wide p1, p0, Lb/a/fb;->b:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/a/fb;->b(Z)V

    return-object p0
.end method

.method public a(Lb/a/fi;)Lb/a/fb;
    .locals 0

    iput-object p1, p0, Lb/a/fb;->g:Lb/a/fi;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lb/a/fb;
    .locals 0

    iput-object p1, p0, Lb/a/fb;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lb/a/fb;
    .locals 0

    iput-object p1, p0, Lb/a/fb;->e:Ljava/util/List;

    return-object p0
.end method

.method public a(Lb/a/do;)V
    .locals 1

    iget-object v0, p0, Lb/a/fb;->f:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/a/fb;->f:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lb/a/fb;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lb/a/hn;)V
    .locals 2

    sget-object v0, Lb/a/fb;->q:Ljava/util/Map;

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

    iput-object v0, p0, Lb/a/fb;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 2

    iget-byte v0, p0, Lb/a/fb;->r:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb/a/gi;->a(BI)Z

    move-result v0

    return v0
.end method

.method public b(J)Lb/a/fb;
    .locals 1

    iput-wide p1, p0, Lb/a/fb;->c:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/a/fb;->c(Z)V

    return-object p0
.end method

.method public b(Ljava/util/List;)Lb/a/fb;
    .locals 0

    iput-object p1, p0, Lb/a/fb;->f:Ljava/util/List;

    return-object p0
.end method

.method public b(Lb/a/hn;)V
    .locals 2

    sget-object v0, Lb/a/fb;->q:Ljava/util/Map;

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

    iget-byte v0, p0, Lb/a/fb;->r:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lb/a/gi;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/fb;->r:B

    return-void
.end method

.method public b()Z
    .locals 2

    iget-byte v0, p0, Lb/a/fb;->r:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lb/a/gi;->a(BI)Z

    move-result v0

    return v0
.end method

.method public c(J)Lb/a/fb;
    .locals 1

    iput-wide p1, p0, Lb/a/fb;->d:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/a/fb;->d(Z)V

    return-object p0
.end method

.method public c(Z)V
    .locals 2

    iget-byte v0, p0, Lb/a/fb;->r:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lb/a/gi;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/fb;->r:B

    return-void
.end method

.method public c()Z
    .locals 2

    iget-byte v0, p0, Lb/a/fb;->r:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lb/a/gi;->a(BI)Z

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lb/a/fb;->e:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lb/a/fb;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public d(Z)V
    .locals 2

    iget-byte v0, p0, Lb/a/fb;->r:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lb/a/gi;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/fb;->r:B

    return-void
.end method

.method public e(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/fb;->e:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lb/a/fb;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/fb;->f:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lb/a/fb;->f:Ljava/util/List;

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

    iput-object v0, p0, Lb/a/fb;->g:Lb/a/fi;

    :cond_0
    return-void
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lb/a/fb;->g:Lb/a/fi;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, Lb/a/fb;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lb/a/ho;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/fb;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/ho;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/a/fb;->g:Lb/a/fi;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/a/fb;->g:Lb/a/fi;

    invoke-virtual {v0}, Lb/a/fi;->c()V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Session("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/fb;->a:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "start_time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lb/a/fb;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "end_time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lb/a/fb;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lb/a/fb;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/a/fb;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "pages:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/fb;->e:Ljava/util/List;

    if-nez v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lb/a/fb;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "locations:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/fb;->f:Ljava/util/List;

    if-nez v1, :cond_5

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lb/a/fb;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "traffic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/fb;->g:Lb/a/fi;

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
    iget-object v1, p0, Lb/a/fb;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lb/a/fb;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lb/a/fb;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lb/a/fb;->g:Lb/a/fi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method
