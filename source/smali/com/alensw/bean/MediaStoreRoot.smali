.class public Lcom/alensw/bean/MediaStoreRoot;
.super Lcom/alensw/bean/CommonRoot;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const v0, 0x10000032

    invoke-direct {p0, p1, p2, v0}, Lcom/alensw/bean/CommonRoot;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public i()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/alensw/bean/MediaStoreRoot;->j:Landroid/net/Uri;

    if-nez v0, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/alensw/bean/MediaStoreRoot;->j:Landroid/net/Uri;

    :cond_0
    iget-object v0, p0, Lcom/alensw/bean/MediaStoreRoot;->j:Landroid/net/Uri;

    return-object v0
.end method

.method public synthetic k()Lcom/alensw/bean/CommonFolder;
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/bean/MediaStoreRoot;->l()Lcom/alensw/bean/MediaStoreFolder;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/alensw/bean/MediaStoreFolder;
    .locals 11

    const/4 v10, 0x1

    invoke-static {}, Lcom/alensw/PicFolder/QuickApp;->a()Lcom/alensw/PicFolder/QuickApp;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "moments_group"

    invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iget v3, p0, Lcom/alensw/bean/MediaStoreRoot;->e:I

    if-eqz v9, :cond_0

    const/high16 v0, -0x40000000    # -2.0f

    or-int/2addr v3, v0

    :cond_0
    new-instance v0, Lcom/alensw/bean/MediaStoreFolder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alensw/bean/MediaStoreRoot;->c:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alensw/bean/MediaStoreRoot;->g:J

    iget-wide v6, p0, Lcom/alensw/bean/MediaStoreRoot;->h:J

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/alensw/bean/MediaStoreFolder;-><init>(ILjava/lang/String;IJJLjava/lang/String;ZZ)V

    iget-object v1, v0, Lcom/alensw/bean/MediaStoreFolder;->n:Ljava/util/ArrayList;

    sget-object v2, Lcom/alensw/bean/MediaStoreFolder;->u:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/alensw/bean/MediaStoreFolder;->s()V

    return-object v0
.end method
