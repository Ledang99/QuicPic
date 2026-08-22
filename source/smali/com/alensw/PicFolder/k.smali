.class Lcom/alensw/PicFolder/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/b/g/k;


# instance fields
.field final synthetic a:Lcom/alensw/PicFolder/CropActivity;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/CropActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/k;->a:Lcom/alensw/PicFolder/CropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/k;->a:Lcom/alensw/PicFolder/CropActivity;

    invoke-virtual {v0, p1}, Lcom/alensw/PicFolder/CropActivity;->b(Landroid/view/Menu;)V

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
