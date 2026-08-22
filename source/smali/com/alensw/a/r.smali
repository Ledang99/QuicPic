.class Lcom/alensw/a/r;
.super Lcom/alensw/b/c/d;


# instance fields
.field final synthetic a:Lcom/alensw/a/q;


# direct methods
.method constructor <init>(Lcom/alensw/a/q;I)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/a/r;->a:Lcom/alensw/a/q;

    invoke-direct {p0, p2}, Lcom/alensw/b/c/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/DataInputStream;)Ljava/lang/Integer;
    .locals 3

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_1

    and-int/lit16 v1, v0, 0xf0

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v0, v0, 0xf

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    const/4 v0, 0x5

    :cond_0
    :goto_0
    invoke-static {v1, v0}, Lcom/alensw/a/e;->a(II)I

    move-result v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x6

    goto :goto_0
.end method

.method protected synthetic b(Ljava/io/DataInputStream;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alensw/a/r;->a(Ljava/io/DataInputStream;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
