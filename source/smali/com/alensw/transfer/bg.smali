.class Lcom/alensw/transfer/bg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/b/e/e;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/bf;

.field private b:J


# direct methods
.method constructor <init>(Lcom/alensw/transfer/bf;)V
    .locals 2

    iput-object p1, p0, Lcom/alensw/transfer/bg;->a:Lcom/alensw/transfer/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alensw/transfer/bg;->b:J

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 5

    iget-object v0, p0, Lcom/alensw/transfer/bg;->a:Lcom/alensw/transfer/bf;

    invoke-static {v0}, Lcom/alensw/transfer/bf;->a(Lcom/alensw/transfer/bf;)Lcom/alensw/transfer/d;

    move-result-object v0

    iget-wide v2, p0, Lcom/alensw/transfer/bg;->b:J

    sub-long v2, p1, v2

    invoke-virtual {v0, v2, v3}, Lcom/alensw/transfer/d;->c(J)J

    iget-object v0, p0, Lcom/alensw/transfer/bg;->a:Lcom/alensw/transfer/bf;

    invoke-static {v0}, Lcom/alensw/transfer/bf;->a(Lcom/alensw/transfer/bf;)Lcom/alensw/transfer/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/transfer/d;->l()V

    iput-wide p1, p0, Lcom/alensw/transfer/bg;->b:J

    return-void
.end method

.method public b_()Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/bg;->a:Lcom/alensw/transfer/bf;

    invoke-static {v0}, Lcom/alensw/transfer/bf;->a(Lcom/alensw/transfer/bf;)Lcom/alensw/transfer/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/transfer/d;->n()Z

    move-result v0

    return v0
.end method
