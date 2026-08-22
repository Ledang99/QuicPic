.class Lcom/alensw/ui/c/bh;
.super Lcom/alensw/ui/a/ao;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/alensw/a/ba;

.field final synthetic c:[Ljava/lang/String;

.field final synthetic e:Lcom/alensw/ui/c/bf;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/bf;Landroid/app/Activity;Ljava/lang/String;ILjava/util/ArrayList;Lcom/alensw/a/ba;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/bh;->e:Lcom/alensw/ui/c/bf;

    iput-object p5, p0, Lcom/alensw/ui/c/bh;->a:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/alensw/ui/c/bh;->b:Lcom/alensw/a/ba;

    iput-object p7, p0, Lcom/alensw/ui/c/bh;->c:[Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, Lcom/alensw/ui/a/ao;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/ui/c/bh;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alensw/a/d;

    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alensw/ui/c/bh;->e:Lcom/alensw/ui/c/bf;

    iget-object v3, v3, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    iget-object v4, v2, Lcom/alensw/a/d;->b:Ljava/lang/String;

    invoke-direct {v11, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iget-char v3, v2, Lcom/alensw/a/d;->c:C

    invoke-static {v11, v3, v4, v5}, Lcom/alensw/b/l/b;->a(Ljava/io/File;CJ)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alensw/ui/c/bh;->b:Lcom/alensw/a/ba;

    iget-char v6, v2, Lcom/alensw/a/d;->c:C

    invoke-virtual {v3, v12, v6}, Lcom/alensw/a/ba;->a(Ljava/lang/String;C)Ljava/lang/Integer;

    move-result-object v7

    const/4 v6, 0x0

    const/4 v3, 0x0

    if-eqz v7, :cond_5

    iget-char v3, v2, Lcom/alensw/a/d;->c:C

    invoke-static {v3}, Lcom/alensw/a/ba;->a(C)Landroid/net/Uri;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "_id="

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-char v7, v2, Lcom/alensw/a/d;->c:C

    const/16 v13, 0x56

    if-ne v7, v13, :cond_4

    cmp-long v7, v8, v4

    if-nez v7, :cond_4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alensw/ui/c/bh;->b:Lcom/alensw/a/ba;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alensw/ui/c/bh;->c:[Ljava/lang/String;

    invoke-virtual {v7, v6, v13, v3}, Lcom/alensw/a/ba;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-lez v13, :cond_4

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v18, v6

    move-wide v6, v8

    move-object/from16 v8, v18

    :goto_0
    cmp-long v9, v4, v6

    if-eqz v9, :cond_1

    :try_start_0
    invoke-virtual {v11, v6, v7}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_1

    move-wide v4, v6

    :cond_1
    :goto_1
    const-wide/16 v14, 0x3e8

    div-long v14, v4, v14

    long-to-int v9, v14

    iput v9, v2, Lcom/alensw/a/d;->d:I

    const-wide/16 v14, 0x3e8

    div-long v14, v6, v14

    long-to-int v9, v14

    iput v9, v2, Lcom/alensw/a/d;->e:I

    sget-object v2, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    const-wide/16 v14, 0x3e8

    div-long v14, v4, v14

    long-to-int v9, v14

    int-to-long v14, v9

    invoke-virtual {v2, v12, v14, v15}, Lcom/alensw/a/bc;->a(Ljava/lang/String;J)V

    if-eqz v3, :cond_2

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "datetaken"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "date_modified"

    const-wide/16 v12, 0x3e8

    div-long/2addr v4, v12

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/ui/c/bh;->b:Lcom/alensw/a/ba;

    const/4 v5, 0x0

    invoke-virtual {v4, v8, v2, v3, v5}, Lcom/alensw/a/ba;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/alensw/ui/c/bh;->d()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    return-void

    :catch_0
    move-exception v9

    goto :goto_1

    :cond_4
    move-object/from16 v18, v6

    move-wide v6, v8

    move-object/from16 v8, v18

    goto :goto_0

    :cond_5
    move-object/from16 v18, v6

    move-wide v6, v8

    move-object/from16 v8, v18

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/bh;->e:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/bh;->e:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->l()V

    iget-object v0, p0, Lcom/alensw/ui/c/bh;->e:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->requestLayout()V

    :cond_0
    return-void
.end method
