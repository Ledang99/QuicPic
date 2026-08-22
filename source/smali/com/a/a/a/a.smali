.class public final enum Lcom/a/a/a/a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/a/a/a/a;

.field public static final enum b:Lcom/a/a/a/a;

.field public static final enum c:Lcom/a/a/a/a;

.field public static final enum d:Lcom/a/a/a/a;

.field public static final enum e:Lcom/a/a/a/a;

.field private static final synthetic i:[Lcom/a/a/a/a;


# instance fields
.field protected final f:Ljava/lang/String;

.field protected final g:Z

.field protected final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/a/a/a/a;

    const-string v1, "UTF8"

    const-string v3, "UTF-8"

    const/16 v5, 0x8

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/a/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;ZI)V

    sput-object v0, Lcom/a/a/a/a;->a:Lcom/a/a/a/a;

    new-instance v3, Lcom/a/a/a/a;

    const-string v4, "UTF16_BE"

    const-string v6, "UTF-16BE"

    const/16 v8, 0x10

    move v5, v9

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/a/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;ZI)V

    sput-object v3, Lcom/a/a/a/a;->b:Lcom/a/a/a/a;

    new-instance v3, Lcom/a/a/a/a;

    const-string v4, "UTF16_LE"

    const-string v6, "UTF-16LE"

    const/16 v8, 0x10

    move v5, v10

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/a/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;ZI)V

    sput-object v3, Lcom/a/a/a/a;->c:Lcom/a/a/a/a;

    new-instance v3, Lcom/a/a/a/a;

    const-string v4, "UTF32_BE"

    const-string v6, "UTF-32BE"

    const/16 v8, 0x20

    move v5, v11

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/a/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;ZI)V

    sput-object v3, Lcom/a/a/a/a;->d:Lcom/a/a/a/a;

    new-instance v3, Lcom/a/a/a/a;

    const-string v4, "UTF32_LE"

    const-string v6, "UTF-32LE"

    const/16 v8, 0x20

    move v5, v12

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/a/a/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;ZI)V

    sput-object v3, Lcom/a/a/a/a;->e:Lcom/a/a/a/a;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/a/a/a/a;

    sget-object v1, Lcom/a/a/a/a;->a:Lcom/a/a/a/a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/a/a/a/a;->b:Lcom/a/a/a/a;

    aput-object v1, v0, v9

    sget-object v1, Lcom/a/a/a/a;->c:Lcom/a/a/a/a;

    aput-object v1, v0, v10

    sget-object v1, Lcom/a/a/a/a;->d:Lcom/a/a/a/a;

    aput-object v1, v0, v11

    sget-object v1, Lcom/a/a/a/a;->e:Lcom/a/a/a/a;

    aput-object v1, v0, v12

    sput-object v0, Lcom/a/a/a/a;->i:[Lcom/a/a/a/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/a/a/a/a;->f:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/a/a/a/a;->g:Z

    iput p5, p0, Lcom/a/a/a/a;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/a/a;
    .locals 1

    const-class v0, Lcom/a/a/a/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/a;

    return-object v0
.end method

.method public static values()[Lcom/a/a/a/a;
    .locals 1

    sget-object v0, Lcom/a/a/a/a;->i:[Lcom/a/a/a/a;

    invoke-virtual {v0}, [Lcom/a/a/a/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/a/a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/a/a;->g:Z

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/a/a/a/a;->h:I

    return v0
.end method
