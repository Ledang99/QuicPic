.class Lcom/alensw/ui/c/ce;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/bz;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/bz;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/ce;->a:Lcom/alensw/ui/c/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/ce;->a:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    iget-object v1, p0, Lcom/alensw/ui/c/ce;->a:Lcom/alensw/ui/c/bz;

    iget v1, v1, Lcom/alensw/ui/c/bz;->v:I

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/ImageGridView;->c(I)V

    return-void
.end method
