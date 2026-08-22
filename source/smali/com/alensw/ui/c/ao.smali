.class Lcom/alensw/ui/c/ao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/c/m;


# instance fields
.field final synthetic a:Ljava/util/HashSet;

.field final synthetic b:Lcom/alensw/ui/c/z;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/z;Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/ao;->b:Lcom/alensw/ui/c/z;

    iput-object p2, p0, Lcom/alensw/ui/c/ao;->a:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 7

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alensw/ui/c/ao;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alensw/b/l/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alensw/b/f/c;->a(Ljava/lang/String;)C

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alensw/b/f/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lcom/alensw/ui/c/ao;->b:Lcom/alensw/ui/c/z;

    iget-object v4, v4, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    iget-object v5, p0, Lcom/alensw/ui/c/ao;->b:Lcom/alensw/ui/c/z;

    iget-object v5, v5, Lcom/alensw/ui/c/z;->C:Lcom/alensw/ui/c/cx;

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v5, v6, v1, v0}, Lcom/alensw/cloud/UrlTaskService;->a(Landroid/content/Context;ILandroid/net/Uri;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/alensw/ui/c/cx;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    return-void
.end method
