.class public Lcom/alensw/b/h/m;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lcom/alensw/b/h/m;->a:I

    const/16 v0, 0x100

    sput v0, Lcom/alensw/b/h/m;->b:I

    return-void
.end method

.method public static final a(I)I
    .locals 1

    and-int/lit8 v0, p0, 0xf

    return v0
.end method

.method public static final a(III)I
    .locals 2

    sget v0, Lcom/alensw/b/h/m;->a:I

    add-int/2addr v0, p2

    shr-int v0, p0, v0

    sget v1, Lcom/alensw/b/h/m;->a:I

    add-int/2addr v1, p2

    shr-int v1, p1, v1

    shl-int/lit8 v0, v0, 0x4

    or-int/2addr v0, p2

    shl-int/lit8 v1, v1, 0x12

    or-int/2addr v0, v1

    return v0
.end method

.method public static final b(I)I
    .locals 2

    const/4 v0, 0x1

    and-int/lit8 v1, p0, 0xf

    shl-int/2addr v0, v1

    return v0
.end method

.method public static final c(I)I
    .locals 3

    and-int/lit8 v0, p0, 0xf

    shr-int/lit8 v1, p0, 0x4

    and-int/lit16 v1, v1, 0x3fff

    sget v2, Lcom/alensw/b/h/m;->a:I

    add-int/2addr v0, v2

    shl-int v0, v1, v0

    return v0
.end method

.method public static final d(I)I
    .locals 3

    and-int/lit8 v0, p0, 0xf

    shr-int/lit8 v1, p0, 0x12

    and-int/lit16 v1, v1, 0x3fff

    sget v2, Lcom/alensw/b/h/m;->a:I

    add-int/2addr v0, v2

    shl-int v0, v1, v0

    return v0
.end method

.method public static e(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/alensw/b/h/m;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/alensw/b/h/m;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/alensw/b/h/m;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
