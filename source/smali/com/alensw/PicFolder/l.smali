.class Lcom/alensw/PicFolder/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/activity/o;


# instance fields
.field final synthetic a:Lcom/alensw/PicFolder/CropActivity;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/CropActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/l;->a:Lcom/alensw/PicFolder/CropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/PicFolder/l;->a:Lcom/alensw/PicFolder/CropActivity;

    invoke-static {p1, p2}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/PicFolder/CropActivity;->a(Landroid/content/Intent;)Z

    return-void
.end method
