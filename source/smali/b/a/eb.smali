.class public final enum Lb/a/eb;
.super Ljava/lang/Enum;

# interfaces
.implements Lb/a/gq;


# static fields
.field public static final enum a:Lb/a/eb;

.field public static final enum b:Lb/a/eb;

.field public static final enum c:Lb/a/eb;

.field public static final enum d:Lb/a/eb;

.field public static final enum e:Lb/a/eb;

.field public static final enum f:Lb/a/eb;

.field public static final enum g:Lb/a/eb;

.field public static final enum h:Lb/a/eb;

.field public static final enum i:Lb/a/eb;

.field public static final enum j:Lb/a/eb;

.field private static final k:Ljava/util/Map;

.field private static final synthetic n:[Lb/a/eb;


# instance fields
.field private final l:S

.field private final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    new-instance v0, Lb/a/eb;

    const-string v1, "TIME_ZONE"

    const/4 v2, 0x0

    const-string v3, "time_zone"

    invoke-direct {v0, v1, v2, v5, v3}, Lb/a/eb;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/eb;->a:Lb/a/eb;

    new-instance v0, Lb/a/eb;

    const-string v1, "LANGUAGE"

    const-string v2, "language"

    invoke-direct {v0, v1, v5, v6, v2}, Lb/a/eb;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/eb;->b:Lb/a/eb;

    new-instance v0, Lb/a/eb;

    const-string v1, "COUNTRY"

    const-string v2, "country"

    invoke-direct {v0, v1, v6, v7, v2}, Lb/a/eb;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/eb;->c:Lb/a/eb;

    new-instance v0, Lb/a/eb;

    const-string v1, "LATITUDE"

    const-string v2, "latitude"

    invoke-direct {v0, v1, v7, v8, v2}, Lb/a/eb;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/eb;->d:Lb/a/eb;

    new-instance v0, Lb/a/eb;

    const-string v1, "LONGITUDE"

    const-string v2, "longitude"

    invoke-direct {v0, v1, v8, v9, v2}, Lb/a/eb;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/eb;->e:Lb/a/eb;

    new-instance v0, Lb/a/eb;

    const-string v1, "CARRIER"

    const/4 v2, 0x6

    const-string v3, "carrier"

    invoke-direct {v0, v1, v9, v2, v3}, Lb/a/eb;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/eb;->f:Lb/a/eb;

    new-instance v0, Lb/a/eb;

    const-string v1, "LATENCY"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "latency"

    invoke-direct {v0, v1, v2, v3, v4}, Lb/a/eb;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/eb;->g:Lb/a/eb;

    new-instance v0, Lb/a/eb;

    const-string v1, "DISPLAY_NAME"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "display_name"

    invoke-direct {v0, v1, v2, v3, v4}, Lb/a/eb;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/eb;->h:Lb/a/eb;

    new-instance v0, Lb/a/eb;

    const-string v1, "ACCESS_TYPE"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "access_type"

    invoke-direct {v0, v1, v2, v3, v4}, Lb/a/eb;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/eb;->i:Lb/a/eb;

    new-instance v0, Lb/a/eb;

    const-string v1, "ACCESS_SUBTYPE"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string v4, "access_subtype"

    invoke-direct {v0, v1, v2, v3, v4}, Lb/a/eb;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/eb;->j:Lb/a/eb;

    const/16 v0, 0xa

    new-array v0, v0, [Lb/a/eb;

    const/4 v1, 0x0

    sget-object v2, Lb/a/eb;->a:Lb/a/eb;

    aput-object v2, v0, v1

    sget-object v1, Lb/a/eb;->b:Lb/a/eb;

    aput-object v1, v0, v5

    sget-object v1, Lb/a/eb;->c:Lb/a/eb;

    aput-object v1, v0, v6

    sget-object v1, Lb/a/eb;->d:Lb/a/eb;

    aput-object v1, v0, v7

    sget-object v1, Lb/a/eb;->e:Lb/a/eb;

    aput-object v1, v0, v8

    sget-object v1, Lb/a/eb;->f:Lb/a/eb;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lb/a/eb;->g:Lb/a/eb;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lb/a/eb;->h:Lb/a/eb;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lb/a/eb;->i:Lb/a/eb;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lb/a/eb;->j:Lb/a/eb;

    aput-object v2, v0, v1

    sput-object v0, Lb/a/eb;->n:[Lb/a/eb;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/eb;->k:Ljava/util/Map;

    const-class v0, Lb/a/eb;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/eb;

    sget-object v2, Lb/a/eb;->k:Ljava/util/Map;

    invoke-virtual {v0}, Lb/a/eb;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short p3, p0, Lb/a/eb;->l:S

    iput-object p4, p0, Lb/a/eb;->m:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/eb;
    .locals 1

    const-class v0, Lb/a/eb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/a/eb;

    return-object v0
.end method

.method public static values()[Lb/a/eb;
    .locals 1

    sget-object v0, Lb/a/eb;->n:[Lb/a/eb;

    invoke-virtual {v0}, [Lb/a/eb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/eb;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    iget-short v0, p0, Lb/a/eb;->l:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/eb;->m:Ljava/lang/String;

    return-object v0
.end method
