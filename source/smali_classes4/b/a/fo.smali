.class public final enum Lb/a/fo;
.super Ljava/lang/Enum;

# interfaces
.implements Lb/a/gq;


# static fields
.field public static final enum a:Lb/a/fo;

.field public static final enum b:Lb/a/fo;

.field private static final c:Ljava/util/Map;

.field private static final synthetic f:[Lb/a/fo;


# instance fields
.field private final d:S

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Lb/a/fo;

    const-string v1, "UPLOAD_TRAFFIC"

    const-string v2, "upload_traffic"

    invoke-direct {v0, v1, v4, v3, v2}, Lb/a/fo;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/fo;->a:Lb/a/fo;

    new-instance v0, Lb/a/fo;

    const-string v1, "DOWNLOAD_TRAFFIC"

    const-string v2, "download_traffic"

    invoke-direct {v0, v1, v3, v5, v2}, Lb/a/fo;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/fo;->b:Lb/a/fo;

    new-array v0, v5, [Lb/a/fo;

    sget-object v1, Lb/a/fo;->a:Lb/a/fo;

    aput-object v1, v0, v4

    sget-object v1, Lb/a/fo;->b:Lb/a/fo;

    aput-object v1, v0, v3

    sput-object v0, Lb/a/fo;->f:[Lb/a/fo;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/fo;->c:Ljava/util/Map;

    const-class v0, Lb/a/fo;

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

    check-cast v0, Lb/a/fo;

    sget-object v2, Lb/a/fo;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lb/a/fo;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short p3, p0, Lb/a/fo;->d:S

    iput-object p4, p0, Lb/a/fo;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/fo;
    .locals 1

    const-class v0, Lb/a/fo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/a/fo;

    return-object v0
.end method

.method public static values()[Lb/a/fo;
    .locals 1

    sget-object v0, Lb/a/fo;->f:[Lb/a/fo;

    invoke-virtual {v0}, [Lb/a/fo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/fo;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    iget-short v0, p0, Lb/a/fo;->d:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/fo;->e:Ljava/lang/String;

    return-object v0
.end method
