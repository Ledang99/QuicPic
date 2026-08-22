.class public Lcom/alensw/bean/MediaStoreFolder;
.super Lcom/alensw/bean/CommonFolder;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field protected static final u:Ljava/util/HashMap;

.field public static final v:[Ljava/lang/String;


# instance fields
.field private A:Landroid/content/Context;

.field private B:Lcom/alensw/b/d/f;

.field private C:Lcom/alensw/a/o;

.field private D:Z

.field private E:Ljava/util/ArrayList;

.field private F:Ljava/util/ArrayList;

.field private final w:Z

.field private final x:Z

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alensw/bean/MediaStoreFolder;->u:Ljava/util/HashMap;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "longitude"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alensw/bean/MediaStoreFolder;->v:[Ljava/lang/String;

    new-instance v0, Lcom/alensw/bean/m;

    invoke-direct {v0}, Lcom/alensw/bean/m;-><init>()V

    sput-object v0, Lcom/alensw/bean/MediaStoreFolder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IJJLjava/lang/String;ZZ)V
    .locals 12

    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v3 .. v10}, Lcom/alensw/bean/CommonFolder;-><init>(Ljava/lang/String;IJJLjava/lang/String;)V

    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/alensw/bean/MediaStoreFolder;->w:Z

    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/alensw/bean/MediaStoreFolder;->x:Z

    iput p1, p0, Lcom/alensw/bean/MediaStoreFolder;->y:I

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/alensw/bean/MediaStoreFolder;->z:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alensw/bean/MediaStoreFolder;->t()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;C)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/alensw/bean/CommonFolder;-><init>(Landroid/os/Parcel;C)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alensw/bean/MediaStoreFolder;->w:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/alensw/bean/MediaStoreFolder;->x:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alensw/bean/MediaStoreFolder;->y:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/bean/MediaStoreFolder;->z:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alensw/bean/MediaStoreFolder;->t()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    :goto_2
    if-ge v2, v1, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v3, v0

    const/16 v0, 0x44

    if-ne v3, v0, :cond_2

    new-instance v0, Lcom/alensw/bean/MediaStoreFolder;

    invoke-direct {v0, p1, v3}, Lcom/alensw/bean/MediaStoreFolder;-><init>(Landroid/os/Parcel;C)V

    :goto_3
    iget-object v3, p0, Lcom/alensw/bean/MediaStoreFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/alensw/bean/MediaStoreFile;

    invoke-direct {v0, p1, v3}, Lcom/alensw/bean/MediaStoreFile;-><init>(Landroid/os/Parcel;C)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method public constructor <init>(Lcom/alensw/bean/CommonFile;ZZ)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alensw/bean/CommonFolder;-><init>(Lcom/alensw/bean/CommonFile;)V

    iput-boolean p2, p0, Lcom/alensw/bean/MediaStoreFolder;->w:Z

    iput-boolean p3, p0, Lcom/alensw/bean/MediaStoreFolder;->x:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/bean/MediaStoreFolder;->y:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/bean/MediaStoreFolder;->z:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alensw/bean/MediaStoreFolder;->t()V

    return-void
.end method

