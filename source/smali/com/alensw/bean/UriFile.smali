.class public Lcom/alensw/bean/UriFile;
.super Lcom/alensw/bean/CommonFile;


# static fields
.field public static final k:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

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

    sput-object v0, Lcom/alensw/bean/UriFile;->k:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(CLandroid/net/Uri;Ljava/lang/String;JJJ)V
    .locals 14

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move v2, p1

    move-object/from16 v4, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-object/from16 v13, p2

    invoke-direct/range {v1 .. v13}, Lcom/alensw/bean/CommonFile;-><init>(CLjava/lang/String;Ljava/lang/String;IJJJLjava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public static a(CLandroid/net/Uri;Ljava/lang/String;)Lcom/alensw/bean/CommonFile;
    .locals 10

    const-wide/16 v4, 0x0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v6, v4

    move-wide v8, v4

    invoke-static/range {v1 .. v9}, Lcom/alensw/bean/UriFile;->a(CLandroid/net/Uri;Ljava/lang/String;JJJ)Lcom/alensw/bean/CommonFile;

    move-result-object v0

    return-object v0
.end method

.method public static a(CLandroid/net/Uri;Ljava/lang/String;JJJ)Lcom/alensw/bean/CommonFile;
    .locals 19

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    move/from16 v4, p0

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    invoke-static/range {v3 .. v11}, Lcom/alensw/bean/UriFile;->a(Ljava/lang/String;CLjava/lang/String;JJJ)Lcom/alensw/bean/LocalFile;

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    move-wide/from16 v10, p7

    move-wide/from16 v8, p5

    move-wide/from16 v6, p3

    move-object/from16 v5, p2

    move/from16 v3, p0

    :goto_1
    new-instance v2, Lcom/alensw/bean/UriFile;

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v11}, Lcom/alensw/bean/UriFile;-><init>(CLandroid/net/Uri;Ljava/lang/String;JJJ)V

    goto :goto_0

    :cond_2
    const-string v3, "content"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/alensw/PicFolder/QuickApp;->a()Lcom/alensw/PicFolder/QuickApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alensw/PicFolder/QuickApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v17

    const-string v3, "media"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v8, 0x0

    :try_start_0
    sget-object v4, Lcom/alensw/bean/UriFile;->k:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v16

    if-eqz v16, :cond_4

    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v2, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez p2, :cond_18

    const/4 v2, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v6

    :goto_2
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_17

    const/4 v2, 0x4

    :try_start_2
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-wide v8

    :goto_3
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-nez v2, :cond_16

    const/4 v2, 0x5

    :try_start_3
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-wide v10

    :goto_4
    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-nez v2, :cond_15

    const/4 v2, 0x6

    :try_start_4
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v2, v12
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const-wide/16 v12, 0x0

    cmp-long v7, v2, v12

    if-eqz v7, :cond_3

    :goto_5
    move-wide v12, v2

    :goto_6
    if-nez p0, :cond_14

    :try_start_5
    invoke-static {v6, v5}, Lcom/alensw/bean/CommonFile;->a(Ljava/lang/String;Ljava/lang/String;)C
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result v3

    :goto_7
    :try_start_6
    new-instance v2, Lcom/alensw/bean/MediaStoreFile;

    const/4 v7, 0x0

    move-object/from16 v15, p1

    invoke-direct/range {v2 .. v15}, Lcom/alensw/bean/MediaStoreFile;-><init>(CILjava/lang/String;Ljava/lang/String;IJJJLjava/lang/String;Landroid/net/Uri;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v16, :cond_0

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_3
    move-wide v2, v10

    goto :goto_5

    :cond_4
    if-eqz v16, :cond_5

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_8
    move-wide/from16 v10, p7

    move-wide/from16 v8, p5

    move-wide/from16 v6, p3

    move-object/from16 v5, p2

    move/from16 v3, p0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    move-object v2, v8

    :goto_9
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :catchall_0
    move-exception v2

    move-object/from16 v16, v8

    :goto_a
    if-eqz v16, :cond_6

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2

    :cond_7
    const-string v3, "com.alensw.PicFolder.FileProvider"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static/range {p1 .. p1}, Lcom/alensw/PicFolder/FileProvider;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    const-wide/16 v6, 0x0

    move/from16 v4, p0

    move-object/from16 v5, p2

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    invoke-static/range {v3 .. v11}, Lcom/alensw/bean/UriFile;->a(Ljava/lang/String;CLjava/lang/String;JJJ)Lcom/alensw/bean/LocalFile;

    move-result-object v2

    goto/16 :goto_0

    :cond_8
    move-wide/from16 v10, p7

    move-wide/from16 v8, p5

    move-wide/from16 v6, p3

    move-object/from16 v5, p2

    move/from16 v3, p0

    goto/16 :goto_1

    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/alensw/b/j/a;->d(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v8, 0x0

    :try_start_7
    sget-object v4, Lcom/alensw/bean/DocumentFolder;->w:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v18

    if-eqz v18, :cond_c

    :try_start_8
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-nez p2, :cond_13

    const/4 v2, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v8

    :goto_b
    const/4 v2, 0x3

    :try_start_9
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_12

    const/4 v2, 0x4

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result-wide v10

    :goto_c
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-nez v2, :cond_11

    const/4 v2, 0x5

    :try_start_a
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v12, v2, v4
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :goto_d
    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-nez v2, :cond_10

    const/4 v2, 0x6

    :try_start_b
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_b

    :goto_e
    move-wide v14, v2

    :goto_f
    if-nez p0, :cond_f

    :try_start_c
    invoke-static {v8, v7}, Lcom/alensw/bean/CommonFile;->a(Ljava/lang/String;Ljava/lang/String;)C
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result v4

    :goto_10
    :try_start_d
    new-instance v3, Lcom/alensw/bean/DocumentFile;

    const/16 v16, 0x0

    move-object/from16 v5, v17

    move-object/from16 v17, p1

    invoke-direct/range {v3 .. v17}, Lcom/alensw/bean/DocumentFile;-><init>(CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJLjava/lang/String;Landroid/net/Uri;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz v18, :cond_a

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_a
    move-object v2, v3

    goto/16 :goto_0

    :cond_b
    move-wide v2, v12

    goto :goto_e

    :cond_c
    if-eqz v18, :cond_e

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    move-wide/from16 v10, p7

    move-wide/from16 v8, p5

    move-wide/from16 v6, p3

    move-object/from16 v5, p2

    move/from16 v3, p0

    goto/16 :goto_1

    :catch_1
    move-exception v2

    move-object v2, v8

    :goto_11
    if-eqz v2, :cond_e

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-wide/from16 v10, p7

    move-wide/from16 v8, p5

    move-wide/from16 v6, p3

    move-object/from16 v5, p2

    move/from16 v3, p0

    goto/16 :goto_1

    :catchall_1
    move-exception v2

    move-object/from16 v18, v8

    :goto_12
    if-eqz v18, :cond_d

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v2

    :catchall_2
    move-exception v2

    goto :goto_12

    :catch_2
    move-exception v2

    move-object/from16 v2, v18

    goto :goto_11

    :catch_3
    move-exception v2

    move-object/from16 v2, v18

    move-object/from16 p2, v8

    goto :goto_11

    :catch_4
    move-exception v2

    move-object/from16 v2, v18

    move-wide/from16 p3, v10

    move-object/from16 p2, v8

    goto :goto_11

    :catch_5
    move-exception v2

    move-object/from16 v2, v18

    move-wide/from16 p5, v12

    move-wide/from16 p3, v10

    move-object/from16 p2, v8

    goto :goto_11

    :catch_6
    move-exception v2

    move-object/from16 v2, v18

    move-wide/from16 p7, v14

    move-wide/from16 p5, v12

    move-wide/from16 p3, v10

    move-object/from16 p2, v8

    goto :goto_11

    :catch_7
    move-exception v2

    move-object/from16 v2, v18

    move-wide/from16 p7, v14

    move-wide/from16 p5, v12

    move-wide/from16 p3, v10

    move-object/from16 p2, v8

    move/from16 p0, v4

    goto :goto_11

    :catchall_3
    move-exception v2

    goto/16 :goto_a

    :catch_8
    move-exception v2

    move-object/from16 v2, v16

    goto/16 :goto_9

    :catch_9
    move-exception v2

    move-object/from16 v2, v16

    move-object/from16 p2, v6

    goto/16 :goto_9

    :catch_a
    move-exception v2

    move-object/from16 v2, v16

    move-wide/from16 p3, v8

    move-object/from16 p2, v6

    goto/16 :goto_9

    :catch_b
    move-exception v2

    move-object/from16 v2, v16

    move-wide/from16 p5, v10

    move-wide/from16 p3, v8

    move-object/from16 p2, v6

    goto/16 :goto_9

    :catch_c
    move-exception v2

    move-object/from16 v2, v16

    move-wide/from16 p7, v12

    move-wide/from16 p5, v10

    move-wide/from16 p3, v8

    move-object/from16 p2, v6

    goto/16 :goto_9

    :catch_d
    move-exception v2

    move-object/from16 v2, v16

    move-wide/from16 p7, v12

    move-wide/from16 p5, v10

    move-wide/from16 p3, v8

    move-object/from16 p2, v6

    move/from16 p0, v3

    goto/16 :goto_9

    :cond_e
    move-wide/from16 v10, p7

    move-wide/from16 v8, p5

    move-wide/from16 v6, p3

    move-object/from16 v5, p2

    move/from16 v3, p0

    goto/16 :goto_1

    :cond_f
    move/from16 v4, p0

    goto/16 :goto_10

    :cond_10
    move-wide/from16 v14, p7

    goto/16 :goto_f

    :cond_11
    move-wide/from16 v12, p5

    goto/16 :goto_d

    :cond_12
    move-wide/from16 v10, p3

    goto/16 :goto_c

    :cond_13
    move-object/from16 v8, p2

    goto/16 :goto_b

    :cond_14
    move/from16 v3, p0

    goto/16 :goto_7

    :cond_15
    move-wide/from16 v12, p7

    goto/16 :goto_6

    :cond_16
    move-wide/from16 v10, p5

    goto/16 :goto_4

    :cond_17
    move-wide/from16 v8, p3

    goto/16 :goto_3

    :cond_18
    move-object/from16 v6, p2

    goto/16 :goto_2
.end method

.method public static a(Landroid/net/Uri;)Lcom/alensw/bean/CommonFile;
    .locals 10

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    move-wide v6, v4

    move-wide v8, v4

    invoke-static/range {v1 .. v9}, Lcom/alensw/bean/UriFile;->a(CLandroid/net/Uri;Ljava/lang/String;JJJ)Lcom/alensw/bean/CommonFile;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;CLjava/lang/String;JJJ)Lcom/alensw/bean/LocalFile;
    .locals 13

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_4

    invoke-static {p0}, Lcom/alensw/b/f/c;->a(Ljava/lang/String;)C

    move-result v1

    :goto_0
    if-nez p2, :cond_3

    invoke-static {p0, v1}, Lcom/alensw/b/f/c;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v0, p3, v6

    if-nez v0, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    :goto_2
    const-wide/16 v8, 0x0

    cmp-long v0, p5, v8

    if-nez v0, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    :goto_3
    const-wide/16 v10, 0x0

    cmp-long v0, p7, v10

    if-nez v0, :cond_0

    move-wide v10, v8

    :goto_4
    new-instance v0, Lcom/alensw/bean/LocalFile;

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/alensw/bean/LocalFile;-><init>(CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJ)V

    return-object v0

    :cond_0
    move-wide/from16 v10, p7

    goto :goto_4

    :cond_1
    move-wide/from16 v8, p5

    goto :goto_3

    :cond_2
    move-wide/from16 v6, p3

    goto :goto_2

    :cond_3
    move-object v4, p2

    goto :goto_1

    :cond_4
    move v1, p1

    goto :goto_0
.end method
