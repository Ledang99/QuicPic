.class Lcom/alensw/transfer/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/a/t;

.field final synthetic b:Lcom/alensw/transfer/ae;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/ae;Lcom/alensw/transfer/a/t;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/ai;->b:Lcom/alensw/transfer/ae;

    iput-object p2, p0, Lcom/alensw/transfer/ai;->a:Lcom/alensw/transfer/a/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/transfer/ai;->b:Lcom/alensw/transfer/ae;

    iget-object v0, v0, Lcom/alensw/transfer/ae;->a:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->g(Lcom/alensw/transfer/ac;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/transfer/ai;->a:Lcom/alensw/transfer/a/t;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/transfer/ai;->b:Lcom/alensw/transfer/ae;

    iget-object v0, v0, Lcom/alensw/transfer/ae;->a:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->h(Lcom/alensw/transfer/ac;)Lcom/alensw/transfer/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/transfer/ax;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
