.class Lcom/alensw/ui/activity/u;
.super Lcom/alensw/ui/view/cd;


# instance fields
.field final synthetic a:Lcom/alensw/ui/activity/p;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/p;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/u;->a:Lcom/alensw/ui/activity/p;

    invoke-direct {p0, p2}, Lcom/alensw/ui/view/cd;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alensw/ui/activity/u;->a:Lcom/alensw/ui/activity/p;

    iget v1, v1, Lcom/alensw/ui/activity/p;->B:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x3

    if-le p1, v1, :cond_0

    move p1, v0

    :cond_0
    const/4 v1, 0x4

    packed-switch p1, :pswitch_data_0

    move v0, v1

    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/alensw/ui/activity/u;->a:Lcom/alensw/ui/activity/p;

    invoke-virtual {v1, v0}, Lcom/alensw/ui/activity/p;->setRequestedOrientation(I)V

    return-void

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x8

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
