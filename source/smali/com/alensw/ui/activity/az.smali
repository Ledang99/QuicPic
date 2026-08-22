.class Lcom/alensw/ui/activity/az;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/activity/ao;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/az;->a:Lcom/alensw/ui/activity/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/activity/az;->a:Lcom/alensw/ui/activity/ao;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alensw/ui/activity/ao;->a(Z)V

    iget-object v0, p0, Lcom/alensw/ui/activity/az;->a:Lcom/alensw/ui/activity/ao;

    iget-object v0, v0, Lcom/alensw/ui/activity/ao;->I:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
