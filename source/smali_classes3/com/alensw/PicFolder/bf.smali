.class Lcom/alensw/PicFolder/bf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/alensw/PicFolder/WallpaperActivity;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/WallpaperActivity;Ljava/util/ArrayList;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/bf;->c:Lcom/alensw/PicFolder/WallpaperActivity;

    iput-object p2, p0, Lcom/alensw/PicFolder/bf;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/alensw/PicFolder/bf;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v0, p0, Lcom/alensw/PicFolder/bf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/alensw/PicFolder/bf;->c:Lcom/alensw/PicFolder/WallpaperActivity;

    iget-object v2, p0, Lcom/alensw/PicFolder/bf;->b:Landroid/content/Intent;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/alensw/PicFolder/WallpaperActivity;->a(Landroid/content/Intent;II)V

    return-void
.end method
