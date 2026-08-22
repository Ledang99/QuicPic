.class Lcom/alensw/ui/c/cy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/cu;

.field final synthetic b:Lcom/alensw/ui/c/cx;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/cx;Lcom/alensw/ui/c/cu;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/cy;->b:Lcom/alensw/ui/c/cx;

    iput-object p2, p0, Lcom/alensw/ui/c/cy;->a:Lcom/alensw/ui/c/cu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/cy;->a:Lcom/alensw/ui/c/cu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/cy;->a:Lcom/alensw/ui/c/cu;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cu;->i()V

    :cond_0
    return-void
.end method
