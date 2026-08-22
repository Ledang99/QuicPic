.class Lcom/alensw/transfer/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/TransferActivity;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/TransferActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/j;->a:Lcom/alensw/transfer/TransferActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/j;->a:Lcom/alensw/transfer/TransferActivity;

    invoke-static {v0}, Lcom/alensw/transfer/TransferActivity;->c(Lcom/alensw/transfer/TransferActivity;)Lcom/alensw/transfer/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/transfer/a;->f()V

    iget-object v0, p0, Lcom/alensw/transfer/j;->a:Lcom/alensw/transfer/TransferActivity;

    invoke-static {v0}, Lcom/alensw/transfer/TransferActivity;->d(Lcom/alensw/transfer/TransferActivity;)Lcom/alensw/transfer/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/transfer/a;->f()V

    iget-object v0, p0, Lcom/alensw/transfer/j;->a:Lcom/alensw/transfer/TransferActivity;

    invoke-static {v0}, Lcom/alensw/transfer/TransferActivity;->e(Lcom/alensw/transfer/TransferActivity;)V

    return-void
.end method
