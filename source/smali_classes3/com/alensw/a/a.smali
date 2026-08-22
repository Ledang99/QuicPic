.class Lcom/alensw/a/a;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/alensw/a/a;->a:I

    iput p2, p0, Lcom/alensw/a/a;->b:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/alensw/a/a;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/alensw/a/a;

    iget v1, p0, Lcom/alensw/a/a;->a:I

    iget v2, p1, Lcom/alensw/a/a;->a:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/alensw/a/a;->b:I

    iget v2, p1, Lcom/alensw/a/a;->b:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
