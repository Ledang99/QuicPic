.class final Lcom/alensw/bean/b;
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
    .locals 5

    const/16 v4, 0x44

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-char v0, p1, Lcom/alensw/bean/CommonFile;->b:C

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    iget-char v3, p2, Lcom/alensw/bean/CommonFile;->b:C

    if-ne v3, v4, :cond_1

    :goto_1
    if-eq v0, v1, :cond_2

    sub-int v0, v1, v0

    :goto_2
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/alensw/b/b/b;->a:Lcom/alensw/b/b/c;

    iget-object v1, p2, Lcom/alensw/bean/CommonFile;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/alensw/bean/CommonFile;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alensw/b/b/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_2
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/alensw/bean/CommonFile;

    check-cast p2, Lcom/alensw/bean/CommonFile;

    invoke-virtual {p0, p1, p2}, Lcom/alensw/bean/b;->a(Lcom/alensw/bean/CommonFile;Lcom/alensw/bean/CommonFile;)I

    move-result v0

    return v0
.end method