.method private a(FF)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    cmpl-float v0, p1, v1

    if-nez v0, :cond_1

    cmpl-float v0, p2, v1

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1, p2}, Lcom/alensw/b/d/f;->a(FF)J

    move-result-wide v4

    iget-object v0, p0, Lcom/alensw/bean/MediaStoreFolder;->B:Lcom/alensw/b/d/f;

    invoke-virtual {v0, p1, p2, v4, v5}, Lcom/alensw/b/d/f;->a(FFJ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/alensw/bean/MediaStoreFolder;->B:Lcom/alensw/b/d/f;

    const/4 v6, 0x0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/alensw/b/d/f;->a(FFJLcom/alensw/b/d/g;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alensw/bean/MediaStoreFolder;->D:Z

    const-string v0, ""

    goto :goto_0
.end method

.method private a(J)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x34

    iget-object v1, p0, Lcom/alensw/bean/MediaStoreFolder;->A:Landroid/content/Context;

    invoke-static {v1, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/ContentResolver;C)V
    .locals 35

    new-instance v34, Ljava/util/GregorianCalendar;

    invoke-direct/range {v34 .. v34}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-static/range {v34 .. v34}, Lcom/alensw/bean/MediaStoreFolder;->b(Ljava/util/GregorianCalendar;)J

    move-result-wide v32

    invoke-static/range {v34 .. v34}, Lcom/alensw/bean/MediaStoreFolder;->a(Ljava/util/GregorianCalendar;)V

    invoke-virtual/range {v34 .. v34}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v30, v2, v4

    const-wide/16 v2, 0x3e8

    mul-long v2, v2, v32

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/alensw/bean/MediaStoreFolder;->a(J)Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/alensw/a/ba;->a(C)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/alensw/bean/MediaStoreFolder;->v:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "datetaken DESC"

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v25

    if-eqz v25, :cond_3

    :try_start_1
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/bean/MediaStoreFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/bean/MediaStoreFolder;->n:Ljava/util/ArrayList;

    add-int/2addr v2, v3

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :cond_0
    move-object v4, v9

    move-wide/from16 v2, v30

    move-wide/from16 v10, v32

    :goto_0
    const/4 v5, 0x5

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v5, 0x6

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    const-wide/16 v12, 0x0

    cmp-long v5, v8, v12

    if-eqz v5, :cond_5

    :goto_1
    cmp-long v5, v8, v10

    if-ltz v5, :cond_1

    cmp-long v5, v8, v2

    if-ltz v5, :cond_d

    :cond_1
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v8

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    invoke-static/range {v34 .. v34}, Lcom/alensw/bean/MediaStoreFolder;->b(Ljava/util/GregorianCalendar;)J

    move-result-wide v10

    invoke-static/range {v34 .. v34}, Lcom/alensw/bean/MediaStoreFolder;->a(Ljava/util/GregorianCalendar;)V

    invoke-virtual/range {v34 .. v34}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/alensw/bean/MediaStoreFolder;->a(J)Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v26, v2

    move-wide/from16 v28, v10

    :goto_2
    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/alensw/bean/MediaStoreFolder;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_2
    :goto_3
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_c

    :cond_3
    if-eqz v25, :cond_4

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_4
    return-void

    :cond_5
    move-wide v8, v6

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v2, 0x7

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    const/16 v5, 0x8

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/alensw/bean/MediaStoreFolder;->a(FF)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Lcom/alensw/bean/n;

    move-wide/from16 v0, v28

    invoke-direct {v13, v0, v1, v2}, Lcom/alensw/bean/n;-><init>(JLjava/lang/String;)V

    sget-object v2, Lcom/alensw/bean/MediaStoreFolder;->u:Ljava/util/HashMap;

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alensw/bean/MediaStoreFolder;

    if-nez v2, :cond_a

    new-instance v2, Lcom/alensw/bean/MediaStoreFolder;

    const v5, 0x10000033

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/alensw/bean/MediaStoreFolder;-><init>(ILjava/lang/String;IJJLjava/lang/String;ZZ)V

    iget-object v5, v13, Lcom/alensw/bean/n;->b:Ljava/lang/String;

    iput-object v5, v2, Lcom/alensw/bean/MediaStoreFolder;->i:Ljava/lang/String;

    const/16 v5, 0x49

    move/from16 v0, p2

    if-ne v0, v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alensw/bean/MediaStoreFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    sget-object v5, Lcom/alensw/bean/MediaStoreFolder;->u:Ljava/util/HashMap;

    invoke-virtual {v5, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_6
    cmp-long v5, v8, v32

    if-ltz v5, :cond_2

    cmp-long v5, v8, v30

    if-gez v5, :cond_2

    const/4 v5, 0x2

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v5, 0x3

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/4 v5, 0x4

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    new-instance v12, Lcom/alensw/bean/MediaStoreFile;

    const/16 v17, 0x5

    move/from16 v13, p2

    move v14, v3

    move-wide/from16 v20, v6

    move-wide/from16 v22, v8

    move-object/from16 v24, v10

    invoke-direct/range {v12 .. v24}, Lcom/alensw/bean/MediaStoreFile;-><init>(CILjava/lang/String;Ljava/lang/String;IJJJLjava/lang/String;)V

    const/16 v3, 0x49

    move/from16 v0, p2

    if-ne v0, v3, :cond_b

    iget-object v2, v2, Lcom/alensw/bean/MediaStoreFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    :catch_0
    move-exception v2

    move-object/from16 v3, v25

    :goto_7
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    :cond_8
    :try_start_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alensw/bean/MediaStoreFolder;->c(Lcom/alensw/bean/CommonFile;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v2

    :goto_8
    if-eqz v25, :cond_9

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2

    :cond_a
    :try_start_5
    iget-wide v12, v2, Lcom/alensw/bean/MediaStoreFolder;->h:J

    cmp-long v5, v12, v8

    if-gez v5, :cond_7

    iput-wide v6, v2, Lcom/alensw/bean/MediaStoreFolder;->g:J

    iput-wide v8, v2, Lcom/alensw/bean/MediaStoreFolder;->h:J

    iput v3, v2, Lcom/alensw/bean/MediaStoreFolder;->y:I

    iput-object v10, v2, Lcom/alensw/bean/MediaStoreFolder;->z:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v2, Lcom/alensw/bean/MediaStoreFolder;->j:Landroid/net/Uri;

    goto :goto_6

    :cond_b
    invoke-virtual {v2, v12}, Lcom/alensw/bean/MediaStoreFolder;->c(Lcom/alensw/bean/CommonFile;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    :catchall_1
    move-exception v2

    move-object/from16 v25, v8

    goto :goto_8

    :catchall_2
    move-exception v2

    move-object/from16 v25, v3

    goto :goto_8

    :catch_1
    move-exception v2

    move-object v3, v8

    goto :goto_7

    :cond_c
    move-wide/from16 v2, v26

    move-wide/from16 v10, v28

    goto/16 :goto_0

    :cond_d
    move-wide/from16 v26, v2

    move-wide/from16 v28, v10

    goto/16 :goto_2
.end method

.method private static a(Ljava/util/GregorianCalendar;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2, v2}, Ljava/util/GregorianCalendar;->roll(II)V

    :cond_0
    invoke-virtual {p0, v3, v2}, Ljava/util/GregorianCalendar;->roll(II)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alensw/bean/MediaStoreFolder;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_1

    iget-object v0, p0, Lcom/alensw/bean/MediaStoreFolder;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alensw/b/l/b;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alensw/bean/MediaStoreFolder;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_2
    if-ge v3, v4, :cond_4

    iget-object v0, p0, Lcom/alensw/bean/MediaStoreFolder;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alensw/b/l/b;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private static b(Ljava/util/GregorianCalendar;)J
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clear()V

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/GregorianCalendar;->set(III)V

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private b(Landroid/content/ContentResolver;C)V
    .locals 16

    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alensw/bean/MediaStoreFolder;->h:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    invoke-static {v2}, Lcom/alensw/bean/MediaStoreFolder;->b(Ljava/util/GregorianCalendar;)J

    move-result-wide v4

    invoke-static {v2}, Lcom/alensw/bean/MediaStoreFolder;->a(Ljava/util/GregorianCalendar;)V

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    const-string v6, "datetaken>=? AND datetaken<?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    const/4 v4, 0x1

    const-wide/16 v8, 0x3e8

    mul-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v4

    const/4 v8, 0x0

    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/alensw/a/ba;->a(C)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/alensw/bean/MediaStoreFolder;->v:[Ljava/lang/String;

    const-string v5, "datetaken>=? AND datetaken<?"

    const-string v7, "datetaken DESC"

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v15

    if-eqz v15, :cond_2

    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/bean/MediaStoreFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/bean/MediaStoreFolder;->n:Ljava/util/ArrayList;

    add-int/2addr v2, v3

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :cond_0
    const/4 v2, 0x5

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v2, 0x6

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v12, v2, v4

    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/alensw/bean/MediaStoreFolder;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1
    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    if-eqz v15, :cond_3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v2, 0x7

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    const/16 v3, 0x8

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/alensw/bean/MediaStoreFolder;->a(FF)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alensw/bean/MediaStoreFolder;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x3

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x4

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    new-instance v2, Lcom/alensw/bean/MediaStoreFile;

    const/4 v7, 0x5

    move/from16 v3, p2

    invoke-direct/range {v2 .. v14}, Lcom/alensw/bean/MediaStoreFile;-><init>(CILjava/lang/String;Ljava/lang/String;IJJJLjava/lang/String;)V

    const/16 v3, 0x49

    move/from16 v0, p2

    if-ne v0, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alensw/bean/MediaStoreFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/alensw/bean/MediaStoreFolder;->h:J

    cmp-long v2, v2, v12

    if-gez v2, :cond_1

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/alensw/bean/MediaStoreFolder;->g:J

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/alensw/bean/MediaStoreFolder;->h:J

    move-object/from16 v0, p0

    iput v4, v0, Lcom/alensw/bean/MediaStoreFolder;->y:I

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/alensw/bean/MediaStoreFolder;->z:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alensw/bean/MediaStoreFolder;->j:Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v3, v15

    :goto_3
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alensw/bean/MediaStoreFolder;->c(Lcom/alensw/bean/CommonFile;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    :goto_4
    if-eqz v15, :cond_6

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2

    :catchall_1
    move-exception v2

    move-object v15, v8

    goto :goto_4

    :catchall_2
    move-exception v2

    move-object v15, v3

    goto :goto_4

    :catch_1
    move-exception v2

    move-object v3, v8

    goto :goto_3
.end method

.method private c(Landroid/content/ContentResolver;C)V
    .locals 16

    const/4 v8, 0x0

    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/alensw/a/ba;->a(C)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/alensw/bean/MediaStoreFolder;->v:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "datetaken DESC"

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v15

    if-eqz v15, :cond_1

    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/bean/MediaStoreFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/bean/MediaStoreFolder;->n:Ljava/util/ArrayList;

    add-int/2addr v2, v3

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :cond_0
    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/alensw/bean/MediaStoreFolder;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    if-eqz v15, :cond_2

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v2, 0x5

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v2, 0x6

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long v12, v2, v6

    const/4 v2, 0x2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x3

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x4

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    new-instance v2, Lcom/alensw/bean/MediaStoreFile;

    const/4 v7, 0x5

    move/from16 v3, p2

    invoke-direct/range {v2 .. v14}, Lcom/alensw/bean/MediaStoreFile;-><init>(CILjava/lang/String;Ljava/lang/String;IJJJLjava/lang/String;)V

    const/16 v3, 0x49

    move/from16 v0, p2

    if-ne v0, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alensw/bean/MediaStoreFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v3, v15

    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alensw/bean/MediaStoreFolder;->c(Lcom/alensw/bean/CommonFile;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :goto_3
    if-eqz v15, :cond_5

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2

    :catchall_1
    move-exception v2

    move-object v15, v8

    goto :goto_3

    :catchall_2
    move-exception v2

    move-object v15, v3

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v3, v8

    goto :goto_2
.end method

.method private t()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alensw/bean/MediaStoreFolder;->a(II)I

    move-result v0

    iput v0, p0, Lcom/alensw/bean/MediaStoreFolder;->l:I

    sget-object v0, Lcom/alensw/bean/MediaStoreFolder;->r:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/alensw/bean/MediaStoreFolder;->m:Ljava/util/Comparator;

    invoke-static {}, Lcom/alensw/PicFolder/QuickApp;->a()Lcom/alensw/PicFolder/QuickApp;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/bean/MediaStoreFolder;->A:Landroid/content/Context;

    iget-object v0, p0, Lcom/alensw/bean/MediaStoreFolder;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/alensw/b/d/f;->a(Landroid/content/Context;)Lcom/alensw/b/d/f;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/bean/MediaStoreFolder;->B:Lcom/alensw/b/d/f;

    iget-object v0, p0, Lcom/alensw/bean/MediaStoreFolder;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/alensw/a/o;->a(Landroid/content/Context;)Lcom/alensw/a/o;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/bean/MediaStoreFolder;->C:Lcom/alensw/a/o;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)I
    .locals 5

    const/4 v1, 0x0

    const-string v0, "media"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/alensw/bean/CommonFolder;->a(Landroid/net/Uri;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/alensw/b/l/b;->a(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    iget-object v0, p0, Lcom/alensw/bean/MediaStoreFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_2

    iget-object v0, p0, Lcom/alensw/bean/MediaStoreFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/bean/CommonFile;

    instance-of v4, v0, Lcom/alensw/bean/MediaStoreFile;

    if-eqz v4, :cond_1

    check-cast v0, Lcom/alensw/bean/MediaStoreFile;

    iget v0, v0, Lcom/alensw/bean/MediaStoreFile;->k:I

    if-ne v0, v2, :cond_1

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
    .locals 8

    const/4 v1, 0x1

    const/16 v7, 0x56

    const/16 v6, 0x49

    const/4 v2, 0x0

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->q:Lcom/alensw/a/s;

    iget v0, v0, Lcom/alensw/a/s;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/alensw/bean/MediaStoreFolder;->C:Lcom/alensw/a/o;

    invoke-virtual {v3, v1}, Lcom/alensw/a/o;->a(Z)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/alensw/bean/MediaStoreFolder;->E:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alensw/bean/MediaStoreFolder;->C:Lcom/alensw/a/o;

    invoke-virtual {v1, v2}, Lcom/alensw/a/o;->a(Z)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/alensw/bean/MediaStoreFolder;->F:Ljava/util/ArrayList;

    iget-boolean v1, p0, Lcom/alensw/bean/MediaStoreFolder;->w:Z

    if-eqz v1, :cond_5

    iput-boolean v2, p0, Lcom/alensw/bean/MediaStoreFolder;->D:Z

    iget-boolean v1, p0, Lcom/alensw/bean/MediaStoreFolder;->x:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/alensw/bean/MediaStoreFolder;->u:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {p0, p1, v6}, Lcom/alensw/bean/MediaStoreFolder;->a(Landroid/content/ContentResolver;C)V

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v7}, Lcom/alensw/bean/MediaStoreFolder;->a(Landroid/content/ContentResolver;C)V

    :cond_0
    const-string v0, "MediaStoreFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alensw/bean/MediaStoreFolder;->o()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " folders, used="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/alensw/bean/MediaStoreFolder;->D:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/alensw/bean/MediaStoreFolder;->D:Z

    iget-object v0, p0, Lcom/alensw/bean/MediaStoreFolder;->B:Lcom/alensw/b/d/f;

    new-instance v1, Lcom/alensw/bean/l;

    invoke-direct {v1, p0, p1}, Lcom/alensw/bean/l;-><init>(Lcom/alensw/bean/MediaStoreFolder;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v1}, Lcom/alensw/b/d/f;->a(Ljava/lang/Runnable;)V

    :cond_2
    :goto_2
    const/4 v0, 0x0

    return-object v0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, v6}, Lcom/alensw/bean/MediaStoreFolder;->b(Landroid/content/ContentResolver;C)V

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v7}, Lcom/alensw/bean/MediaStoreFolder;->b(Landroid/content/ContentResolver;C)V

    goto :goto_1

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, p1, v6}, Lcom/alensw/bean/MediaStoreFolder;->c(Landroid/content/ContentResolver;C)V

    if-eqz v0, :cond_6

    invoke-direct {p0, p1, v7}, Lcom/alensw/bean/MediaStoreFolder;->c(Landroid/content/ContentResolver;C)V

    :cond_6
    const-string v0, "MediaStoreFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alensw/bean/MediaStoreFolder;->o()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " folders, used="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public synthetic a(Z)Lcom/alensw/bean/CommonFolder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alensw/bean/MediaStoreFolder;->b(Z)Lcom/alensw/bean/MediaStoreFolder;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x49

    invoke-static {v0}, Lcom/alensw/a/ba;->a(C)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/16 v0, 0x56

    invoke-static {v0}, Lcom/alensw/a/ba;->a(C)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public b(Z)Lcom/alensw/bean/MediaStoreFolder;
    .locals 3

    new-instance v0, Lcom/alensw/bean/MediaStoreFolder;

    iget-boolean v1, p0, Lcom/alensw/bean/MediaStoreFolder;->w:Z

    iget-boolean v2, p0, Lcom/alensw/bean/MediaStoreFolder;->x:Z

    invoke-direct {v0, p0, v1, v2}, Lcom/alensw/bean/MediaStoreFolder;-><init>(Lcom/alensw/bean/CommonFile;ZZ)V

    iget v1, p0, Lcom/alensw/bean/MediaStoreFolder;->k:I

    iput v1, v0, Lcom/alensw/bean/MediaStoreFolder;->k:I

    iget v1, p0, Lcom/alensw/bean/MediaStoreFolder;->l:I

    iput v1, v0, Lcom/alensw/bean/MediaStoreFolder;->l:I

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/alensw/bean/MediaStoreFolder;->a(Lcom/alensw/bean/CommonFolder;Z)V

    :cond_0
    return-object v0
.end method

.method public b(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
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
    instance-of v2, p1, Lcom/alensw/bean/MediaStoreFolder;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/alensw/bean/MediaStoreFolder;

    iget-boolean v2, p0, Lcom/alensw/bean/MediaStoreFolder;->w:Z

    iget-boolean v3, p1, Lcom/alensw/bean/MediaStoreFolder;->w:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/alensw/bean/MediaStoreFolder;->x:Z

    iget-boolean v3, p1, Lcom/alensw/bean/MediaStoreFolder;->x:Z

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/alensw/bean/MediaStoreFolder;->g:J

    iget-wide v4, p1, Lcom/alensw/bean/MediaStoreFolder;->g:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-char v2, p0, Lcom/alensw/bean/MediaStoreFolder;->b:C

    iget-char v3, p1, Lcom/alensw/bean/MediaStoreFolder;->b:C

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/alensw/bean/MediaStoreFolder;->y:I

    iget v3, p1, Lcom/alensw/bean/MediaStoreFolder;->y:I

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/alensw/bean/MediaStoreFolder;->y:I

    iget-wide v2, p0, Lcom/alensw/bean/MediaStoreFolder;->g:J

    long-to-int v1, v2

    add-int/2addr v0, v1

    iget-char v1, p0, Lcom/alensw/bean/MediaStoreFolder;->b:C

    add-int/2addr v0, v1

    return v0
.end method

.method public i()Landroid/net/Uri;
    .locals 2

    const/16 v1, 0x49

    iget-object v0, p0, Lcom/alensw/bean/MediaStoreFolder;->j:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alensw/bean/MediaStoreFolder;->x:Z

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/alensw/a/ba;->a(C)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/bean/MediaStoreFolder;->j:Landroid/net/Uri;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alensw/bean/MediaStoreFolder;->j:Landroid/net/Uri;

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/alensw/bean/MediaStoreFolder;->n()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alensw/bean/MediaStoreFolder;->b(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/bean/MediaStoreFolder;->j:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alensw/bean/MediaStoreFolder;->z:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alensw/bean/MediaStoreFolder;->z:Ljava/lang/String;

    invoke-static {v0}, Lcom/alensw/b/f/c;->a(Ljava/lang/String;)C

    move-result v0

    invoke-static {v0}, Lcom/alensw/a/ba;->a(C)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget v1, p0, Lcom/alensw/bean/MediaStoreFolder;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/bean/MediaStoreFolder;->j:Landroid/net/Uri;

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/alensw/a/ba;->a(C)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/bean/MediaStoreFolder;->j:Landroid/net/Uri;

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alensw/bean/MediaStoreFolder;->z:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/alensw/bean/CommonFolder;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Lcom/alensw/bean/MediaStoreFolder;->w:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/alensw/bean/MediaStoreFolder;->x:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/alensw/bean/MediaStoreFolder;->y:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/alensw/bean/MediaStoreFolder;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alensw/bean/MediaStoreFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/alensw/bean/MediaStoreFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0, p1, p2}, Lcom/alensw/bean/CommonFile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    return-void
.end method
