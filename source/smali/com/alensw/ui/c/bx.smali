.class Lcom/alensw/ui/c/bx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/a/s;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/bf;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/bf;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/bx;->a:Lcom/alensw/ui/c/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-static {v0, v1}, Lcom/alensw/b/l/b;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/b/l/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/bx;->a:Lcom/alensw/ui/c/bf;

    iget-object v1, v1, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v1}, Lcom/alensw/a/e;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/alensw/ui/c/bx;->a:Lcom/alensw/ui/c/bf;

    invoke-virtual {v1, v0}, Lcom/alensw/ui/c/bf;->f(Ljava/lang/String;)V

    goto :goto_0
.end method
