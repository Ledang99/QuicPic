.class Lcom/alensw/cloud/sync/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alensw/cloud/sync/ConnectionChangeReceiver;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/sync/ConnectionChangeReceiver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/sync/b;->b:Lcom/alensw/cloud/sync/ConnectionChangeReceiver;

    iput-object p2, p0, Lcom/alensw/cloud/sync/b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/cloud/sync/b;->b:Lcom/alensw/cloud/sync/ConnectionChangeReceiver;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alensw/cloud/sync/ConnectionChangeReceiver;->a(Lcom/alensw/cloud/sync/ConnectionChangeReceiver;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/alensw/cloud/sync/b;->b:Lcom/alensw/cloud/sync/ConnectionChangeReceiver;

    iget-object v1, p0, Lcom/alensw/cloud/sync/b;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/alensw/cloud/sync/ConnectionChangeReceiver;->a(Lcom/alensw/cloud/sync/ConnectionChangeReceiver;Landroid/content/Context;)V

    return-void
.end method
