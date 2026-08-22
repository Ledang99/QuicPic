.class Lcom/alensw/ui/view/be;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/view/bd;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/bd;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/be;->a:Lcom/alensw/ui/view/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/view/be;->a:Lcom/alensw/ui/view/bd;

    iget-object v0, v0, Lcom/alensw/ui/view/bd;->a:Lcom/alensw/ui/view/bc;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alensw/ui/view/bc;->b(Ljava/lang/String;Z)V

    return-void
.end method
