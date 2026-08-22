.class Lcom/alensw/ui/activity/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/activity/MainPreference;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/MainPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/al;->a:Lcom/alensw/ui/activity/MainPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/alensw/ui/activity/am;

    iget-object v1, p0, Lcom/alensw/ui/activity/al;->a:Lcom/alensw/ui/activity/MainPreference;

    iget-object v2, p0, Lcom/alensw/ui/activity/al;->a:Lcom/alensw/ui/activity/MainPreference;

    const v3, 0x7f0a0068

    invoke-virtual {v2, v3}, Lcom/alensw/ui/activity/MainPreference;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/alensw/ui/activity/am;-><init>(Lcom/alensw/ui/activity/al;Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/alensw/ui/activity/am;->c()V

    return-void
.end method
