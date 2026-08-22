.class Lcom/alensw/ui/c/bd;
.super Lcom/alensw/ui/a/ao;


# instance fields
.field final synthetic a:Landroid/content/ContentResolver;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Lcom/alensw/a/bc;

.field final synthetic e:Lcom/alensw/ui/c/as;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/as;Landroid/app/Activity;Ljava/lang/String;ILandroid/content/ContentResolver;Landroid/net/Uri;Lcom/alensw/a/bc;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/bd;->e:Lcom/alensw/ui/c/as;

    iput-object p5, p0, Lcom/alensw/ui/c/bd;->a:Landroid/content/ContentResolver;

    iput-object p6, p0, Lcom/alensw/ui/c/bd;->b:Landroid/net/Uri;

    iput-object p7, p0, Lcom/alensw/ui/c/bd;->c:Lcom/alensw/a/bc;

    invoke-direct {p0, p2, p3, p4}, Lcom/alensw/ui/a/ao;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/c/bd;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/alensw/ui/c/bd;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/alensw/b/j/a;->b(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/bd;->c:Lcom/alensw/a/bc;

    iget-object v1, p0, Lcom/alensw/ui/c/bd;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/a/bc;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alensw/ui/c/bd;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/alensw/ui/c/bd;->e:Lcom/alensw/ui/c/as;

    invoke-static {v1}, Lcom/alensw/ui/c/as;->b(Lcom/alensw/ui/c/as;)Lcom/alensw/bean/CommonFolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alensw/bean/CommonFolder;->i()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method protected b()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/bd;->e:Lcom/alensw/ui/c/as;

    invoke-static {v0}, Lcom/alensw/ui/c/as;->e(Lcom/alensw/ui/c/as;)V

    return-void
.end method
