.class Lcom/alensw/ui/c/cj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/a/e;

.field final synthetic b:Lcom/alensw/ui/c/bz;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/bz;Lcom/alensw/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/cj;->b:Lcom/alensw/ui/c/bz;

    iput-object p2, p0, Lcom/alensw/ui/c/cj;->a:Lcom/alensw/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/c/cj;->b:Lcom/alensw/ui/c/bz;

    iget-object v1, p0, Lcom/alensw/ui/c/cj;->a:Lcom/alensw/a/e;

    const/4 v2, 0x1

    new-instance v3, Lcom/alensw/ui/c/ck;

    invoke-direct {v3, p0}, Lcom/alensw/ui/c/ck;-><init>(Lcom/alensw/ui/c/cj;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alensw/ui/c/bz;->a(Lcom/alensw/a/e;ZLjava/lang/Runnable;)Z

    return-void
.end method
