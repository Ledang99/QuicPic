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

    # Same refresh as PathListActivity / gallery exclude: dirty flag + cache clear
    # so the album grid reloads without the excluded folder when we pop back.
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alensw/PicFolder/QuickApp;->a(Z)Z

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->q:Lcom/alensw/a/s;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/alensw/a/s;->a(ILjava/lang/Object;Landroid/os/Handler;)V

    :try_start_0
    iget-object v0, p0, Lcom/alensw/ui/c/bs;->a:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v1, 0x49

    invoke-static {v1}, Lcom/alensw/a/ba;->a(C)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
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
