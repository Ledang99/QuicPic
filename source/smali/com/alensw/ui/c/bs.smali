.class Lcom/alensw/ui/c/bs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/a/s;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/bf;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/bf;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/bs;->a:Lcom/alensw/ui/c/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/alensw/a/e;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Lcom/alensw/a/e;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/alensw/ui/c/bs;->a:Lcom/alensw/ui/c/bf;

    iget-object v1, v1, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v1}, Lcom/alensw/a/o;->a(Landroid/content/Context;)Lcom/alensw/a/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alensw/a/o;->a(Lcom/alensw/a/e;)V

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->o:Lcom/alensw/a/x;

    invoke-virtual {v1, v0}, Lcom/alensw/a/x;->e(Lcom/alensw/a/e;)V

    iget-object v0, p0, Lcom/alensw/ui/c/bs;->a:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    const v1, 0x1040014

    iget-object v2, p0, Lcom/alensw/ui/c/bs;->a:Lcom/alensw/ui/c/bf;

    const v3, 0x7f0a0035

    invoke-virtual {v2, v3}, Lcom/alensw/ui/c/bf;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alensw/ui/a/f;->a(Landroid/content/Context;ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alensw/ui/c/bs;->a:Lcom/alensw/ui/c/bf;

    invoke-virtual {v0}, Lcom/alensw/ui/c/bf;->E()V

    return-void
.end method
