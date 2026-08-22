.class Lcom/alensw/ui/c/ca;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alensw/ui/c/bz;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/bz;I)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/ca;->b:Lcom/alensw/ui/c/bz;

    iput p2, p0, Lcom/alensw/ui/c/ca;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/c/ca;->b:Lcom/alensw/ui/c/bz;

    iget v1, p0, Lcom/alensw/ui/c/ca;->a:I

    iput v1, v0, Lcom/alensw/ui/c/bz;->v:I

    iget-object v0, p0, Lcom/alensw/ui/c/ca;->b:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    iget-object v1, p0, Lcom/alensw/ui/c/ca;->b:Lcom/alensw/ui/c/bz;

    iget v1, v1, Lcom/alensw/ui/c/bz;->v:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alensw/ui/view/ImageGridView;->b(IZ)I

    return-void
.end method
