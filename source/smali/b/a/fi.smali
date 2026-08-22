.class public Lb/a/fi;
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
.field public a:I

.field public b:I

.field private h:B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/16 v5, 0x8

    new-instance v0, Lb/a/hs;

    const-string v1, "Traffic"

    invoke-direct {v0, v1}, Lb/a/hs;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/fi;->d:Lb/a/hs;

    new-instance v0, Lb/a/hk;

    const-string v1, "upload_traffic"

    invoke-direct {v0, v1, v5, v6}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/fi;->e:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "download_traffic"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v5, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/fi;->f:Lb/a/hk;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/fi;->g:Ljava/util/Map;

    sget-object v0, Lb/a/fi;->g:Ljava/util/Map;

    const-class v1, Lb/a/hw;

    new-instance v2, Lb/a/fl;

    invoke-direct {v2, v3}, Lb/a/fl;-><init>(Lb/a/fj;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lb/a/fi;->g:Ljava/util/Map;

    const-class v1, Lb/a/hx;

    new-instance v2, Lb/a/fn;

    invoke-direct {v2, v3}, Lb/a/fn;-><init>(Lb/a/fj;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lb/a/fo;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lb/a/fo;->a:Lb/a/fo;

    new-instance v2, Lb/a/gz;

    const-string v3, "upload_traffic"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v5}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/fo;->b:Lb/a/fo;

    new-instance v2, Lb/a/gz;

    const-string v3, "download_traffic"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v5}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lb/a/fi;->c:Ljava/util/Map;

    const-class v0, Lb/a/fi;

    sget-object v1, Lb/a/fi;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Lb/a/gz;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lb/a/fi;->h:B

    return-void
.end method

.method static synthetic d()Lb/a/hs;
    .locals 1

    sget-object v0, Lb/a/fi;->d:Lb/a/hs;

    return-object v0
.end method

.method static synthetic e()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/fi;->e:Lb/a/hk;

    return-object v0
.end method

.method static synthetic f()Lb/a/hk;
    .locals 1

    sget-object v0, Lb/a/fi;->f:Lb/a/hk;

    return-object v0
.end method


# virtual methods
.method public a(I)Lb/a/fi;
    .locals 1

    iput p1, p0, Lb/a/fi;->a:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/a/fi;->a(Z)V

    return-object p0
.end method

.method public a(Lb/a/hn;)V
    .locals 2

    sget-object v0, Lb/a/fi;->g:Ljava/util/Map;

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

    iget-byte v0, p0, Lb/a/fi;->h:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lb/a/gi;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/fi;->h:B

    return-void
.end method

.method public a()Z
    .locals 2

    iget-byte v0, p0, Lb/a/fi;->h:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb/a/gi;->a(BI)Z

    move-result v0

    return v0
.end method

.method public b(I)Lb/a/fi;
    .locals 1

    iput p1, p0, Lb/a/fi;->b:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/a/fi;->b(Z)V

    return-object p0
.end method

.method public b(Lb/a/hn;)V
    .locals 2

    sget-object v0, Lb/a/fi;->g:Ljava/util/Map;

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

    iget-byte v0, p0, Lb/a/fi;->h:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lb/a/gi;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lb/a/fi;->h:B

    return-void
.end method

.method public b()Z
    .locals 2

    iget-byte v0, p0, Lb/a/fi;->h:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lb/a/gi;->a(BI)Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Traffic("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "upload_traffic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/a/fi;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "download_traffic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/a/fi;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
