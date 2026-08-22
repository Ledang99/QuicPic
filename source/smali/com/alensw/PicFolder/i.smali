.class Lcom/alensw/PicFolder/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/PicFolder/CropActivity;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/CropActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/i;->a:Lcom/alensw/PicFolder/CropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    aget v0, v5, v1

    add-int/2addr v0, v4

    div-int/lit8 v3, v3, 0x2

    if-ge v0, v3, :cond_0

    const/16 v0, 0x30

    :goto_0
    or-int/lit8 v0, v0, 0x3

    aget v2, v5, v2

    invoke-virtual {v6, v0, v2, v4}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    move v0, v1

    :goto_1
    return v0

    :cond_0
    const/16 v0, 0x50

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method
