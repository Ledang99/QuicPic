.class Lcom/alensw/PicFolder/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Z

.field final synthetic d:Ljava/io/File;

.field final synthetic e:Lcom/alensw/PicFolder/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/GalleryActivity;ZLandroid/content/Intent;ZLjava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/ac;->e:Lcom/alensw/PicFolder/GalleryActivity;

    iput-boolean p2, p0, Lcom/alensw/PicFolder/ac;->a:Z

    iput-object p3, p0, Lcom/alensw/PicFolder/ac;->b:Landroid/content/Intent;

    iput-boolean p4, p0, Lcom/alensw/PicFolder/ac;->c:Z

    iput-object p5, p0, Lcom/alensw/PicFolder/ac;->d:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/alensw/PicFolder/ac;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/ac;->e:Lcom/alensw/PicFolder/GalleryActivity;

    const-class v1, Lcom/alensw/ui/c/bz;

    iget-object v2, p0, Lcom/alensw/PicFolder/ac;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v4}, Lcom/alensw/PicFolder/GalleryActivity;->a(Ljava/lang/Class;Landroid/content/Intent;Landroid/os/Bundle;)Lcom/alensw/ui/c/cu;

    :cond_0
    iget-boolean v0, p0, Lcom/alensw/PicFolder/ac;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/alensw/PicFolder/ac;->c:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/alensw/PicFolder/ac;->e:Lcom/alensw/PicFolder/GalleryActivity;

    const-class v1, Lcom/alensw/ui/c/bf;

    iget-object v2, p0, Lcom/alensw/PicFolder/ac;->d:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/alensw/PicFolder/ac;->b:Landroid/content/Intent;

    invoke-static {v4, v2, v3}, Lcom/alensw/PicFolder/GalleryActivity;->a(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/alensw/PicFolder/GalleryActivity;->a(Ljava/lang/Class;Landroid/content/Intent;Landroid/os/Bundle;)Lcom/alensw/ui/c/cu;

    :cond_2
    iget-boolean v0, p0, Lcom/alensw/PicFolder/ac;->c:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alensw/PicFolder/ac;->e:Lcom/alensw/PicFolder/GalleryActivity;

    const-class v1, Lcom/alensw/ui/c/dp;

    iget-object v2, p0, Lcom/alensw/PicFolder/ac;->d:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/alensw/PicFolder/ac;->b:Landroid/content/Intent;

    invoke-static {v4, v2, v3}, Lcom/alensw/PicFolder/GalleryActivity;->a(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/alensw/PicFolder/GalleryActivity;->a(Ljava/lang/Class;Landroid/content/Intent;Landroid/os/Bundle;)Lcom/alensw/ui/c/cu;

    :cond_3
    return-void
.end method
