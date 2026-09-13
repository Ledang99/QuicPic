.class Lcom/alensw/ui/c/cg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/bz;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/bz;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/cg;->a:Lcom/alensw/ui/c/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/c/cg;->a:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/cg;->a:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/cx;->d(Z)V

    :cond_0
    # Mark gallery dirty and clear folder caches so an in-progress scan
    # cannot re-add the excluded folder (same pattern as PathListActivity).
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alensw/PicFolder/QuickApp;->a(Z)Z

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->q:Lcom/alensw/a/s;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/alensw/a/s;->a(ILjava/lang/Object;Landroid/os/Handler;)V

    :try_start_0
    iget-object v0, p0, Lcom/alensw/ui/c/cg;->a:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

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
    # Cancel any in-flight scan, clear the album list, and reload so
    # excluded folders disappear immediately without restarting the app.
    iget-object v0, p0, Lcom/alensw/ui/c/cg;->a:Lcom/alensw/ui/c/bz;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/bz;->a(Z)V

    iget-object v0, p0, Lcom/alensw/ui/c/cg;->a:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    const v1, 0x1040014

    iget-object v2, p0, Lcom/alensw/ui/c/cg;->a:Lcom/alensw/ui/c/bz;

    const v3, 0x7f0a0035

    invoke-virtual {v2, v3}, Lcom/alensw/ui/c/bz;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alensw/ui/a/f;->a(Landroid/content/Context;ILjava/lang/CharSequence;)V

    return-void
.end method
