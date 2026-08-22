.class Lcom/alensw/transfer/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/ac;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/al;->a:Lcom/alensw/transfer/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alensw/transfer/a/t;Lcom/alensw/transfer/a/t;)I
    .locals 4

    invoke-virtual {p2}, Lcom/alensw/transfer/a/t;->d()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/alensw/transfer/a/t;->d()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/alensw/transfer/a/t;

    check-cast p2, Lcom/alensw/transfer/a/t;

    invoke-virtual {p0, p1, p2}, Lcom/alensw/transfer/al;->a(Lcom/alensw/transfer/a/t;Lcom/alensw/transfer/a/t;)I

    move-result v0

    return v0
.end method
