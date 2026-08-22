.class Lcom/alensw/ui/c/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/a/s;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alensw/a/e;

.field final synthetic c:I

.field final synthetic d:Lcom/alensw/ui/c/o;

.field final synthetic e:Lcom/alensw/ui/c/a;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/a;Ljava/lang/String;Lcom/alensw/a/e;ILcom/alensw/ui/c/o;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/g;->e:Lcom/alensw/ui/c/a;

    iput-object p2, p0, Lcom/alensw/ui/c/g;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alensw/ui/c/g;->b:Lcom/alensw/a/e;

    iput p4, p0, Lcom/alensw/ui/c/g;->c:I

    iput-object p5, p0, Lcom/alensw/ui/c/g;->d:Lcom/alensw/ui/c/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-static {v1, v2}, Lcom/alensw/b/l/b;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alensw/b/l/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alensw/ui/c/g;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/alensw/ui/c/g;->b:Lcom/alensw/a/e;

    iget v3, p0, Lcom/alensw/ui/c/g;->c:I

    invoke-virtual {v2, v3}, Lcom/alensw/a/e;->b(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alensw/ui/c/g;->b:Lcom/alensw/a/e;

    iget v4, p0, Lcom/alensw/ui/c/g;->c:I

    invoke-virtual {v3, v4}, Lcom/alensw/a/e;->f(I)C

    move-result v3

    iget-object v4, p0, Lcom/alensw/ui/c/g;->b:Lcom/alensw/a/e;

    iget v5, p0, Lcom/alensw/ui/c/g;->c:I

    invoke-virtual {v4, v5, v1}, Lcom/alensw/a/e;->a(ILjava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    iget-object v4, p0, Lcom/alensw/ui/c/g;->b:Lcom/alensw/a/e;

    invoke-virtual {v4, v1}, Lcom/alensw/a/e;->b(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    invoke-virtual {v5, v2, v3, v0}, Lcom/alensw/a/ba;->a(Ljava/lang/String;CZ)Z

    sget-object v3, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    invoke-virtual {v3, v4}, Lcom/alensw/a/ba;->f(Ljava/lang/String;)V

    sget-object v3, Lcom/alensw/PicFolder/QuickApp;->o:Lcom/alensw/a/x;

    iget-object v5, p0, Lcom/alensw/ui/c/g;->b:Lcom/alensw/a/e;

    const/4 v6, 0x4

    if-ge v1, v6, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {v3, v5, v0}, Lcom/alensw/a/x;->a(Lcom/alensw/a/e;Z)V

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    invoke-virtual {v0, v2}, Lcom/alensw/a/bc;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alensw/ui/c/g;->d:Lcom/alensw/ui/c/o;

    invoke-interface {v0, v2, v4, v1}, Lcom/alensw/ui/c/o;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alensw/ui/c/g;->e:Lcom/alensw/ui/c/a;

    invoke-virtual {v0, v2}, Lcom/alensw/ui/c/a;->a(Ljava/lang/String;)Z

    goto :goto_0
.end method
