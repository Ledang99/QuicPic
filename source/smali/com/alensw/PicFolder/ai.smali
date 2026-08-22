.class Lcom/alensw/PicFolder/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/PicFolder/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/GalleryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/ai;->a:Lcom/alensw/PicFolder/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    iget-object v0, p0, Lcom/alensw/PicFolder/ai;->a:Lcom/alensw/PicFolder/GalleryActivity;

    invoke-static {v0}, Lcom/alensw/PicFolder/GalleryActivity;->b(Lcom/alensw/PicFolder/GalleryActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->d(I)V

    iget-object v0, p0, Lcom/alensw/PicFolder/ai;->a:Lcom/alensw/PicFolder/GalleryActivity;

    invoke-static {v0}, Lcom/alensw/PicFolder/GalleryActivity;->a(Lcom/alensw/PicFolder/GalleryActivity;)Lcom/alensw/ui/view/bc;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/alensw/ui/view/bc;->c(I)Lcom/alensw/bean/CommonRoot;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, v6, Lcom/alensw/bean/CommonRoot;->n:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, v6, Lcom/alensw/bean/CommonRoot;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/alensw/ui/view/bc;->b(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Lcom/alensw/PicFolder/aj;

    invoke-direct {v1, p0, p3, v6}, Lcom/alensw/PicFolder/aj;-><init>(Lcom/alensw/PicFolder/ai;ILcom/alensw/bean/CommonRoot;)V

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/PicFolder/ai;->a:Lcom/alensw/PicFolder/GalleryActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "last_drive"

    iget-object v3, v6, Lcom/alensw/bean/CommonRoot;->n:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_1
    invoke-static {v6}, Lcom/alensw/ui/view/bc;->a(Lcom/alensw/bean/CommonRoot;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alensw/PicFolder/ai;->a:Lcom/alensw/PicFolder/GalleryActivity;

    sget-object v2, Lcom/alensw/b/f/b;->b:Lcom/alensw/b/f/b;

    invoke-static {v1, v2, v0}, Lcom/alensw/b/f/a;->a(Landroid/content/Context;Lcom/alensw/b/f/b;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alensw/PicFolder/ai;->a:Lcom/alensw/PicFolder/GalleryActivity;

    const-string v2, "protect_cloud"

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/alensw/ui/a/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alensw/PicFolder/ai;->a:Lcom/alensw/PicFolder/GalleryActivity;

    invoke-static {v0}, Lcom/alensw/PicFolder/GalleryActivity;->a(Lcom/alensw/PicFolder/GalleryActivity;)Lcom/alensw/ui/view/bc;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alensw/ui/view/bc;->a(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    goto :goto_1
.end method
