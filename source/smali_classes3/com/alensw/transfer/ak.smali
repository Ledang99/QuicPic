.class Lcom/alensw/transfer/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/a/t;

.field final synthetic b:Lcom/alensw/transfer/aj;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/aj;Lcom/alensw/transfer/a/t;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/ak;->b:Lcom/alensw/transfer/aj;

    iput-object p2, p0, Lcom/alensw/transfer/ak;->a:Lcom/alensw/transfer/a/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/transfer/ak;->b:Lcom/alensw/transfer/aj;

    iget-object v0, v0, Lcom/alensw/transfer/aj;->a:Lcom/alensw/transfer/ac;

    iget-object v1, p0, Lcom/alensw/transfer/ak;->a:Lcom/alensw/transfer/a/t;

    invoke-static {v0, v1}, Lcom/alensw/transfer/ac;->b(Lcom/alensw/transfer/ac;Lcom/alensw/transfer/a/t;)V

    return-void
.end method
