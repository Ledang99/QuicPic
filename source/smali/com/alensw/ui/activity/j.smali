.class final Lcom/alensw/ui/activity/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/j;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/alensw/ui/activity/j;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/activity/j;->a:Landroid/content/Context;

    const-string v1, "protect_delete"

    iget-object v2, p0, Lcom/alensw/ui/activity/j;->b:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/alensw/ui/a/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method
