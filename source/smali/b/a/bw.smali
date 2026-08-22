.class public final enum Lb/a/bw;
.super Ljava/lang/Enum;

# interfaces
.implements Lb/a/gq;


# static fields
.field public static final enum a:Lb/a/bw;

.field public static final enum b:Lb/a/bw;

.field public static final enum c:Lb/a/bw;

.field public static final enum d:Lb/a/bw;

.field private static final e:Ljava/util/Map;

.field private static final synthetic h:[Lb/a/bw;


# instance fields
.field private final f:S

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lb/a/bw;

    const-string v1, "DOMAIN"

    const-string v2, "domain"

    invoke-direct {v0, v1, v6, v3, v2}, Lb/a/bw;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/bw;->a:Lb/a/bw;

    new-instance v0, Lb/a/bw;

    const-string v1, "OLD_ID"

    const-string v2, "old_id"

    invoke-direct {v0, v1, v3, v4, v2}, Lb/a/bw;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/bw;->b:Lb/a/bw;

    new-instance v0, Lb/a/bw;

    const-string v1, "NEW_ID"

    const-string v2, "new_id"

    invoke-direct {v0, v1, v4, v5, v2}, Lb/a/bw;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/bw;->c:Lb/a/bw;

    new-instance v0, Lb/a/bw;

    const-string v1, "TS"

    const-string v2, "ts"

    invoke-direct {v0, v1, v5, v7, v2}, Lb/a/bw;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/bw;->d:Lb/a/bw;

    new-array v0, v7, [Lb/a/bw;

    sget-object v1, Lb/a/bw;->a:Lb/a/bw;

    aput-object v1, v0, v6

    sget-object v1, Lb/a/bw;->b:Lb/a/bw;

    aput-object v1, v0, v3

    sget-object v1, Lb/a/bw;->c:Lb/a/bw;

    aput-object v1, v0, v4

    sget-object v1, Lb/a/bw;->d:Lb/a/bw;

    aput-object v1, v0, v5

    sput-object v0, Lb/a/bw;->h:[Lb/a/bw;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/bw;->e:Ljava/util/Map;

    const-class v0, Lb/a/bw;

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

    check-cast v0, Lb/a/bw;

    sget-object v2, Lb/a/bw;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lb/a/bw;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short p3, p0, Lb/a/bw;->f:S

    iput-object p4, p0, Lb/a/bw;->g:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/bw;
    .locals 1

    const-class v0, Lb/a/bw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/a/bw;

    return-object v0
.end method

.method public static values()[Lb/a/bw;
    .locals 1

    sget-object v0, Lb/a/bw;->h:[Lb/a/bw;

    invoke-virtual {v0}, [Lb/a/bw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/bw;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    iget-short v0, p0, Lb/a/bw;->f:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/bw;->g:Ljava/lang/String;

    return-object v0
.end method
