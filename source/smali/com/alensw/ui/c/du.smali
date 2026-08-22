.class Lcom/alensw/ui/c/du;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alensw/ui/c/dp;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/dp;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/du;->b:Lcom/alensw/ui/c/dp;

    iput-boolean p2, p0, Lcom/alensw/ui/c/du;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/alensw/ui/c/du;->b:Lcom/alensw/ui/c/dp;

    invoke-static {v0}, Lcom/alensw/ui/c/dp;->a(Lcom/alensw/ui/c/dp;)Lcom/alensw/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/a/e;->j()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/du;->b:Lcom/alensw/ui/c/dp;

    invoke-static {v0}, Lcom/alensw/ui/c/dp;->b(Lcom/alensw/ui/c/dp;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/du;->b:Lcom/alensw/ui/c/dp;

    iget-object v1, v1, Lcom/alensw/ui/c/dp;->C:Lcom/alensw/ui/c/cx;

    const v2, 0x7f0a004e

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/alensw/ui/c/du;->b:Lcom/alensw/ui/c/dp;

    invoke-virtual {v1}, Lcom/alensw/ui/c/dp;->E()V

    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alensw/b/f/c;->a(Ljava/lang/String;)C

    move-result v2

    iget-object v1, p0, Lcom/alensw/ui/c/du;->b:Lcom/alensw/ui/c/dp;

    invoke-static {v1}, Lcom/alensw/ui/c/dp;->a(Lcom/alensw/ui/c/dp;)Lcom/alensw/a/e;

    move-result-object v1

    if-eqz v2, :cond_3

    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v3, v6

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v0}, Lcom/alensw/b/l/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/alensw/a/e;->a(CIJLjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/du;->b:Lcom/alensw/ui/c/dp;

    iget v0, v0, Lcom/alensw/ui/c/dp;->H:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/alensw/ui/c/du;->a:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alensw/ui/c/du;->b:Lcom/alensw/ui/c/dp;

    invoke-static {v0}, Lcom/alensw/ui/c/dp;->c(Lcom/alensw/ui/c/dp;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/16 v2, 0x49

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alensw/ui/c/du;->b:Lcom/alensw/ui/c/dp;

    invoke-static {v0}, Lcom/alensw/ui/c/dp;->d(Lcom/alensw/ui/c/dp;)V

    goto :goto_1
.end method
