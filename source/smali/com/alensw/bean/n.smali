.class Lcom/alensw/bean/n;
.super Ljava/lang/Object;


# instance fields
.field a:J

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/alensw/bean/n;->a:J

    if-eqz p3, :cond_0

    :goto_0
    iput-object p3, p0, Lcom/alensw/bean/n;->b:Ljava/lang/String;

    return-void

    :cond_0
    const-string p3, ""

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/alensw/bean/n;

    iget-wide v2, p0, Lcom/alensw/bean/n;->a:J

    iget-wide v4, p1, Lcom/alensw/bean/n;->a:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alensw/bean/n;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/alensw/bean/n;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/alensw/bean/n;->a:J

    long-to-int v0, v0

    iget-object v1, p0, Lcom/alensw/bean/n;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
