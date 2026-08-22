.class Lcom/alensw/ui/c/dm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/activity/o;


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/alensw/ui/c/df;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/df;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/dm;->b:Lcom/alensw/ui/c/df;

    iput-object p2, p0, Lcom/alensw/ui/c/dm;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const-string v0, "android.service.wallpaper.CROP_AND_SET_WALLPAPER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alensw/ui/c/dm;->b:Lcom/alensw/ui/c/df;

    invoke-static {v0}, Lcom/alensw/ui/c/df;->a(Lcom/alensw/ui/c/df;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/dm;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getCropAndSetWallpaperIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/dm;->b:Lcom/alensw/ui/c/df;

    invoke-static {v1}, Lcom/alensw/ui/c/df;->a(Lcom/alensw/ui/c/df;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/dm;->b:Lcom/alensw/ui/c/df;

    invoke-static {v0}, Lcom/alensw/ui/c/df;->a(Lcom/alensw/ui/c/df;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
