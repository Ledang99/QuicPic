.class Lcom/alensw/ui/activity/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/activity/p;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/p;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/q;->a:Lcom/alensw/ui/activity/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/activity/q;->a:Lcom/alensw/ui/activity/p;

    invoke-virtual {v0}, Lcom/alensw/ui/activity/p;->recreate()V

    return-void
.end method
