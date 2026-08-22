.class Lcom/alensw/PicFolder/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/alensw/PicFolder/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/GalleryActivity;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/ad;->b:Lcom/alensw/PicFolder/GalleryActivity;

    iput-object p2, p0, Lcom/alensw/PicFolder/ad;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/alensw/PicFolder/ad;->b:Lcom/alensw/PicFolder/GalleryActivity;

    const-class v1, Lcom/alensw/ui/c/z;

    iget-object v2, p0, Lcom/alensw/PicFolder/ad;->a:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alensw/PicFolder/GalleryActivity;->a(Ljava/lang/Class;Landroid/content/Intent;Landroid/os/Bundle;)Lcom/alensw/ui/c/cu;

    return-void
.end method
