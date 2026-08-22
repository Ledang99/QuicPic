.class Lcom/alensw/ui/c/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/a/s;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/p;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/p;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/t;->a:Lcom/alensw/ui/c/p;

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

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alensw/ui/c/t;->a:Lcom/alensw/ui/c/p;

    invoke-static {v1, v0}, Lcom/alensw/ui/c/p;->a(Lcom/alensw/ui/c/p;Ljava/lang/String;)V

    goto :goto_0
.end method
