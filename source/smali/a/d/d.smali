.class public La/d/d;
.super Ljava/lang/Object;


# static fields
.field static a:La/e/e;

.field protected static b:La/d/e;


# instance fields
.field protected c:La/d/e;

.field protected d:La/d/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, La/e/e;->a()La/e/e;

    move-result-object v0

    sput-object v0, La/d/d;->a:La/e/e;

    new-instance v0, La/d/e;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, La/d/e;-><init>(J)V

    sput-object v0, La/d/d;->b:La/d/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/d/d;->c:La/d/e;

    iput-object v0, p0, La/d/d;->d:La/d/e;

    return-void
.end method


# virtual methods
.method public a(La/d/bm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/d/t;)La/d/f;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p4, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, p5, v0, v1}, La/d/bm;->a(La/d/t;Ljava/lang/String;I)La/d/f;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, La/d/d;->a:La/e/e;

    sget v1, La/e/e;->a:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    sget-object v1, La/d/d;->a:La/e/e;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/d/t;)La/d/f;
    .locals 14

    monitor-enter p0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-string v2, "IPC$"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v4

    :cond_1
    :try_start_1
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, La/d/d;->a(La/d/t;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/HashMap;

    move-object v8, v0

    if-eqz v8, :cond_15

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/d/e;

    if-eqz v2, :cond_14

    iget-wide v12, v2, La/d/e;->a:J

    cmp-long v7, v10, v12

    if-lez v7, :cond_14

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    move-object v9, v2

    :goto_1
    if-nez v9, :cond_8

    move-object/from16 v0, p4

    invoke-virtual {p0, v4, v0}, La/d/d;->b(Ljava/lang/String;La/d/t;)La/d/bm;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    move-object v2, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, La/d/d;->a(La/d/bm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/d/t;)La/d/f;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int v9, v2, v7

    new-instance v2, La/d/e;

    const-wide/16 v12, 0x0

    invoke-direct {v2, v12, v13}, La/d/e;-><init>(J)V

    move-object v7, v6

    :cond_3
    if-nez p3, :cond_4

    iget-object v12, v2, La/d/e;->b:Ljava/util/HashMap;

    iput-object v12, v7, La/d/f;->j:Ljava/util/Map;

    const-string v12, "\\"

    iput-object v12, v7, La/d/f;->k:Ljava/lang/String;

    :cond_4
    iget v12, v7, La/d/f;->a:I

    sub-int/2addr v12, v9

    iput v12, v7, La/d/f;->a:I

    iget-object v7, v7, La/d/f;->i:La/d/f;

    if-ne v7, v6, :cond_3

    iget-object v7, v6, La/d/f;->k:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v7, v2, La/d/e;->b:Ljava/util/HashMap;

    iget-object v9, v6, La/d/f;->k:Ljava/lang/String;

    invoke-virtual {v7, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v8, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v2

    move-object v2, v6

    :goto_2
    if-eqz v8, :cond_a

    const-string v9, "\\"

    iget-object v2, v8, La/d/e;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/d/f;

    if-eqz v2, :cond_6

    iget-wide v6, v2, La/d/f;->h:J

    cmp-long v6, v10, v6

    if-lez v6, :cond_6

    iget-object v2, v8, La/d/e;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    :cond_6
    if-nez v2, :cond_a

    if-nez v3, :cond_9

    move-object/from16 v0, p4

    invoke-virtual {p0, v4, v0}, La/d/d;->b(Ljava/lang/String;La/d/t;)La/d/bm;

    move-result-object v3

    if-nez v3, :cond_9

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_7
    if-nez p3, :cond_13

    sget-object v2, La/d/d;->b:La/d/e;

    invoke-virtual {v8, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v9

    move-object v2, v6

    goto :goto_2

    :cond_8
    sget-object v2, La/d/d;->b:La/d/e;

    if-ne v9, v2, :cond_12

    const/4 v2, 0x0

    move-object v8, v2

    move-object v2, v3

    move-object v3, v6

    goto :goto_2

    :cond_9
    move-object v2, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, La/d/d;->a(La/d/bm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/d/t;)La/d/f;

    move-result-object v2

    if-eqz v2, :cond_a

    iget v3, v2, La/d/f;->a:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v3, v6

    iput v3, v2, La/d/f;->a:I

    iput-object v9, v2, La/d/f;->e:Ljava/lang/String;

    iget-object v3, v8, La/d/e;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    move-object p1, v4

    move-object v4, v2

    :goto_3
    if-nez v4, :cond_0

    if-eqz p3, :cond_0

    iget-object v2, p0, La/d/d;->d:La/d/e;

    if-eqz v2, :cond_b

    iget-object v2, p0, La/d/d;->d:La/d/e;

    iget-wide v2, v2, La/d/e;->a:J

    cmp-long v2, v10, v2

    if-lez v2, :cond_b

    const/4 v2, 0x0

    iput-object v2, p0, La/d/d;->d:La/d/e;

    :cond_b
    iget-object v2, p0, La/d/d;->d:La/d/e;

    if-nez v2, :cond_c

    new-instance v2, La/d/e;

    const-wide/16 v6, 0x0

    invoke-direct {v2, v6, v7}, La/d/e;-><init>(J)V

    iput-object v2, p0, La/d/d;->d:La/d/e;

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_d
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, La/d/d;->d:La/d/e;

    iget-object v2, v2, La/d/e;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v3, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v7, v8, :cond_f

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :cond_e
    :goto_5
    if-eqz v3, :cond_11

    iget-object v3, p0, La/d/d;->d:La/d/e;

    iget-object v3, v3, La/d/e;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/d/f;

    :goto_6
    move-object v4, v2

    goto :goto_4

    :cond_f
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_e

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v5, v8, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    const/16 v7, 0x5c

    if-ne v3, v7, :cond_10

    const/4 v3, 0x1

    goto :goto_5

    :cond_10
    const/4 v3, 0x0

    goto :goto_5

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_11
    move-object v2, v4

    goto :goto_6

    :cond_12
    move-object v8, v9

    move-object v2, v3

    move-object v3, v6

    goto/16 :goto_2

    :cond_13
    move-object v8, v9

    move-object v2, v6

    goto/16 :goto_2

    :cond_14
    move-object v9, v2

    goto/16 :goto_1

    :cond_15
    move-object/from16 v5, p2

    move-object p1, v4

    move-object v4, v3

    goto/16 :goto_3

    :cond_16
    move-object v4, v3

    move-object/from16 v5, p2

    goto/16 :goto_3
.end method

.method public a(La/d/t;)Ljava/util/HashMap;
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p1, La/d/t;->h:Ljava/lang/String;

    const-string v2, "?"

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, La/d/d;->c:La/d/e;

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, La/d/d;->c:La/d/e;

    iget-wide v4, v1, La/d/e;->a:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    iput-object v0, p0, La/d/d;->c:La/d/e;

    :cond_2
    iget-object v1, p0, La/d/d;->c:La/d/e;

    if-eqz v1, :cond_3

    iget-object v0, p0, La/d/d;->c:La/d/e;

    iget-object v0, v0, La/d/e;->b:Ljava/util/HashMap;

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v1, p1, La/d/t;->h:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, La/a;->a(Ljava/lang/String;Z)La/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, La/d/bm;->a(La/a;I)La/d/bm;

    move-result-object v1

    new-instance v3, La/d/e;

    const-wide/16 v4, 0xbb8

    invoke-direct {v3, v4, v5}, La/d/e;-><init>(J)V

    const-string v2, ""

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v2, v4}, La/d/bm;->a(La/d/t;Ljava/lang/String;I)La/d/f;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, v2

    :cond_4
    iget-object v4, v1, La/d/f;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, La/d/e;->b:Ljava/util/HashMap;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, La/d/f;->i:La/d/f;

    if-ne v1, v2, :cond_4

    iput-object v3, p0, La/d/d;->c:La/d/e;

    iget-object v1, p0, La/d/d;->c:La/d/e;

    iget-object v0, v1, La/d/e;->b:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, La/d/d;->a:La/e/e;

    sget v2, La/e/e;->a:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    sget-object v2, La/d/d;->a:La/e/e;

    invoke-virtual {v1, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method declared-synchronized a(Ljava/lang/String;La/d/f;)V
    .locals 7

    const/16 v6, 0x5c

    const/4 v5, 0x1

    monitor-enter p0

    const/16 v0, 0x5c

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/16 v1, 0x5c

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    iget v1, p2, La/d/f;->a:I

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-le v1, v5, :cond_0

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget v1, p2, La/d/f;->a:I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p2, La/d/f;->a:I

    iget-object v1, p0, La/d/d;->d:La/d/e;

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    iget-object v1, p0, La/d/d;->d:La/d/e;

    iget-wide v4, v1, La/d/e;->a:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, La/d/d;->d:La/d/e;

    :cond_2
    iget-object v1, p0, La/d/d;->d:La/d/e;

    if-nez v1, :cond_3

    new-instance v1, La/d/e;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, La/d/e;-><init>(J)V

    iput-object v1, p0, La/d/d;->d:La/d/e;

    :cond_3
    iget-object v1, p0, La/d/d;->d:La/d/e;

    iget-object v1, v1, La/d/e;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;La/d/t;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p2}, La/d/d;->a(La/d/t;)Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;La/d/t;)La/d/bm;
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, La/a;->a(Ljava/lang/String;Z)La/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, La/d/bm;->a(La/a;I)La/d/bm;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p2, v1, v2}, La/d/bm;->a(La/d/t;Ljava/lang/String;I)La/d/f;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v1, v2

    :cond_0
    :try_start_1
    iget-object v0, v1, La/d/f;->c:Ljava/lang/String;

    invoke-static {v0}, La/a;->a(Ljava/lang/String;)La/a;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, La/d/bm;->a(La/a;I)La/d/bm;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, v1, La/d/f;->i:La/d/f;

    if-ne v1, v2, :cond_0

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    sget-object v1, La/d/d;->a:La/e/e;

    sget v1, La/e/e;->a:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    sget-object v1, La/d/d;->a:La/e/e;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
