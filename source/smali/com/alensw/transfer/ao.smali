.class Lcom/alensw/transfer/ao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/an;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/an;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/ao;->a:Lcom/alensw/transfer/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/ao;->a:Lcom/alensw/transfer/an;

    iget-object v0, v0, Lcom/alensw/transfer/an;->a:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->o(Lcom/alensw/transfer/ac;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/transfer/ao;->a:Lcom/alensw/transfer/an;

    iget-object v0, v0, Lcom/alensw/transfer/an;->a:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->p(Lcom/alensw/transfer/ac;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/transfer/ao;->a:Lcom/alensw/transfer/an;

    iget-object v0, v0, Lcom/alensw/transfer/an;->a:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->q(Lcom/alensw/transfer/ac;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/transfer/ao;->a:Lcom/alensw/transfer/an;

    iget-object v0, v0, Lcom/alensw/transfer/an;->a:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->r(Lcom/alensw/transfer/ac;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/transfer/ao;->a:Lcom/alensw/transfer/an;

    iget-object v0, v0, Lcom/alensw/transfer/an;->a:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->s(Lcom/alensw/transfer/ac;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/transfer/ao;->a:Lcom/alensw/transfer/an;

    iget-object v0, v0, Lcom/alensw/transfer/an;->a:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->c(Lcom/alensw/transfer/ac;)V

    goto :goto_0
.end method
