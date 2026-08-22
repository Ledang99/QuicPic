.class Lcom/alensw/transfer/az;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/a/aj;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/ay;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/ay;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/az;->a:Lcom/alensw/transfer/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/alensw/b/h/h;)V
    .locals 2

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->w:Lcom/alensw/b/a/a;

    invoke-virtual {p2}, Lcom/alensw/b/h/h;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/a/c;

    invoke-virtual {v1, p1, v0}, Lcom/alensw/b/a/a;->a(Ljava/lang/Object;Lcom/alensw/b/a/c;)Lcom/alensw/b/a/c;

    iget-object v0, p0, Lcom/alensw/transfer/az;->a:Lcom/alensw/transfer/ay;

    iget-object v0, v0, Lcom/alensw/transfer/ay;->a:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->n(Lcom/alensw/transfer/ac;)Lcom/alensw/ui/view/ImageGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->h()V

    return-void
.end method
