.class Lcom/alensw/transfer/p;
.super Ljava/io/FilterInputStream;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/n;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/n;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/p;->a:Lcom/alensw/transfer/n;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/p;->a:Lcom/alensw/transfer/n;

    invoke-static {v0}, Lcom/alensw/transfer/n;->a(Lcom/alensw/transfer/n;)Lcom/alensw/transfer/TransferService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/transfer/TransferService;->d()V

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    return-void
.end method
