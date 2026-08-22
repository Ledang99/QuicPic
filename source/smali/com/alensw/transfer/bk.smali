.class public Lcom/alensw/transfer/bk;
.super Landroid/os/Binder;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/TransferService;


# direct methods
.method public constructor <init>(Lcom/alensw/transfer/TransferService;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/bk;->a:Lcom/alensw/transfer/TransferService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/alensw/transfer/TransferService;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/bk;->a:Lcom/alensw/transfer/TransferService;

    return-object v0
.end method
