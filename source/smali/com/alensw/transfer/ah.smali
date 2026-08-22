.class Lcom/alensw/transfer/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/a/t;

.field final synthetic b:Lcom/alensw/transfer/ae;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/ae;Lcom/alensw/transfer/a/t;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/ah;->b:Lcom/alensw/transfer/ae;

    iput-object p2, p0, Lcom/alensw/transfer/ah;->a:Lcom/alensw/transfer/a/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/transfer/ah;->b:Lcom/alensw/transfer/ae;

    iget-object v0, v0, Lcom/alensw/transfer/ae;->a:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->g(Lcom/alensw/transfer/ac;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/transfer/ah;->a:Lcom/alensw/transfer/a/t;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alensw/transfer/ah;->b:Lcom/alensw/transfer/ae;

    iget-object v0, v0, Lcom/alensw/transfer/ae;->a:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->i(Lcom/alensw/transfer/ac;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/transfer/ah;->a:Lcom/alensw/transfer/a/t;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alensw/transfer/ah;->b:Lcom/alensw/transfer/ae;

    iget-object v0, v0, Lcom/alensw/transfer/ae;->a:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->g(Lcom/alensw/transfer/ac;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/transfer/ah;->b:Lcom/alensw/transfer/ae;

    iget-object v1, v1, Lcom/alensw/transfer/ae;->a:Lcom/alensw/transfer/ac;

    invoke-static {v1}, Lcom/alensw/transfer/ac;->j(Lcom/alensw/transfer/ac;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alensw/b/l/b;->a(Ljava/util/ArrayList;Ljava/util/Comparator;)Z

    iget-object v0, p0, Lcom/alensw/transfer/ah;->b:Lcom/alensw/transfer/ae;

    iget-object v0, v0, Lcom/alensw/transfer/ae;->a:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->h(Lcom/alensw/transfer/ac;)Lcom/alensw/transfer/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/transfer/ax;->notifyDataSetChanged()V

    return-void
.end method
