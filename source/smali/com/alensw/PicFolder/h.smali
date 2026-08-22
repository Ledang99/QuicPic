.class Lcom/alensw/PicFolder/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/b/k/k;


# instance fields
.field protected a:Z

.field final synthetic b:Lcom/alensw/PicFolder/CloudProvider;

.field private final c:Lcom/alensw/PicFolder/c;

.field private final d:Ljava/lang/String;

.field private final e:Landroid/net/Uri;

.field private final f:Landroid/content/ContentResolver;

.field private final g:Lcom/alensw/PicFolder/b;


# direct methods
.method public constructor <init>(Lcom/alensw/PicFolder/CloudProvider;Lcom/alensw/PicFolder/c;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/net/Uri;Z)V
    .locals 3

    iput-object p1, p0, Lcom/alensw/PicFolder/h;->b:Lcom/alensw/PicFolder/CloudProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alensw/PicFolder/b;

    iget-object v1, p0, Lcom/alensw/PicFolder/h;->b:Lcom/alensw/PicFolder/CloudProvider;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alensw/PicFolder/b;-><init>(Lcom/alensw/PicFolder/CloudProvider;Lcom/alensw/PicFolder/a;)V

    iput-object v0, p0, Lcom/alensw/PicFolder/h;->g:Lcom/alensw/PicFolder/b;

    iput-object p2, p0, Lcom/alensw/PicFolder/h;->c:Lcom/alensw/PicFolder/c;

    iput-object p3, p0, Lcom/alensw/PicFolder/h;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/alensw/PicFolder/h;->f:Landroid/content/ContentResolver;

    iput-object p5, p0, Lcom/alensw/PicFolder/h;->e:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/h;->g:Lcom/alensw/PicFolder/b;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/b;->a()V

    return-void
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alensw/PicFolder/h;->a:Z

    iget-object v0, p0, Lcom/alensw/PicFolder/h;->f:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/alensw/PicFolder/h;->e:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public c()Ljava/lang/Boolean;
    .locals 26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/PicFolder/h;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/alensw/PicFolder/CloudProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "_size"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "last_modified"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "flags"

    aput-object v12, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alensw/PicFolder/h;->c:Lcom/alensw/PicFolder/c;

    iget-object v11, v11, Lcom/alensw/PicFolder/c;->d:Lcom/alensw/cloud/a/ay;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v10, v12, v13}, Lcom/alensw/cloud/a/ay;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v4, 0x1

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v4, 0x2

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1
    move-wide v14, v4

    move-wide v10, v6

    move-wide/from16 v16, v8

    const-wide/32 v4, 0x10000000

    and-long/2addr v4, v14

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    move v13, v4

    :goto_0
    const-wide/32 v4, 0x20000000

    and-long/2addr v4, v14

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    :goto_1
    new-instance v19, Landroid/content/ContentValues;

    const/16 v5, 0xa

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Landroid/content/ContentValues;-><init>(I)V

    new-instance v20, Lcom/alensw/cloud/a/az;

    const/16 v5, 0x100

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Lcom/alensw/cloud/a/az;-><init>(I)V

    new-instance v21, Lcom/alensw/cloud/a/az;

    const/16 v5, 0x100

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Lcom/alensw/cloud/a/az;-><init>(I)V

    const/4 v5, 0x0

    move v12, v5

    :goto_2
    const/4 v5, 0x2

    if-ge v12, v5, :cond_14

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    cmp-long v5, v16, v8

    if-eqz v5, :cond_15

    if-nez v4, :cond_15

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alensw/PicFolder/h;->c:Lcom/alensw/PicFolder/c;

    iget-object v5, v5, Lcom/alensw/PicFolder/c;->e:Lcom/alensw/cloud/a/bv;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alensw/PicFolder/h;->g:Lcom/alensw/PicFolder/b;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1, v8}, Lcom/alensw/cloud/a/bv;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/alensw/b/e/f;)V

    const-string v5, "last_modified"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :goto_3
    const-wide/16 v22, 0x0

    cmp-long v5, v8, v22

    if-nez v5, :cond_2

    const-wide/16 v22, 0x0

    cmp-long v5, v10, v22

    if-nez v5, :cond_2

    const-wide/16 v8, -0x1

    :cond_2
    :goto_4
    const-wide/16 v22, 0x0

    cmp-long v5, v16, v22

    if-eqz v5, :cond_3

    if-nez v4, :cond_3

    cmp-long v5, v8, v10

    if-eqz v5, :cond_7

    :cond_3
    const/4 v5, 0x0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alensw/PicFolder/h;->g:Lcom/alensw/PicFolder/b;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/alensw/b/e/b;->a(Lcom/alensw/b/e/f;)V

    invoke-virtual/range {v20 .. v20}, Lcom/alensw/cloud/a/az;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alensw/PicFolder/h;->c:Lcom/alensw/PicFolder/c;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alensw/PicFolder/c;->e:Lcom/alensw/cloud/a/bv;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alensw/PicFolder/h;->g:Lcom/alensw/PicFolder/b;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/alensw/cloud/a/bv;->a(Ljava/lang/String;Lcom/alensw/cloud/a/az;ILcom/alensw/b/e/f;)Z

    move-result v6

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alensw/cloud/a/az;->addAll(Ljava/util/Collection;)Z

    if-nez v6, :cond_5

    invoke-virtual/range {v20 .. v20}, Lcom/alensw/cloud/a/az;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_d

    :cond_5
    :goto_5
    cmp-long v5, v8, v10

    if-eqz v5, :cond_6

    const-wide/16 v8, 0x1

    and-long/2addr v8, v14

    const-wide/16 v22, 0x0

    cmp-long v5, v8, v22

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alensw/PicFolder/h;->c:Lcom/alensw/PicFolder/c;

    iget-object v5, v5, Lcom/alensw/PicFolder/c;->d:Lcom/alensw/cloud/a/ay;

    const-string v8, "document_id LIKE ?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/16 v22, 0x0

    const-string v23, "%"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/alensw/PicFolder/CloudProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v9, v22

    invoke-virtual {v5, v8, v9}, Lcom/alensw/cloud/a/ay;->a(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alensw/PicFolder/h;->c:Lcom/alensw/PicFolder/c;

    iget-object v5, v5, Lcom/alensw/PicFolder/c;->d:Lcom/alensw/cloud/a/ay;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/alensw/cloud/a/ay;->b(Ljava/lang/String;)V

    const-string v5, "_size"

    invoke-virtual/range {v21 .. v21}, Lcom/alensw/cloud/a/az;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alensw/PicFolder/h;->c:Lcom/alensw/PicFolder/c;

    iget-object v5, v5, Lcom/alensw/PicFolder/c;->d:Lcom/alensw/cloud/a/ay;

    const/4 v8, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1, v8}, Lcom/alensw/cloud/a/ay;->a(Lcom/alensw/cloud/a/az;Ljava/lang/String;I)V

    const/4 v7, 0x1

    :cond_7
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/alensw/cloud/a/bz; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alensw/b/e/a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-eqz v7, :cond_9

    if-nez v6, :cond_8

    const-string v5, "_size"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alensw/PicFolder/h;->c:Lcom/alensw/PicFolder/c;

    iget-object v5, v5, Lcom/alensw/PicFolder/c;->d:Lcom/alensw/cloud/a/ay;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lcom/alensw/cloud/a/ay;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_9
    return-object v4

    :cond_a
    const/4 v4, 0x0

    move v13, v4

    goto/16 :goto_0

    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_c
    const-wide/16 v8, 0x0

    goto/16 :goto_3

    :cond_d
    :try_start_1
    invoke-virtual/range {v20 .. v20}, Lcom/alensw/cloud/a/az;->size()I

    move-result v22

    const-string v23, "CloudProvider"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "query "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "+"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " from cloud"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v13, :cond_e

    if-nez v5, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alensw/PicFolder/h;->c:Lcom/alensw/PicFolder/c;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alensw/PicFolder/c;->b(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alensw/PicFolder/h;->c:Lcom/alensw/PicFolder/c;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/alensw/PicFolder/c;->d:Lcom/alensw/cloud/a/ay;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alensw/cloud/a/ay;->b(Ljava/lang/String;)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alensw/PicFolder/h;->c:Lcom/alensw/PicFolder/c;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/alensw/PicFolder/c;->d:Lcom/alensw/cloud/a/ay;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v5}, Lcom/alensw/cloud/a/ay;->a(Lcom/alensw/cloud/a/az;Ljava/lang/String;I)V

    invoke-virtual/range {v20 .. v20}, Lcom/alensw/cloud/a/az;->clear()V

    add-int v5, v5, v22

    const-string v22, "_size"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alensw/PicFolder/h;->c:Lcom/alensw/PicFolder/c;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alensw/PicFolder/c;->d:Lcom/alensw/cloud/a/ay;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/alensw/cloud/a/ay;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alensw/PicFolder/h;->f:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alensw/PicFolder/h;->e:Landroid/net/Uri;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Lcom/alensw/cloud/a/bz; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alensw/b/e/a; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_4

    goto/16 :goto_5

    :catch_0
    move-exception v5

    :try_start_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alensw/PicFolder/h;->b:Lcom/alensw/PicFolder/CloudProvider;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alensw/PicFolder/h;->c:Lcom/alensw/PicFolder/c;

    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-static {v8, v9, v5, v0}, Lcom/alensw/PicFolder/CloudProvider;->a(Lcom/alensw/PicFolder/CloudProvider;Lcom/alensw/PicFolder/c;Lcom/alensw/cloud/a/bz;Lcom/alensw/b/e/f;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    if-eqz v8, :cond_11

    if-eqz v7, :cond_10

    if-nez v6, :cond_f

    const-string v5, "_size"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alensw/PicFolder/h;->c:Lcom/alensw/PicFolder/c;

    iget-object v5, v5, Lcom/alensw/PicFolder/c;->d:Lcom/alensw/cloud/a/ay;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lcom/alensw/cloud/a/ay;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_10
    add-int/lit8 v5, v12, 0x1

    move v12, v5

    goto/16 :goto_2

    :cond_11
    :try_start_3
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v5}, Lcom/alensw/cloud/a/bz;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v4

    if-eqz v7, :cond_13

    if-nez v6, :cond_12

    const-string v5, "_size"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alensw/PicFolder/h;->c:Lcom/alensw/PicFolder/c;

    iget-object v5, v5, Lcom/alensw/PicFolder/c;->d:Lcom/alensw/cloud/a/ay;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lcom/alensw/cloud/a/ay;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_13
    throw v4

    :catch_1
    move-exception v4

    :try_start_4
    const-string v5, "CloudProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "query cancelled: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alensw/PicFolder/h;->d:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw v4

    :catch_2
    move-exception v4

    const-string v5, "CloudProvider"

    const-string v8, "query failed: "

    invoke-static {v5, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v5, Ljava/lang/Exception;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_14
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "query gave up: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alensw/PicFolder/h;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_15
    move-wide v8, v10

    goto/16 :goto_4
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/PicFolder/h;->c()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/alensw/PicFolder/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/alensw/PicFolder/h;

    iget-object v0, p0, Lcom/alensw/PicFolder/h;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/alensw/PicFolder/h;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/h;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
