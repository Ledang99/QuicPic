.class public final enum Lcom/a/a/a/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/a/a/a/c;

.field public static final enum b:Lcom/a/a/a/c;

.field private static final synthetic d:[Lcom/a/a/a/c;


# instance fields
.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/a/a/a/c;

    const-string v1, "INTERN_FIELD_NAMES"

    invoke-direct {v0, v1, v3, v2}, Lcom/a/a/a/c;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/a/a/a/c;->a:Lcom/a/a/a/c;

    new-instance v0, Lcom/a/a/a/c;

    const-string v1, "CANONICALIZE_FIELD_NAMES"

    invoke-direct {v0, v1, v2, v2}, Lcom/a/a/a/c;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/a/a/a/c;->b:Lcom/a/a/a/c;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/a/a/a/c;

    sget-object v1, Lcom/a/a/a/c;->a:Lcom/a/a/a/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/a/a/c;->b:Lcom/a/a/a/c;

    aput-object v1, v0, v2

    sput-object v0, Lcom/a/a/a/c;->d:[Lcom/a/a/a/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/a/a/a/c;->c:Z

    return-void
.end method

.method public static a()I
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/a/a/a/c;->values()[Lcom/a/a/a/c;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/a/a/a/c;->b()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/a/a/a/c;->c()I

    move-result v4

    or-int/2addr v0, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/a/c;
    .locals 1

    const-class v0, Lcom/a/a/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/c;

    return-object v0
.end method

.method public static values()[Lcom/a/a/a/c;
    .locals 1

    sget-object v0, Lcom/a/a/a/c;->d:[Lcom/a/a/a/c;

    invoke-virtual {v0}, [Lcom/a/a/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/a/c;

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/a/c;->c:Z

    return v0
.end method

.method public c()I
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/a/a/a/c;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    return v0
.end method
