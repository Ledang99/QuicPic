.class Lcom/alensw/PicFolder/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/alensw/PicFolder/CropActivity;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/CropActivity;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/m;->b:Lcom/alensw/PicFolder/CropActivity;

    iput-object p2, p0, Lcom/alensw/PicFolder/m;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/alensw/PicFolder/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/alensw/PicFolder/m;->b:Lcom/alensw/PicFolder/CropActivity;

    invoke-static {v1}, Lcom/alensw/PicFolder/CropActivity;->a(Lcom/alensw/PicFolder/CropActivity;)Lcom/alensw/PicFolder/q;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/PicFolder/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/alensw/PicFolder/q;->c:F

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/alensw/PicFolder/m;->b:Lcom/alensw/PicFolder/CropActivity;

    invoke-static {v0}, Lcom/alensw/PicFolder/CropActivity;->a(Lcom/alensw/PicFolder/CropActivity;)Lcom/alensw/PicFolder/q;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/alensw/PicFolder/q;->c:F

    goto :goto_0
.end method
