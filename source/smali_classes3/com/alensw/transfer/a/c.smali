.class Lcom/alensw/transfer/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/a/a;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/a/c;->a:Lcom/alensw/transfer/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/alensw/transfer/a/c;->a:Lcom/alensw/transfer/a/a;

    invoke-static {v0}, Lcom/alensw/transfer/a/a;->g(Lcom/alensw/transfer/a/a;)V

    iget-object v0, p0, Lcom/alensw/transfer/a/c;->a:Lcom/alensw/transfer/a/a;

    const-wide/16 v2, 0xa

    invoke-static {v0, v2, v3}, Lcom/alensw/transfer/a/a;->a(Lcom/alensw/transfer/a/a;J)V

    iget-object v0, p0, Lcom/alensw/transfer/a/c;->a:Lcom/alensw/transfer/a/a;

    invoke-static {v0}, Lcom/alensw/transfer/a/a;->h(Lcom/alensw/transfer/a/a;)V

    iget-object v0, p0, Lcom/alensw/transfer/a/c;->a:Lcom/alensw/transfer/a/a;

    invoke-static {v0}, Lcom/alensw/transfer/a/a;->f(Lcom/alensw/transfer/a/a;)Lcom/alensw/transfer/a/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alensw/transfer/a/j;->a()V

    :cond_0
    return-void
.end method
