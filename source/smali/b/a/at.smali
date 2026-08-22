.class public final enum Lb/a/at;
.super Ljava/lang/Enum;

# interfaces
.implements Lb/a/gq;


# static fields
.field public static final enum a:Lb/a/at;

.field private static final b:Ljava/util/Map;

.field private static final synthetic e:[Lb/a/at;


# instance fields
.field private final c:S

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lb/a/at;

    const-string v1, "LATENT"

    const-string v2, "latent"

    invoke-direct {v0, v1, v3, v4, v2}, Lb/a/at;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/at;->a:Lb/a/at;

    new-array v0, v4, [Lb/a/at;

    sget-object v1, Lb/a/at;->a:Lb/a/at;

    aput-object v1, v0, v3

    sput-object v0, Lb/a/at;->e:[Lb/a/at;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/at;->b:Ljava/util/Map;

    const-class v0, Lb/a/at;

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

    check-cast v0, Lb/a/at;

    sget-object v2, Lb/a/at;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lb/a/at;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short p3, p0, Lb/a/at;->c:S

    iput-object p4, p0, Lb/a/at;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/at;
    .locals 1

    const-class v0, Lb/a/at;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/a/at;

    return-object v0
.end method

.method public static values()[Lb/a/at;
    .locals 1

    sget-object v0, Lb/a/at;->e:[Lb/a/at;

    invoke-virtual {v0}, [Lb/a/at;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/at;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    iget-short v0, p0, Lb/a/at;->c:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/at;->d:Ljava/lang/String;

    return-object v0
.end method
