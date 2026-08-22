.class Lcom/alensw/ui/activity/aw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/activity/ao;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/aw;->a:Lcom/alensw/ui/activity/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/activity/aw;->a:Lcom/alensw/ui/activity/ao;

    invoke-virtual {v0}, Lcom/alensw/ui/activity/ao;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/aw;->a:Lcom/alensw/ui/activity/ao;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alensw/ui/activity/ao;->d(Z)V

    :cond_0
    return-void
.end method
