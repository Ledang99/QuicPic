.class Lcom/alensw/cloud/a/cw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/b/e/e;


# instance fields
.field private final a:Lcom/alensw/b/e/e;

.field private final b:J

.field private c:J


# direct methods
.method public constructor <init>(Lcom/alensw/b/e/e;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alensw/cloud/a/cw;->a:Lcom/alensw/b/e/e;

    iput-wide p2, p0, Lcom/alensw/cloud/a/cw;->b:J

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 3

    iget-wide v0, p0, Lcom/alensw/cloud/a/cw;->c:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alensw/cloud/a/cw;->c:J

    return-void
.end method

.method public a(JJ)V
    .locals 7

    iget-object v0, p0, Lcom/alensw/cloud/a/cw;->a:Lcom/alensw/b/e/e;

    iget-wide v2, p0, Lcom/alensw/cloud/a/cw;->c:J

    add-long/2addr v2, p1

    iget-wide v4, p0, Lcom/alensw/cloud/a/cw;->b:J

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/alensw/b/e/e;->a(JJ)V

    return-void
.end method

.method public b_()Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/a/cw;->a:Lcom/alensw/b/e/e;

    invoke-interface {v0}, Lcom/alensw/b/e/e;->b_()Z

    move-result v0

    return v0
.end method
