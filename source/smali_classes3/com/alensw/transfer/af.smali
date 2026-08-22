.class Lcom/alensw/transfer/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/a/t;

.field final synthetic b:Lcom/alensw/transfer/ae;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/ae;Lcom/alensw/transfer/a/t;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/af;->b:Lcom/alensw/transfer/ae;

    iput-object p2, p0, Lcom/alensw/transfer/af;->a:Lcom/alensw/transfer/a/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/transfer/af;->b:Lcom/alensw/transfer/ae;

    iget-object v0, v0, Lcom/alensw/transfer/ae;->a:Lcom/alensw/transfer/ac;

    iget-object v1, p0, Lcom/alensw/transfer/af;->a:Lcom/alensw/transfer/a/t;

    invoke-static {v0, v1}, Lcom/alensw/transfer/ac;->a(Lcom/alensw/transfer/ac;Lcom/alensw/transfer/a/t;)Lcom/alensw/transfer/a/t;

    iget-object v0, p0, Lcom/alensw/transfer/af;->b:Lcom/alensw/transfer/ae;

    iget-object v0, v0, Lcom/alensw/transfer/ae;->a:Lcom/alensw/transfer/ac;

    invoke-virtual {v0}, Lcom/alensw/transfer/ac;->g()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/alensw/transfer/TransferActivity;

    iget-object v1, p0, Lcom/alensw/transfer/af;->a:Lcom/alensw/transfer/a/t;

    invoke-virtual {v1}, Lcom/alensw/transfer/a/t;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/transfer/TransferActivity;->a(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
