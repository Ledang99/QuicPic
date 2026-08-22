.class Lcom/alensw/ui/a/al;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/a/s;


# instance fields
.field final synthetic a:Lcom/alensw/ui/a/ak;


# direct methods
.method constructor <init>(Lcom/alensw/ui/a/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/a/al;->a:Lcom/alensw/ui/a/ak;

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

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/alensw/ui/a/al;->a:Lcom/alensw/ui/a/ak;

    iget-object v1, v1, Lcom/alensw/ui/a/ak;->c:Lcom/alensw/ui/a/ae;

    invoke-virtual {v1, v0}, Lcom/alensw/ui/a/ae;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/a/al;->a:Lcom/alensw/ui/a/ak;

    iget-object v1, v1, Lcom/alensw/ui/a/ak;->b:Lcom/alensw/ui/a/an;

    invoke-interface {v1, v0}, Lcom/alensw/ui/a/an;->a(Ljava/io/File;)V

    goto :goto_0
.end method
