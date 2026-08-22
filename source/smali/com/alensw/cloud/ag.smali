.class Lcom/alensw/cloud/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/alensw/cloud/UrlTaskActivity;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/UrlTaskActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/ag;->a:Lcom/alensw/cloud/UrlTaskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/alensw/cloud/ag;->a:Lcom/alensw/cloud/UrlTaskActivity;

    check-cast p2, Lcom/alensw/cloud/ap;

    invoke-virtual {p2}, Lcom/alensw/cloud/ap;->a()Lcom/alensw/cloud/UrlTaskService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alensw/cloud/UrlTaskActivity;->a(Lcom/alensw/cloud/UrlTaskActivity;Lcom/alensw/cloud/UrlTaskService;)Lcom/alensw/cloud/UrlTaskService;

    iget-object v0, p0, Lcom/alensw/cloud/ag;->a:Lcom/alensw/cloud/UrlTaskActivity;

    invoke-static {v0}, Lcom/alensw/cloud/UrlTaskActivity;->b(Lcom/alensw/cloud/UrlTaskActivity;)Lcom/alensw/cloud/UrlTaskService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/ag;->a:Lcom/alensw/cloud/UrlTaskActivity;

    invoke-static {v0}, Lcom/alensw/cloud/UrlTaskActivity;->b(Lcom/alensw/cloud/UrlTaskActivity;)Lcom/alensw/cloud/UrlTaskService;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/cloud/ag;->a:Lcom/alensw/cloud/UrlTaskActivity;

    invoke-static {v1}, Lcom/alensw/cloud/UrlTaskActivity;->c(Lcom/alensw/cloud/UrlTaskActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/alensw/cloud/ag;->a:Lcom/alensw/cloud/UrlTaskActivity;

    invoke-static {v2}, Lcom/alensw/cloud/UrlTaskActivity;->d(Lcom/alensw/cloud/UrlTaskActivity;)Lcom/alensw/cloud/am;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alensw/cloud/UrlTaskService;->a(ILcom/alensw/cloud/am;)V

    iget-object v0, p0, Lcom/alensw/cloud/ag;->a:Lcom/alensw/cloud/UrlTaskActivity;

    invoke-static {v0}, Lcom/alensw/cloud/UrlTaskActivity;->e(Lcom/alensw/cloud/UrlTaskActivity;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Lcom/alensw/cloud/ag;->a:Lcom/alensw/cloud/UrlTaskActivity;

    invoke-static {v0}, Lcom/alensw/cloud/UrlTaskActivity;->b(Lcom/alensw/cloud/UrlTaskActivity;)Lcom/alensw/cloud/UrlTaskService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/ag;->a:Lcom/alensw/cloud/UrlTaskActivity;

    invoke-static {v0}, Lcom/alensw/cloud/UrlTaskActivity;->b(Lcom/alensw/cloud/UrlTaskActivity;)Lcom/alensw/cloud/UrlTaskService;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/cloud/ag;->a:Lcom/alensw/cloud/UrlTaskActivity;

    invoke-static {v1}, Lcom/alensw/cloud/UrlTaskActivity;->c(Lcom/alensw/cloud/UrlTaskActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/alensw/cloud/ag;->a:Lcom/alensw/cloud/UrlTaskActivity;

    invoke-static {v2}, Lcom/alensw/cloud/UrlTaskActivity;->d(Lcom/alensw/cloud/UrlTaskActivity;)Lcom/alensw/cloud/am;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alensw/cloud/UrlTaskService;->b(ILcom/alensw/cloud/am;)V

    iget-object v0, p0, Lcom/alensw/cloud/ag;->a:Lcom/alensw/cloud/UrlTaskActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alensw/cloud/UrlTaskActivity;->a(Lcom/alensw/cloud/UrlTaskActivity;Lcom/alensw/cloud/UrlTaskService;)Lcom/alensw/cloud/UrlTaskService;

    :cond_0
    return-void
.end method
