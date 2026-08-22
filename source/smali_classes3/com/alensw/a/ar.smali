.class Lcom/alensw/a/ar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/b/k/k;


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/alensw/a/au;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:J

.field final synthetic e:Lcom/alensw/a/ao;


# direct methods
.method constructor <init>(Lcom/alensw/a/ao;Landroid/net/Uri;Lcom/alensw/a/au;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Lcom/alensw/a/ar;->e:Lcom/alensw/a/ao;

    iput-object p2, p0, Lcom/alensw/a/ar;->a:Landroid/net/Uri;

    iput-object p3, p0, Lcom/alensw/a/ar;->b:Lcom/alensw/a/au;

    iput-object p4, p0, Lcom/alensw/a/ar;->c:Ljava/lang/String;

    iput-wide p5, p0, Lcom/alensw/a/ar;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/a/ar;->e:Lcom/alensw/a/ao;

    invoke-static {v0}, Lcom/alensw/a/ao;->b(Lcom/alensw/a/ao;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/a/ar;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/a/ar;->e:Lcom/alensw/a/ao;

    invoke-static {v0}, Lcom/alensw/a/ao;->b(Lcom/alensw/a/ao;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/a/ar;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c()Ljava/lang/Void;
    .locals 8

    iget-object v0, p0, Lcom/alensw/a/ar;->e:Lcom/alensw/a/ao;

    iget-object v1, p0, Lcom/alensw/a/ar;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/alensw/a/ao;->a(Landroid/net/Uri;)Lcom/alensw/b/h/j;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/alensw/b/h/j;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/alensw/a/ar;->e:Lcom/alensw/a/ao;

    iget-object v3, p0, Lcom/alensw/a/ar;->a:Landroid/net/Uri;

    invoke-static {v0, v3}, Lcom/alensw/a/ao;->a(Lcom/alensw/a/ao;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alensw/a/ar;->b:Lcom/alensw/a/au;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/alensw/a/au;->a:Z

    iget-object v0, p0, Lcom/alensw/a/ar;->e:Lcom/alensw/a/ao;

    invoke-static {v0}, Lcom/alensw/a/ao;->a(Lcom/alensw/a/ao;)Lcom/alensw/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/b/a/f;->f()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/alensw/a/ao;->a(Ljava/lang/String;Lcom/alensw/b/h/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/a/ar;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/alensw/a/ar;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v4, p0, Lcom/alensw/a/ar;->e:Lcom/alensw/a/ao;

    invoke-static {v4}, Lcom/alensw/a/ao;->a(Lcom/alensw/a/ao;)Lcom/alensw/b/a/f;

    move-result-object v4

    iget-wide v6, p0, Lcom/alensw/a/ar;->d:J

    invoke-virtual {v4, v0, v6, v7, v3}, Lcom/alensw/b/a/f;->a(Ljava/lang/String;JLjava/io/File;)V

    :cond_0
    iget-object v0, p0, Lcom/alensw/a/ar;->b:Lcom/alensw/a/au;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/alensw/a/au;->a:Z

    :cond_1
    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/alensw/a/ar;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    iget v2, v0, Lcom/alensw/a/bc;->d:I

    iget v3, v0, Lcom/alensw/a/bc;->e:I

    iget-boolean v4, v0, Lcom/alensw/a/bc;->b:Z

    sget-object v5, Lcom/alensw/a/bc;->a:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/alensw/b/h/j;->a(IIZLandroid/graphics/Bitmap$Config;)Lcom/alensw/b/h/h;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/alensw/a/ar;->a:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/alensw/a/ar;->d:J

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/alensw/a/bc;->a(Ljava/lang/String;JLcom/alensw/b/h/h;)V

    invoke-virtual {v2}, Lcom/alensw/b/h/h;->m()I

    :cond_2
    invoke-virtual {v1}, Lcom/alensw/b/h/j;->m()I

    :cond_3
    const/4 v0, 0x0

    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/alensw/a/ar;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/a/ar;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
