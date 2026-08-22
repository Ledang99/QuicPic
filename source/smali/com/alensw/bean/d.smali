.class final Lcom/alensw/bean/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alensw/bean/CommonFile;Lcom/alensw/bean/CommonFile;)I
    .locals 6

    const-wide/16 v4, 0x0

    iget-wide v0, p2, Lcom/alensw/bean/CommonFile;->h:J

    iget-wide v2, p1, Lcom/alensw/bean/CommonFile;->h:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    sget-object v0, Lcom/alensw/b/b/b;->a:Lcom/alensw/b/b/c;

    iget-object v1, p2, Lcom/alensw/bean/CommonFile;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/alensw/bean/CommonFile;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alensw/b/b/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    :cond_0
    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/alensw/bean/CommonFile;

    check-cast p2, Lcom/alensw/bean/CommonFile;

    invoke-virtual {p0, p1, p2}, Lcom/alensw/bean/d;->a(Lcom/alensw/bean/CommonFile;Lcom/alensw/bean/CommonFile;)I

    move-result v0

    return v0
.end method
