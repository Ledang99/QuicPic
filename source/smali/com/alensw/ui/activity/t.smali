.class Lcom/alensw/ui/activity/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/activity/p;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/p;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/t;->a:Lcom/alensw/ui/activity/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.content.extra.SHOW_ADVANCED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alensw/ui/activity/t;->a:Lcom/alensw/ui/activity/p;

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Lcom/alensw/ui/activity/a;->a(Landroid/app/Activity;Landroid/content/Intent;I)Z

    return-void
.end method
