.class Lcom/alensw/transfer/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/ac;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/ap;->a:Lcom/alensw/transfer/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/ap;->a:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->a(Lcom/alensw/transfer/ac;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/alensw/transfer/ap;->a:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->b(Lcom/alensw/transfer/ac;)V

    return-void
.end method
