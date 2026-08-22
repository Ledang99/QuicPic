.class final Lcom/alensw/a/ac;
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
.method public a(Lcom/alensw/a/e;Lcom/alensw/a/e;)I
    .locals 1

    invoke-static {p1, p2}, Lcom/alensw/a/x;->e(Lcom/alensw/a/e;Lcom/alensw/a/e;)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Lcom/alensw/a/x;->a(Lcom/alensw/a/e;Lcom/alensw/a/e;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/alensw/a/e;

    check-cast p2, Lcom/alensw/a/e;

    invoke-virtual {p0, p1, p2}, Lcom/alensw/a/ac;->a(Lcom/alensw/a/e;Lcom/alensw/a/e;)I

    move-result v0

    return v0
.end method
