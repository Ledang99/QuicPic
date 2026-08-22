.class Lcom/alensw/ui/c/dl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/activity/o;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/alensw/ui/c/df;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/df;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/dl;->b:Lcom/alensw/ui/c/df;

    iput-object p2, p0, Lcom/alensw/ui/c/dl;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .locals 2

    const-class v0, Lcom/alensw/PicFolder/CropActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/dl;->b:Lcom/alensw/ui/c/df;

    invoke-static {v0}, Lcom/alensw/ui/c/df;->a(Lcom/alensw/ui/c/df;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/alensw/PicFolder/CropActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alensw/ui/c/dl;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/dl;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/dl;->b:Lcom/alensw/ui/c/df;

    invoke-static {v0}, Lcom/alensw/ui/c/df;->a(Lcom/alensw/ui/c/df;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lcom/alensw/ui/activity/a;->a(Landroid/app/Activity;Landroid/content/Intent;I)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/dl;->b:Lcom/alensw/ui/c/df;

    invoke-static {v0}, Lcom/alensw/ui/c/df;->a(Lcom/alensw/ui/c/df;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    goto :goto_0
.end method
