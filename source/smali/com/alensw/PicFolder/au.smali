.class Lcom/alensw/PicFolder/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/PicFolder/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/au;->a:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/PicFolder/au;->a:Lcom/alensw/PicFolder/PlayerActivity;

    iget-object v0, v0, Lcom/alensw/PicFolder/PlayerActivity;->k:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    iget-object v0, p0, Lcom/alensw/PicFolder/au;->a:Lcom/alensw/PicFolder/PlayerActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alensw/PicFolder/PlayerActivity;->b(Z)I

    iget-object v0, p0, Lcom/alensw/PicFolder/au;->a:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/PlayerActivity;->c()V

    return-void
.end method
