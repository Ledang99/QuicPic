.class Lcom/alensw/PicFolder/at;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/alensw/PicFolder/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/at;->a:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    const-string v3, "level"

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "status"

    invoke-virtual {p2, v4, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    mul-int/lit8 v3, v3, 0x64

    div-int v2, v3, v2

    iget-object v3, p0, Lcom/alensw/PicFolder/at;->a:Lcom/alensw/PicFolder/PlayerActivity;

    iget-object v3, v3, Lcom/alensw/PicFolder/PlayerActivity;->w:Lcom/alensw/ui/d/b;

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v3, v2, v0}, Lcom/alensw/ui/d/b;->a(IZ)V

    iget-object v0, p0, Lcom/alensw/PicFolder/at;->a:Lcom/alensw/PicFolder/PlayerActivity;

    iget-object v0, v0, Lcom/alensw/PicFolder/PlayerActivity;->m:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/PicFolder/at;->a:Lcom/alensw/PicFolder/PlayerActivity;

    iget-object v0, v0, Lcom/alensw/PicFolder/PlayerActivity;->m:Landroid/view/MenuItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/alensw/PicFolder/at;->a:Lcom/alensw/PicFolder/PlayerActivity;

    iget-object v0, v0, Lcom/alensw/PicFolder/PlayerActivity;->m:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method
