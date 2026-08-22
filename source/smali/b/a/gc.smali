.class public final enum Lb/a/gc;
.super Ljava/lang/Enum;

# interfaces
.implements Lb/a/gq;


# static fields
.field public static final enum a:Lb/a/gc;

.field public static final enum b:Lb/a/gc;

.field public static final enum c:Lb/a/gc;

.field public static final enum d:Lb/a/gc;

.field public static final enum e:Lb/a/gc;

.field public static final enum f:Lb/a/gc;

.field public static final enum g:Lb/a/gc;

.field public static final enum h:Lb/a/gc;

.field public static final enum i:Lb/a/gc;

.field public static final enum j:Lb/a/gc;

.field private static final k:Ljava/util/Map;

.field private static final synthetic n:[Lb/a/gc;


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

    new-instance v0, Lb/a/gc;

    const-string v1, "VERSION"

    const/4 v2, 0x0

    const-string v3, "version"

    invoke-direct {v0, v1, v2, v5, v3}, Lb/a/gc;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/gc;->a:Lb/a/gc;

    new-instance v0, Lb/a/gc;

    const-string v1, "ADDRESS"

    const-string v2, "address"

    invoke-direct {v0, v1, v5, v6, v2}, Lb/a/gc;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/gc;->b:Lb/a/gc;

    new-instance v0, Lb/a/gc;

    const-string v1, "SIGNATURE"

    const-string v2, "signature"

    invoke-direct {v0, v1, v6, v7, v2}, Lb/a/gc;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/gc;->c:Lb/a/gc;

    new-instance v0, Lb/a/gc;

    const-string v1, "SERIAL_NUM"

    const-string v2, "serial_num"

    invoke-direct {v0, v1, v7, v8, v2}, Lb/a/gc;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/gc;->d:Lb/a/gc;

    new-instance v0, Lb/a/gc;

    const-string v1, "TS_SECS"

    const-string v2, "ts_secs"

    invoke-direct {v0, v1, v8, v9, v2}, Lb/a/gc;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/gc;->e:Lb/a/gc;

    new-instance v0, Lb/a/gc;

    const-string v1, "LENGTH"

    const/4 v2, 0x6

    const-string v3, "length"

    invoke-direct {v0, v1, v9, v2, v3}, Lb/a/gc;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/gc;->f:Lb/a/gc;

    new-instance v0, Lb/a/gc;

    const-string v1, "ENTITY"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "entity"

    invoke-direct {v0, v1, v2, v3, v4}, Lb/a/gc;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/gc;->g:Lb/a/gc;

    new-instance v0, Lb/a/gc;

    const-string v1, "GUID"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "guid"

    invoke-direct {v0, v1, v2, v3, v4}, Lb/a/gc;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/gc;->h:Lb/a/gc;

    new-instance v0, Lb/a/gc;

    const-string v1, "CHECKSUM"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "checksum"

    invoke-direct {v0, v1, v2, v3, v4}, Lb/a/gc;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/gc;->i:Lb/a/gc;

    new-instance v0, Lb/a/gc;

    const-string v1, "CODEX"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string v4, "codex"

    invoke-direct {v0, v1, v2, v3, v4}, Lb/a/gc;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lb/a/gc;->j:Lb/a/gc;

    const/16 v0, 0xa

    new-array v0, v0, [Lb/a/gc;

    const/4 v1, 0x0

    sget-object v2, Lb/a/gc;->a:Lb/a/gc;

    aput-object v2, v0, v1

    sget-object v1, Lb/a/gc;->b:Lb/a/gc;

    aput-object v1, v0, v5

    sget-object v1, Lb/a/gc;->c:Lb/a/gc;

    aput-object v1, v0, v6

    sget-object v1, Lb/a/gc;->d:Lb/a/gc;

    aput-object v1, v0, v7

    sget-object v1, Lb/a/gc;->e:Lb/a/gc;

    aput-object v1, v0, v8

    sget-object v1, Lb/a/gc;->f:Lb/a/gc;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lb/a/gc;->g:Lb/a/gc;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lb/a/gc;->h:Lb/a/gc;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lb/a/gc;->i:Lb/a/gc;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lb/a/gc;->j:Lb/a/gc;

    aput-object v2, v0, v1

    sput-object v0, Lb/a/gc;->n:[Lb/a/gc;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/gc;->k:Ljava/util/Map;

    const-class v0, Lb/a/gc;

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

    check-cast v0, Lb/a/gc;

    sget-object v2, Lb/a/gc;->k:Ljava/util/Map;

    invoke-virtual {v0}, Lb/a/gc;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short p3, p0, Lb/a/gc;->l:S

    iput-object p4, p0, Lb/a/gc;->m:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/gc;
    .locals 1

    const-class v0, Lb/a/gc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/a/gc;

    return-object v0
.end method

.method public static values()[Lb/a/gc;
    .locals 1

    sget-object v0, Lb/a/gc;->n:[Lb/a/gc;

    invoke-virtual {v0}, [Lb/a/gc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/gc;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    iget-short v0, p0, Lb/a/gc;->l:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/gc;->m:Ljava/lang/String;

    return-object v0
.end method
