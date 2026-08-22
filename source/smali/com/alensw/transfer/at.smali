.class Lcom/alensw/transfer/at;
.super Landroid/text/style/ClickableSpan;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alensw/transfer/ac;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/ac;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/at;->b:Lcom/alensw/transfer/ac;

    iput-object p2, p0, Lcom/alensw/transfer/at;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.TetherSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alensw/transfer/at;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method
