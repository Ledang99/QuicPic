.class Lcom/alensw/PicFolder/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/PicFolder/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/GalleryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/ak;->a:Lcom/alensw/PicFolder/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6

    iget-object v0, p0, Lcom/alensw/PicFolder/ak;->a:Lcom/alensw/PicFolder/GalleryActivity;

    invoke-static {v0}, Lcom/alensw/PicFolder/GalleryActivity;->a(Lcom/alensw/PicFolder/GalleryActivity;)Lcom/alensw/ui/view/bc;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alensw/ui/view/bc;->b(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method
