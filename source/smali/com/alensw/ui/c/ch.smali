.class Lcom/alensw/ui/c/ch;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/a/s;


# instance fields
.field final synthetic a:Lcom/alensw/a/o;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/alensw/ui/c/bz;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/bz;Lcom/alensw/a/o;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/ch;->c:Lcom/alensw/ui/c/bz;

    iput-object p2, p0, Lcom/alensw/ui/c/ch;->a:Lcom/alensw/a/o;

    iput-object p3, p0, Lcom/alensw/ui/c/ch;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/alensw/a/e;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Lcom/alensw/a/e;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/alensw/ui/c/ch;->a:Lcom/alensw/a/o;

    invoke-virtual {v1, v0}, Lcom/alensw/a/o;->a(Lcom/alensw/a/e;)V

    iget-object v1, p0, Lcom/alensw/ui/c/ch;->c:Lcom/alensw/ui/c/bz;

    iget-object v1, v1, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v1, v0}, Lcom/alensw/a/x;->f(Lcom/alensw/a/e;)Lcom/alensw/a/e;

    iget-object v1, p0, Lcom/alensw/ui/c/ch;->c:Lcom/alensw/ui/c/bz;

    iget-object v1, v1, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v1, v0}, Lcom/alensw/a/x;->e(Lcom/alensw/a/e;)V

    iget-object v0, p0, Lcom/alensw/ui/c/ch;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
