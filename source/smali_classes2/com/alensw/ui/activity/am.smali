.class Lcom/alensw/ui/activity/am;
.super Lcom/alensw/ui/a/ao;


# instance fields
.field final synthetic a:Lcom/alensw/ui/activity/al;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/al;Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/am;->a:Lcom/alensw/ui/activity/al;

    invoke-direct {p0, p2, p3, p4}, Lcom/alensw/ui/a/ao;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->u:Lcom/alensw/a/ao;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->u:Lcom/alensw/a/ao;

    invoke-virtual {v0}, Lcom/alensw/a/ao;->c()V

    :cond_0
    return-void
.end method
