.class Lcom/alensw/ui/activity/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/activity/MainPreference;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/MainPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/z;->a:Lcom/alensw/ui/activity/MainPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->t:Lcom/alensw/a/ah;

    invoke-virtual {v0, v2}, Lcom/alensw/a/ah;->a(Z)V

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->v:Lcom/alensw/b/a/a;

    invoke-virtual {v0}, Lcom/alensw/b/a/a;->c()V

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->w:Lcom/alensw/b/a/a;

    invoke-virtual {v0}, Lcom/alensw/b/a/a;->c()V

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    invoke-virtual {v0}, Lcom/alensw/a/bc;->b()V

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->q:Lcom/alensw/a/s;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3, v3}, Lcom/alensw/a/s;->a(ILjava/lang/Object;Landroid/os/Handler;)V

    invoke-static {v2}, Lcom/alensw/PicFolder/QuickApp;->a(Z)Z

    return-void
.end method
