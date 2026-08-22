.class public final enum Lb/a/fh;
.super Ljava/lang/Enum;

# interfaces
.implements Lb/a/gq;


# static fields
.field public static final enum a:Lb/a/fh;

.field public static final enum b:Lb/a/fh;

.field public static final enum c:Lb/a/fh;

.field public static final enum d:Lb/a/fh;

.field public static final enum e:Lb/a/fh;

.field public static final enum f:Lb/a/fh;

.field public static final enum g:Lb/a/fh;

.field private static final h:Ljava/util/Map;

.field private static final synthetic k:[Lb/a/fh;


# instance fields
.field private final i:S

.field private final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    new-instance v0, Lb/a/fh;

    const-string v1, "ID"

    const/4 v2, 0x0

    const-string v3, "id"

    invoke-direct {v0, v1, v2, v5, v3}, Lb/a/fh;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/fh;->a:Lb/a/fh;

    new-instance v0, Lb/a/fh;

    const-string v1, "START_TIME"

    const-string v2, "start_time"

    invoke-direct {v0, v1, v5, v6, v2}, Lb/a/fh;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/fh;->b:Lb/a/fh;

    new-instance v0, Lb/a/fh;

    const-string v1, "END_TIME"

    const-string v2, "end_time"

    invoke-direct {v0, v1, v6, v7, v2}, Lb/a/fh;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/fh;->c:Lb/a/fh;

    new-instance v0, Lb/a/fh;

    const-string v1, "DURATION"

    const-string v2, "duration"

    invoke-direct {v0, v1, v7, v8, v2}, Lb/a/fh;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/fh;->d:Lb/a/fh;

    new-instance v0, Lb/a/fh;

    const-string v1, "PAGES"

    const-string v2, "pages"

    invoke-direct {v0, v1, v8, v9, v2}, Lb/a/fh;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/fh;->e:Lb/a/fh;

    new-instance v0, Lb/a/fh;

    const-string v1, "LOCATIONS"

    const/4 v2, 0x6

    const-string v3, "locations"

    invoke-direct {v0, v1, v9, v2, v3}, Lb/a/fh;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/fh;->f:Lb/a/fh;

    new-instance v0, Lb/a/fh;

    const-string v1, "TRAFFIC"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "traffic"

    invoke-direct {v0, v1, v2, v3, v4}, Lb/a/fh;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/fh;->g:Lb/a/fh;

    const/4 v0, 0x7

    new-array v0, v0, [Lb/a/fh;

    const/4 v1, 0x0

    sget-object v2, Lb/a/fh;->a:Lb/a/fh;

    aput-object v2, v0, v1

    sget-object v1, Lb/a/fh;->b:Lb/a/fh;

    aput-object v1, v0, v5

    sget-object v1, Lb/a/fh;->c:Lb/a/fh;

    aput-object v1, v0, v6

    sget-object v1, Lb/a/fh;->d:Lb/a/fh;

    aput-object v1, v0, v7

    sget-object v1, Lb/a/fh;->e:Lb/a/fh;

    aput-object v1, v0, v8

    sget-object v1, Lb/a/fh;->f:Lb/a/fh;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lb/a/fh;->g:Lb/a/fh;

    aput-object v2, v0, v1

    sput-object v0, Lb/a/fh;->k:[Lb/a/fh;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/fh;->h:Ljava/util/Map;

    const-class v0, Lb/a/fh;

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

    check-cast v0, Lb/a/fh;

    sget-object v2, Lb/a/fh;->h:Ljava/util/Map;

    invoke-virtual {v0}, Lb/a/fh;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short p3, p0, Lb/a/fh;->i:S

    iput-object p4, p0, Lb/a/fh;->j:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/fh;
    .locals 1

    const-class v0, Lb/a/fh;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/a/fh;

    return-object v0
.end method

.method public static values()[Lb/a/fh;
    .locals 1

    sget-object v0, Lb/a/fh;->k:[Lb/a/fh;

    invoke-virtual {v0}, [Lb/a/fh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/fh;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    iget-short v0, p0, Lb/a/fh;->i:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/fh;->j:Ljava/lang/String;

    return-object v0
.end method
