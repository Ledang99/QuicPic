.class Lcom/alensw/b/a/i;
.super Ljava/util/LinkedHashMap;


# instance fields
.field final synthetic a:Lcom/alensw/b/a/h;


# direct methods
.method constructor <init>(Lcom/alensw/b/a/h;IFZ)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/b/a/i;->a:Lcom/alensw/b/a/h;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/alensw/b/a/i;->size()I

    move-result v0

    iget-object v1, p0, Lcom/alensw/b/a/i;->a:Lcom/alensw/b/a/h;

    invoke-static {v1}, Lcom/alensw/b/a/h;->a(Lcom/alensw/b/a/h;)I

    move-result v1

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/alensw/b/a/i;->a:Lcom/alensw/b/a/h;

    invoke-virtual {v2, v1}, Lcom/alensw/b/a/h;->b(Ljava/lang/Object;)V

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
