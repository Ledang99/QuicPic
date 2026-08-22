.class public abstract La/b/m;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I[BI)V
    .locals 2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void
.end method


# virtual methods
.method abstract a([BI)I
.end method

.method public b([BI)I
    .locals 1

    add-int/lit8 v0, p2, 0x4

    invoke-virtual {p0, p1, v0}, La/b/m;->a([BI)I

    move-result v0

    iput v0, p0, La/b/m;->b:I

    invoke-virtual {p0, p1, p2}, La/b/m;->c([BI)I

    iget v0, p0, La/b/m;->b:I

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method c([BI)I
    .locals 3

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, La/b/m;->a:I

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    iget v1, p0, La/b/m;->b:I

    const v2, 0xffff

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    aput-byte v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, La/b/m;->b:I

    invoke-static {v1, p1, v0}, La/b/m;->a(I[BI)V

    const/4 v0, 0x4

    return v0
.end method
