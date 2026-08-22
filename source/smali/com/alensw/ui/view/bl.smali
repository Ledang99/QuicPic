.class Lcom/alensw/ui/view/bl;
.super Lcom/alensw/ui/a/ao;


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/alensw/cloud/aa;

.field final synthetic c:I

.field final synthetic e:Lcom/alensw/ui/view/bc;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/bc;Landroid/app/Activity;Ljava/lang/String;ILandroid/net/Uri;Lcom/alensw/cloud/aa;I)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/bl;->e:Lcom/alensw/ui/view/bc;

    iput-object p5, p0, Lcom/alensw/ui/view/bl;->a:Landroid/net/Uri;

    iput-object p6, p0, Lcom/alensw/ui/view/bl;->b:Lcom/alensw/cloud/aa;

    iput p7, p0, Lcom/alensw/ui/view/bl;->c:I

    invoke-direct {p0, p2, p3, p4}, Lcom/alensw/ui/a/ao;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alensw/ui/view/bl;->e:Lcom/alensw/ui/view/bc;

    invoke-static {v0}, Lcom/alensw/ui/view/bc;->a(Lcom/alensw/ui/view/bc;)Lcom/alensw/PicFolder/GalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/PicFolder/GalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/view/bl;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/alensw/ui/view/bl;->b:Lcom/alensw/cloud/aa;

    invoke-virtual {v0}, Lcom/alensw/cloud/aa;->d()V

    iget-object v0, p0, Lcom/alensw/ui/view/bl;->b:Lcom/alensw/cloud/aa;

    invoke-virtual {v0}, Lcom/alensw/cloud/aa;->h()V

    return-void
.end method

.method protected b()V
    .locals 6

    iget-object v0, p0, Lcom/alensw/ui/view/bl;->e:Lcom/alensw/ui/view/bc;

    invoke-static {v0}, Lcom/alensw/ui/view/bc;->c(Lcom/alensw/ui/view/bc;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/alensw/ui/view/bl;->c:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alensw/ui/view/bl;->e:Lcom/alensw/ui/view/bc;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bc;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/alensw/ui/view/bl;->e:Lcom/alensw/ui/view/bc;

    iget v0, v0, Lcom/alensw/ui/view/bc;->c:I

    iget v1, p0, Lcom/alensw/ui/view/bl;->c:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/bl;->e:Lcom/alensw/ui/view/bc;

    iget v1, v0, Lcom/alensw/ui/view/bc;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/alensw/ui/view/bc;->c:I

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/view/bl;->e:Lcom/alensw/ui/view/bc;

    iget v0, v0, Lcom/alensw/ui/view/bc;->c:I

    iget v1, p0, Lcom/alensw/ui/view/bl;->c:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/bl;->e:Lcom/alensw/ui/view/bc;

    iget v0, v0, Lcom/alensw/ui/view/bc;->c:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/bl;->e:Lcom/alensw/ui/view/bc;

    iget v0, v0, Lcom/alensw/ui/view/bc;->c:I

    iget-object v1, p0, Lcom/alensw/ui/view/bl;->e:Lcom/alensw/ui/view/bc;

    invoke-static {v1}, Lcom/alensw/ui/view/bc;->c(Lcom/alensw/ui/view/bc;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/bl;->e:Lcom/alensw/ui/view/bc;

    invoke-static {v0}, Lcom/alensw/ui/view/bc;->d(Lcom/alensw/ui/view/bc;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alensw/ui/view/bl;->e:Lcom/alensw/ui/view/bc;

    iget v2, v2, Lcom/alensw/ui/view/bc;->c:I

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_1
    return-void
.end method
