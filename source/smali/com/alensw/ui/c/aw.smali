.class Lcom/alensw/ui/c/aw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/as;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/as;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/aw;->a:Lcom/alensw/ui/c/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/c/aw;->a:Lcom/alensw/ui/c/as;

    iget v0, v0, Lcom/alensw/ui/c/as;->H:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/aw;->a:Lcom/alensw/ui/c/as;

    iget-object v0, v0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/aw;->a:Lcom/alensw/ui/c/as;

    invoke-static {v1}, Lcom/alensw/ui/c/as;->b(Lcom/alensw/ui/c/as;)Lcom/alensw/bean/CommonFolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alensw/bean/CommonFolder;->i()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/alensw/ui/c/aw;->a:Lcom/alensw/ui/c/as;

    iget-object v0, v0, Lcom/alensw/ui/c/as;->b:Landroid/os/Handler;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
