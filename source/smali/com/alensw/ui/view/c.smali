.class Lcom/alensw/ui/view/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/view/a;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/c;->a:Lcom/alensw/ui/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v1, p0, Lcom/alensw/ui/view/c;->a:Lcom/alensw/ui/view/a;

    iget-object v0, p0, Lcom/alensw/ui/view/c;->a:Lcom/alensw/ui/view/a;

    invoke-static {v0}, Lcom/alensw/ui/view/a;->a(Lcom/alensw/ui/view/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alensw/ui/view/a;->a(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
