.class public Lcom/alensw/cloud/a/aa;
.super Lcom/alensw/cloud/a/ae;


# instance fields
.field private c:Lcom/alensw/cloud/oauth/ab;

.field private final d:Lcom/alensw/cloud/a/ah;

.field private final e:Lcom/alensw/cloud/a/ah;

.field private final f:Lcom/alensw/cloud/a/ah;

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alensw/cloud/oauth/a;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/alensw/cloud/a/ae;-><init>(Landroid/content/Context;Lcom/alensw/cloud/oauth/a;)V

    new-instance v0, Lcom/alensw/cloud/a/aj;

    invoke-direct {v0, p0}, Lcom/alensw/cloud/a/aj;-><init>(Lcom/alensw/cloud/a/ae;)V

    iput-object v0, p0, Lcom/alensw/cloud/a/aa;->d:Lcom/alensw/cloud/a/ah;

    new-instance v0, Lcom/alensw/cloud/a/ak;

    invoke-direct {v0, p0}, Lcom/alensw/cloud/a/ak;-><init>(Lcom/alensw/cloud/a/ae;)V

    iput-object v0, p0, Lcom/alensw/cloud/a/aa;->e:Lcom/alensw/cloud/a/ah;

    new-instance v0, Lcom/alensw/cloud/a/al;

    invoke-direct {v0, p0}, Lcom/alensw/cloud/a/al;-><init>(Lcom/alensw/cloud/a/ae;)V

    iput-object v0, p0, Lcom/alensw/cloud/a/aa;->f:Lcom/alensw/cloud/a/ah;

    iget-object v0, p2, Lcom/alensw/cloud/oauth/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/alensw/cloud/a/aa;->g:Ljava/lang/String;

    new-instance v0, Lcom/alensw/cloud/oauth/u;

    invoke-direct {v0}, Lcom/alensw/cloud/oauth/u;-><init>()V

    iput-object v0, p0, Lcom/alensw/cloud/a/aa;->c:Lcom/alensw/cloud/oauth/ab;

    iget-object v0, p0, Lcom/alensw/cloud/a/aa;->c:Lcom/alensw/cloud/oauth/ab;

    iget-object v1, p2, Lcom/alensw/cloud/oauth/a;->g:Lcom/alensw/cloud/oauth/aj;

    invoke-virtual {v0, v1}, Lcom/alensw/cloud/oauth/ab;->a(Lcom/alensw/cloud/oauth/aj;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "document_id"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mime_type"

    const-string v2, "vnd.android.document/directory"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "flags"

    invoke-virtual {p0}, Lcom/alensw/cloud/a/aa;->e()I

    move-result v2

    or-int/lit8 v2, v2, 0x2

    const/high16 v3, -0x80000000

    or-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/i;Lcom/alensw/b/e/e;)Landroid/content/ContentValues;
    .locals 11

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, v6, v0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    const-string v2, "content_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "photo"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hidden"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "is_public"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "0"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "is_friend"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "0"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "is_family"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "0"

    aput-object v2, v0, v1

    invoke-static {v7, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    iget-object v0, p0, Lcom/alensw/cloud/a/aa;->c:Lcom/alensw/cloud/oauth/ab;

    const-string v1, "https://api.flickr.com/services/upload/"

    const-string v2, "POST"

    invoke-virtual {v0, v1, v2, v7, v4}, Lcom/alensw/cloud/oauth/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/TreeMap;)Ljava/lang/String;

    const-string v8, "https://api.flickr.com/services/upload/"

    const-string v9, "POST"

    invoke-virtual {p0}, Lcom/alensw/cloud/a/aa;->b()Ljava/util/HashMap;

    move-result-object v10

    new-instance v0, Lcom/alensw/cloud/a/ab;

    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/alensw/cloud/a/ab;-><init>(Lcom/alensw/cloud/a/aa;ILcom/alensw/b/e/f;Ljava/util/TreeMap;Lcom/alensw/b/e/i;[Ljava/lang/String;)V

    invoke-static {v8, v9, v10, v0}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V

    const/4 v0, 0x0

    aget-object v0, v6, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Create file failed: photoid is empty"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "/album/all/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/album/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/album/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7}, Ljava/util/List;->clear()V

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "method"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "flickr.photosets.addPhoto"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "photoset_id"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const/4 v0, 0x4

    const-string v2, "photo_id"

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const/4 v2, 0x0

    aget-object v2, v6, v2

    aput-object v2, v1, v0

    invoke-static {v7, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string v0, "https://api.flickr.com/services/rest"

    const-string v1, "POST"

    invoke-virtual {p0, v0, v1, v7}, Lcom/alensw/cloud/a/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {p0}, Lcom/alensw/cloud/a/aa;->b()Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Lcom/alensw/cloud/a/ac;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4, p4}, Lcom/alensw/cloud/a/ac;-><init>(Lcom/alensw/cloud/a/aa;ILcom/alensw/b/e/f;)V

    invoke-static {v0, v1, v2, v3}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "document_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v6, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "nojsoncallback"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "format"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "json"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/alensw/cloud/a/aa;->c:Lcom/alensw/cloud/oauth/ab;

    invoke-virtual {v1, p1, p2, v0}, Lcom/alensw/cloud/oauth/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/alensw/cloud/a/az;ILcom/alensw/b/e/f;)Z
    .locals 9

    const-string v0, "/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/alensw/cloud/a/aa;->e:Lcom/alensw/cloud/a/ah;

    const-string v3, "/album/"

    const/16 v5, 0x1f4

    const/4 v0, 0x2

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "primary_photo_extras"

    aput-object v2, v7, v0

    const/4 v0, 0x1

    const-string v2, "date_taken,original_format,last_update,geo,media,url_m,url_o,url_l,url_c"

    aput-object v2, v7, v0

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/alensw/cloud/a/aa;->a(Lcom/alensw/cloud/a/ah;Lcom/alensw/cloud/a/az;Ljava/lang/String;IILcom/alensw/b/e/f;[Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {p2}, Lcom/alensw/cloud/a/az;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/alensw/cloud/a/aa;->d:Lcom/alensw/cloud/a/ah;

    const-string v3, "/"

    const/16 v5, 0x1f4

    const/4 v0, 0x4

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "user_id"

    aput-object v2, v7, v0

    const/4 v0, 0x1

    const-string v2, "me"

    aput-object v2, v7, v0

    const/4 v0, 0x2

    const-string v2, "extras"

    aput-object v2, v7, v0

    const/4 v0, 0x3

    const-string v2, "date_taken,original_format,last_update,geo,media,url_m,url_o,url_l,url_c"

    aput-object v2, v7, v0

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/alensw/cloud/a/aa;->a(Lcom/alensw/cloud/a/ah;Lcom/alensw/cloud/a/az;Ljava/lang/String;IILcom/alensw/b/e/f;[Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v2, Lcom/alensw/cloud/a/az;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Lcom/alensw/cloud/a/az;-><init>(I)V

    iget-object v1, p0, Lcom/alensw/cloud/a/aa;->d:Lcom/alensw/cloud/a/ah;

    const-string v3, "/album/"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x4

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v6, "user_id"

    aput-object v6, v7, v0

    const/4 v0, 0x1

    const-string v6, "me"

    aput-object v6, v7, v0

    const/4 v0, 0x2

    const-string v6, "extras"

    aput-object v6, v7, v0

    const/4 v0, 0x3

    const-string v6, "date_taken,original_format,last_update,geo,media,url_m,url_o,url_l,url_c"

    aput-object v6, v7, v0

    move-object v0, p0

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/alensw/cloud/a/aa;->a(Lcom/alensw/cloud/a/ah;Lcom/alensw/cloud/a/az;Ljava/lang/String;IILcom/alensw/b/e/f;[Ljava/lang/String;)Z

    invoke-virtual {v2}, Lcom/alensw/cloud/a/az;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/alensw/cloud/a/az;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "document_id"

    const-string v2, "/album/all/"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_display_name"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alensw/cloud/a/aa;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00a9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mime_type"

    const-string v2, "vnd.android.document/directory"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "flags"

    invoke-virtual {p0}, Lcom/alensw/cloud/a/aa;->e()I

    move-result v2

    or-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p2, v0}, Lcom/alensw/cloud/a/az;->add(Ljava/lang/Object;)Z

    :cond_1
    move v0, v8

    goto/16 :goto_0

    :cond_2
    const-string v0, "/album/all/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/alensw/cloud/a/aa;->d:Lcom/alensw/cloud/a/ah;

    const-string v3, "/album/all/"

    const/16 v5, 0x1f4

    const/4 v0, 0x4

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "user_id"

    aput-object v2, v7, v0

    const/4 v0, 0x1

    const-string v2, "me"

    aput-object v2, v7, v0

    const/4 v0, 0x2

    const-string v2, "extras"

    aput-object v2, v7, v0

    const/4 v0, 0x3

    const-string v2, "date_taken,original_format,last_update,geo,media,url_m,url_o,url_l,url_c"

    aput-object v2, v7, v0

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/alensw/cloud/a/aa;->a(Lcom/alensw/cloud/a/ah;Lcom/alensw/cloud/a/az;Ljava/lang/String;IILcom/alensw/b/e/f;[Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    :cond_3
    const-string v0, "/album/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/alensw/cloud/a/aa;->f:Lcom/alensw/cloud/a/ah;

    const/16 v5, 0x1f4

    const/4 v0, 0x6

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "user_id"

    aput-object v2, v7, v0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/alensw/cloud/a/aa;->g:Ljava/lang/String;

    aput-object v2, v7, v0

    const/4 v0, 0x2

    const-string v2, "extras"

    aput-object v2, v7, v0

    const/4 v0, 0x3

    const-string v2, "date_taken,original_format,last_update,geo,media,url_m,url_o,url_l,url_c"

    aput-object v2, v7, v0

    const/4 v0, 0x4

    const-string v2, "photoset_id"

    aput-object v2, v7, v0

    const/4 v0, 0x5

    const-string v2, "/album/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/alensw/cloud/a/aa;->a(Lcom/alensw/cloud/a/ah;Lcom/alensw/cloud/a/az;Ljava/lang/String;IILcom/alensw/b/e/f;[Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public c(Ljava/lang/String;Lcom/alensw/b/e/f;)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/album/all/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "method"

    aput-object v3, v2, v6

    const-string v3, "flickr.photos.delete"

    aput-object v3, v2, v5

    const-string v3, "photo_id"

    aput-object v3, v2, v7

    aput-object v1, v2, v8

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :goto_0
    const-string v1, "https://api.flickr.com/services/rest"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v2, v0}, Lcom/alensw/cloud/a/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {p0}, Lcom/alensw/cloud/a/aa;->b()Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Lcom/alensw/cloud/a/ad;

    invoke-direct {v3, p0, v5, p2}, Lcom/alensw/cloud/a/ad;-><init>(Lcom/alensw/cloud/a/aa;ILcom/alensw/b/e/f;)V

    invoke-static {v0, v1, v2, v3}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V

    return-void

    :cond_1
    const-string v2, "/album/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "method"

    aput-object v4, v3, v6

    const-string v4, "flickr.photosets.removePhoto"

    aput-object v4, v3, v5

    const-string v4, "photoset_id"

    aput-object v4, v3, v7

    aput-object v2, v3, v8

    const-string v2, "photo_id"

    aput-object v2, v3, v9

    const/4 v2, 0x5

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public e()I
    .locals 1

    const v0, 0x20000031

    return v0
.end method
