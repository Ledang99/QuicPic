.class Lcom/alensw/ui/c/co;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/a/s;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/bz;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/bz;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/co;->a:Lcom/alensw/ui/c/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-static {v0, v1}, Lcom/alensw/b/l/b;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alensw/ui/c/co;->a:Lcom/alensw/ui/c/bz;

    iget-object v2, v2, Lcom/alensw/ui/c/bz;->z:Lcom/alensw/a/e;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alensw/ui/c/co;->a:Lcom/alensw/ui/c/bz;

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/bz;->b(Ljava/io/File;)V

    goto :goto_0
.end method
