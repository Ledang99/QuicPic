.class Lcom/alensw/transfer/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/ae;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/ag;->a:Lcom/alensw/transfer/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/ag;->a:Lcom/alensw/transfer/ae;

    iget-object v0, v0, Lcom/alensw/transfer/ae;->a:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->g(Lcom/alensw/transfer/ac;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/alensw/transfer/ag;->a:Lcom/alensw/transfer/ae;

    iget-object v0, v0, Lcom/alensw/transfer/ae;->a:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->h(Lcom/alensw/transfer/ac;)Lcom/alensw/transfer/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/transfer/ax;->notifyDataSetChanged()V

    return-void
.end method
