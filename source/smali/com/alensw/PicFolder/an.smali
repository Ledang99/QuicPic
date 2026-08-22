.class Lcom/alensw/PicFolder/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/PicFolder/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/an;->a:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alensw/PicFolder/an;->a:Lcom/alensw/PicFolder/PlayerActivity;

    iget-object v0, p0, Lcom/alensw/PicFolder/an;->a:Lcom/alensw/PicFolder/PlayerActivity;

    iget-boolean v0, v0, Lcom/alensw/PicFolder/PlayerActivity;->s:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v2, Lcom/alensw/PicFolder/PlayerActivity;->s:Z

    iget-object v0, p0, Lcom/alensw/PicFolder/an;->a:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-virtual {v0, v1}, Lcom/alensw/PicFolder/PlayerActivity;->b(Z)I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
