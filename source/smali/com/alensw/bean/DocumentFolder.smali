.class public Lcom/alensw/bean/DocumentFolder;
.super Lcom/alensw/bean/CommonFolder;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final w:[Ljava/lang/String;


# instance fields
.field protected final u:Ljava/lang/String;

.field protected final v:Ljava/lang/String;

.field private x:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "document_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "last_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "comment"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alensw/bean/DocumentFolder;->w:[Ljava/lang/String;

    new-instance v0, Lcom/alensw/bean/h;

    invoke-direct {v0}, Lcom/alensw/bean/h;-><init>()V

    sput-object v0, Lcom/alensw/bean/DocumentFolder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;C)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/alensw/bean/CommonFolder;-><init>(Landroid/os/Parcel;C)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/bean/DocumentFolder;->u:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/bean/DocumentFolder;->v:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v3, v0

    const/16 v0, 0x44

    if-ne v3, v0, :cond_0

    new-instance v0, Lcom/alensw/bean/DocumentFolder;

    invoke-direct {v0, p1, v3}, Lcom/alensw/bean/DocumentFolder;-><init>(Landroid/os/Parcel;C)V

    :goto_1
    iget-object v3, p0, Lcom/alensw/bean/DocumentFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/alensw/bean/DocumentFile;

    invoke-direct {v0, p1, v3}, Lcom/alensw/bean/DocumentFile;-><init>(Landroid/os/Parcel;C)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/alensw/bean/CommonFile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alensw/bean/CommonFolder;-><init>(Lcom/alensw/bean/CommonFile;)V

    iput-object p2, p0, Lcom/alensw/bean/DocumentFolder;->u:Ljava/lang/String;

    if-eqz p3, :cond_0

    :goto_0
    iput-object p3, p0, Lcom/alensw/bean/DocumentFolder;->v:Ljava/lang/String;

    return-void

    :cond_0
    const-string p3, ""

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;)V
    .locals 9

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move-wide v4, p5

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Lcom/alensw/bean/CommonFolder;-><init>(Ljava/lang/String;IJJLjava/lang/String;)V

    iput-object p1, p0, Lcom/alensw/bean/DocumentFolder;->u:Ljava/lang/String;

    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/alensw/bean/DocumentFolder;->v:Ljava/lang/String;

    return-void

    :cond_0
    const-string p2, ""

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/net/Uri;)I
    .locals 5

    iget-object v0, p0, Lcom/alensw/bean/DocumentFolder;->u:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/alensw/bean/CommonFolder;->a(Landroid/net/Uri;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alensw/b/j/a;->b(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    iget-object v0, p0, Lcom/alensw/bean/DocumentFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    iget-object v0, p0, Lcom/alensw/bean/DocumentFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/bean/CommonFile;

    instance-of v4, v0, Lcom/alensw/bean/DocumentFile;

    if-eqz v4, :cond_1

    check-cast v0, Lcom/alensw/bean/DocumentFile;

    iget-object v0, v0, Lcom/alensw/bean/DocumentFile;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-super {p0, p1}, Lcom/alensw/bean/CommonFolder;->a(Landroid/net/Uri;)I

    move-result v0

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-super {p0, p1}, Lcom/alensw/bean/CommonFolder;->a(Landroid/net/Uri;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/alensw/bean/DocumentFolder;->q()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/alensw/bean/DocumentFolder;->w:[Ljava/lang/String;

    move-object v0, p1

    move-object v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Z)Lcom/alensw/bean/CommonFolder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alensw/bean/DocumentFolder;->b(Z)Lcom/alensw/bean/DocumentFolder;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/Cursor;Ljava/util/Set;)V
    .locals 12

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz p2, :cond_1

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-static {v0, v4}, Lcom/alensw/bean/CommonFile;->a(Ljava/lang/String;Ljava/lang/String;)C

    move-result v0

    const/16 v1, 0x44

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alensw/bean/DocumentFolder;->n:Ljava/util/ArrayList;

    new-instance v1, Lcom/alensw/bean/DocumentFolder;

    iget-object v2, p0, Lcom/alensw/bean/DocumentFolder;->u:Ljava/lang/String;

    invoke-direct/range {v1 .. v10}, Lcom/alensw/bean/DocumentFolder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    return-void
.end method

.method public a(Landroid/content/ContentResolver;)[Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_size"

    aput-object v0, v2, v1

    const-string v0, "last_modified"

    aput-object v0, v2, v3

    :try_start_0
    invoke-virtual {p0}, Lcom/alensw/bean/DocumentFolder;->i()Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v6

    :goto_2
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method public b(Z)Lcom/alensw/bean/DocumentFolder;
    .locals 3

    new-instance v0, Lcom/alensw/bean/DocumentFolder;

    iget-object v1, p0, Lcom/alensw/bean/DocumentFolder;->u:Ljava/lang/String;

    iget-object v2, p0, Lcom/alensw/bean/DocumentFolder;->v:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/alensw/bean/DocumentFolder;-><init>(Lcom/alensw/bean/CommonFile;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/alensw/bean/DocumentFolder;->k:I

    iput v1, v0, Lcom/alensw/bean/DocumentFolder;->k:I

    iget v1, p0, Lcom/alensw/bean/DocumentFolder;->l:I

    iput v1, v0, Lcom/alensw/bean/DocumentFolder;->l:I

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/alensw/bean/DocumentFolder;->a(Lcom/alensw/bean/CommonFolder;Z)V

    :cond_0
    return-object v0
.end method

.method public b(Landroid/content/ContentResolver;)V
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/bean/DocumentFolder;->q()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alensw/b/j/a;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-void
.end method

.method public b(Landroid/database/Cursor;Ljava/util/Set;)V
    .locals 27

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/bean/DocumentFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/bean/DocumentFolder;->n:Ljava/util/ArrayList;

    add-int/2addr v2, v3

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    const/4 v2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v8, 0x3e8

    div-long v8, v2, v8

    const/4 v2, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v10, 0x3e8

    div-long v10, v2, v10

    const/4 v2, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move-object/from16 v0, v18

    invoke-static {v0, v6}, Lcom/alensw/bean/CommonFile;->a(Ljava/lang/String;Ljava/lang/String;)C

    move-result v14

    const/16 v2, 0x44

    if-ne v14, v2, :cond_4

    new-instance v3, Lcom/alensw/bean/DocumentFolder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/bean/DocumentFolder;->u:Ljava/lang/String;

    invoke-direct/range {v3 .. v12}, Lcom/alensw/bean/DocumentFolder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/bean/DocumentFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    return-void

    :cond_4
    new-instance v13, Lcom/alensw/bean/DocumentFile;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alensw/bean/DocumentFolder;->u:Ljava/lang/String;

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move/from16 v19, v7

    move-wide/from16 v22, v8

    move-wide/from16 v24, v10

    move-object/from16 v26, v12

    invoke-direct/range {v13 .. v26}, Lcom/alensw/bean/DocumentFile;-><init>(CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJLjava/lang/String;)V

    move-object v3, v13

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/alensw/bean/DocumentFolder;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/alensw/bean/DocumentFolder;

    iget-wide v2, p0, Lcom/alensw/bean/DocumentFolder;->g:J

    iget-wide v4, p1, Lcom/alensw/bean/DocumentFolder;->g:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-char v2, p0, Lcom/alensw/bean/DocumentFolder;->b:C

    iget-char v3, p1, Lcom/alensw/bean/DocumentFolder;->b:C

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/alensw/bean/DocumentFolder;->v:Ljava/lang/String;

    iget-object v3, p1, Lcom/alensw/bean/DocumentFolder;->v:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/alensw/bean/DocumentFolder;->v:Ljava/lang/String;

    iget-object v3, p1, Lcom/alensw/bean/DocumentFolder;->v:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/alensw/bean/DocumentFolder;->v:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-wide v2, p0, Lcom/alensw/bean/DocumentFolder;->g:J

    long-to-int v1, v2

    add-int/2addr v0, v1

    iget-char v1, p0, Lcom/alensw/bean/DocumentFolder;->b:C

    add-int/2addr v0, v1

    return v0
.end method

.method public i()Landroid/net/Uri;
    .locals 2

    iget-object v0, p0, Lcom/alensw/bean/DocumentFolder;->j:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/bean/DocumentFolder;->u:Ljava/lang/String;

    iget-object v1, p0, Lcom/alensw/bean/DocumentFolder;->v:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alensw/b/j/a;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/bean/DocumentFolder;->j:Landroid/net/Uri;

    :cond_0
    iget-object v0, p0, Lcom/alensw/bean/DocumentFolder;->j:Landroid/net/Uri;

    return-object v0
.end method

.method public q()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/alensw/bean/DocumentFolder;->x:Landroid/net/Uri;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/bean/DocumentFolder;->i()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/b/j/a;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/bean/DocumentFolder;->x:Landroid/net/Uri;

    :cond_0
    iget-object v0, p0, Lcom/alensw/bean/DocumentFolder;->x:Landroid/net/Uri;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alensw/bean/DocumentFolder;->v:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/alensw/bean/CommonFolder;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/alensw/bean/DocumentFolder;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alensw/bean/DocumentFolder;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alensw/bean/DocumentFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/alensw/bean/DocumentFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0, p1, p2}, Lcom/alensw/bean/CommonFile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
