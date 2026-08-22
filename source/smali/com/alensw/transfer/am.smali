.class Lcom/alensw/transfer/am;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/transfer/bj;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/ac;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/am;->a:Lcom/alensw/transfer/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a([Ljava/lang/Object;I)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/am;->a:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->h(Lcom/alensw/transfer/ac;)Lcom/alensw/transfer/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/transfer/ax;->notifyDataSetChanged()V

    return-void
.end method
