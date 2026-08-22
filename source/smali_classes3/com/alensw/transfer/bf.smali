.class public Lcom/alensw/transfer/bf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/b/k/k;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/TransferService;

.field private b:Lcom/alensw/transfer/f;

.field private c:Lcom/alensw/transfer/d;


# direct methods
.method public constructor <init>(Lcom/alensw/transfer/TransferService;Lcom/alensw/transfer/f;Lcom/alensw/transfer/d;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/bf;->a:Lcom/alensw/transfer/TransferService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alensw/transfer/bf;->b:Lcom/alensw/transfer/f;

    iput-object p3, p0, Lcom/alensw/transfer/bf;->c:Lcom/alensw/transfer/d;

    return-void
.end method

.method static synthetic a(Lcom/alensw/transfer/bf;)Lcom/alensw/transfer/d;
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/bf;->c:Lcom/alensw/transfer/d;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()Ljava/lang/Void;
    .locals 6

    const/4 v0, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/alensw/transfer/bf;->c:Lcom/alensw/transfer/d;

    invoke-virtual {v1}, Lcom/alensw/transfer/d;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v1, p0, Lcom/alensw/transfer/bf;->c:Lcom/alensw/transfer/d;

    invoke-virtual {v1, v0}, Lcom/alensw/transfer/d;->a(I)V

    iget-object v1, p0, Lcom/alensw/transfer/bf;->a:Lcom/alensw/transfer/TransferService;

    invoke-static {v1}, Lcom/alensw/b/c/b;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    const-string v4, ".transfer"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :try_start_0
    const-string v1, "download"

    const-string v4, ".tmp"

    invoke-static {v1, v4, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alensw/transfer/bf;->b:Lcom/alensw/transfer/f;

    iget-object v4, v4, Lcom/alensw/transfer/f;->e:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alensw/transfer/bg;

    invoke-direct {v5, p0}, Lcom/alensw/transfer/bg;-><init>(Lcom/alensw/transfer/bf;)V

    invoke-static {v3, v4, v5}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/f;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alensw/transfer/bf;->b:Lcom/alensw/transfer/f;

    iget-object v0, v0, Lcom/alensw/transfer/f;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alensw/b/l/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/alensw/transfer/bf;->a:Lcom/alensw/transfer/TransferService;

    invoke-static {v4}, Lcom/alensw/transfer/TransferService;->f(Lcom/alensw/transfer/TransferService;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v2}, Lcom/alensw/b/l/b;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v1, v3}, Lcom/alensw/b/l/b;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/transfer/bf;->b:Lcom/alensw/transfer/f;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/alensw/transfer/f;->e:Landroid/net/Uri;

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/a/ba;->f(Ljava/lang/String;)V

    const-string v0, "TransferService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save file: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_2
    const-string v3, "TransferService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alensw/transfer/bf;->b:Lcom/alensw/transfer/f;

    iget-object v5, v5, Lcom/alensw/transfer/f;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alensw/transfer/bf;->c:Lcom/alensw/transfer/d;

    invoke-virtual {v0}, Lcom/alensw/transfer/d;->o()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/transfer/bf;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
