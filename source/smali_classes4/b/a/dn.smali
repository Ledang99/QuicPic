.class public final enum Lb/a/dn;
.super Ljava/lang/Enum;

# interfaces
.implements Lb/a/gq;


# static fields
.field public static final enum a:Lb/a/dn;

.field public static final enum b:Lb/a/dn;

.field private static final c:Ljava/util/Map;

.field private static final synthetic f:[Lb/a/dn;


# instance fields
.field private final d:S

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Lb/a/dn;

    const-string v1, "LATENCY"

    const-string v2, "latency"

    invoke-direct {v0, v1, v4, v3, v2}, Lb/a/dn;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/dn;->a:Lb/a/dn;

    new-instance v0, Lb/a/dn;

    const-string v1, "INTERVAL"

    const-string v2, "interval"

    invoke-direct {v0, v1, v3, v5, v2}, Lb/a/dn;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/dn;->b:Lb/a/dn;

    new-array v0, v5, [Lb/a/dn;

    sget-object v1, Lb/a/dn;->a:Lb/a/dn;

    aput-object v1, v0, v4

    sget-object v1, Lb/a/dn;->b:Lb/a/dn;

    aput-object v1, v0, v3

    sput-object v0, Lb/a/dn;->f:[Lb/a/dn;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/dn;->c:Ljava/util/Map;

    const-class v0, Lb/a/dn;

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

    check-cast v0, Lb/a/dn;

    sget-object v2, Lb/a/dn;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lb/a/dn;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short p3, p0, Lb/a/dn;->d:S

    iput-object p4, p0, Lb/a/dn;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/dn;
    .locals 1

    const-class v0, Lb/a/dn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/a/dn;

    return-object v0
.end method

.method public static values()[Lb/a/dn;
    .locals 1

    sget-object v0, Lb/a/dn;->f:[Lb/a/dn;

    invoke-virtual {v0}, [Lb/a/dn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/dn;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    iget-short v0, p0, Lb/a/dn;->d:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/dn;->e:Ljava/lang/String;

    return-object v0
.end method
