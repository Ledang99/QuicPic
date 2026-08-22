.class final Lcom/alensw/a/g;
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
.method public a(Lcom/alensw/a/d;Lcom/alensw/a/d;)I
    .locals 3

    sget-object v0, Lcom/alensw/b/b/b;->a:Lcom/alensw/b/b/c;

    iget-object v1, p2, Lcom/alensw/a/d;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/alensw/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alensw/b/b/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/alensw/a/d;

    check-cast p2, Lcom/alensw/a/d;

    invoke-virtual {p0, p1, p2}, Lcom/alensw/a/g;->a(Lcom/alensw/a/d;Lcom/alensw/a/d;)I

    move-result v0

    return v0
.end method
