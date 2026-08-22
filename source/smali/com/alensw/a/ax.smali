.class Lcom/alensw/a/ax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alensw/a/aw;


# direct methods
.method constructor <init>(Lcom/alensw/a/aw;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/a/ax;->b:Lcom/alensw/a/aw;

    iput-boolean p2, p0, Lcom/alensw/a/ax;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/a/ax;->b:Lcom/alensw/a/aw;

    iget-object v0, v0, Lcom/alensw/a/aw;->b:Lcom/alensw/a/av;

    invoke-static {v0}, Lcom/alensw/a/av;->e(Lcom/alensw/a/av;)Lcom/alensw/a/az;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/a/ax;->b:Lcom/alensw/a/aw;

    iget-object v1, v1, Lcom/alensw/a/aw;->b:Lcom/alensw/a/av;

    invoke-static {v1}, Lcom/alensw/a/av;->c(Lcom/alensw/a/av;)Lcom/alensw/bean/CommonFolder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/alensw/a/ax;->a:Z

    invoke-interface {v0, v1, v2}, Lcom/alensw/a/az;->a(Lcom/alensw/bean/CommonFolder;Z)V

    return-void
.end method
