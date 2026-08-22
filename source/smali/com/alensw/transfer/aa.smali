.class Lcom/alensw/transfer/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/d;

.field final synthetic b:Lcom/alensw/transfer/z;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/z;Lcom/alensw/transfer/d;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/aa;->b:Lcom/alensw/transfer/z;

    iput-object p2, p0, Lcom/alensw/transfer/aa;->a:Lcom/alensw/transfer/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/aa;->a:Lcom/alensw/transfer/d;

    invoke-virtual {v0}, Lcom/alensw/transfer/d;->o()V

    return-void
.end method
