.class Lcom/alensw/PicFolder/av;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/b/g/k;


# instance fields
.field final synthetic a:Lcom/alensw/PicFolder/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/av;->a:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;Landroid/view/View;)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/alensw/PicFolder/av;->a:Lcom/alensw/PicFolder/PlayerActivity;

    iget-object v1, v1, Lcom/alensw/PicFolder/PlayerActivity;->u:[Landroid/media/MediaPlayer$TrackInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/alensw/PicFolder/av;->a:Lcom/alensw/PicFolder/PlayerActivity;

    iget-object v1, v1, Lcom/alensw/PicFolder/PlayerActivity;->u:[Landroid/media/MediaPlayer$TrackInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Landroid/media/MediaPlayer$TrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "und"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/alensw/PicFolder/aw;

    invoke-direct {v2, p0, v0}, Lcom/alensw/PicFolder/aw;-><init>(Lcom/alensw/PicFolder/av;I)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method
