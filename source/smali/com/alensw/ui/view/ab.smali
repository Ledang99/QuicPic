.class Lcom/alensw/ui/view/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/view/ImageGridView;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/ImageGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/ab;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/view/ab;->a:Lcom/alensw/ui/view/ImageGridView;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alensw/ui/view/ImageGridView;->b(IZ)I

    return-void
.end method
