.class public Lcom/alensw/cloud/a/bu;
.super Lcom/alensw/cloud/a/bv;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:La/d/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alensw/cloud/oauth/a;)V
    .locals 11

    const/16 v3, 0x2f

    const/4 v9, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/alensw/cloud/a/bv;-><init>(Landroid/content/Context;Lcom/alensw/cloud/oauth/a;)V

    iget-object v0, p2, Lcom/alensw/cloud/oauth/a;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v3, ""

    :try_start_0
    new-instance v1, Ljava/net/URL;

    const/4 v4, 0x0

    sget-object v5, La/d/j;->a:Ljava/net/URLStreamHandler;

    invoke-direct {v1, v4, v0, v5}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    iget-object v4, p2, Lcom/alensw/cloud/oauth/a;->b:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p2, Lcom/alensw/cloud/oauth/a;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v1, La/d/t;

    const/4 v5, 0x0

    iget-object v6, p2, Lcom/alensw/cloud/oauth/a;->g:Lcom/alensw/cloud/oauth/aj;

    iget-object v6, v6, Lcom/alensw/cloud/oauth/aj;->b:Ljava/lang/String;

    invoke-direct {v1, v5, v4, v6}, La/d/t;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    :goto_0
    iput-object v2, p0, Lcom/alensw/cloud/a/bu;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/alensw/cloud/a/bu;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/cloud/a/bu;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/alensw/cloud/a/bu;->e:La/d/t;

    return-void

    :catch_0
    move-exception v1

    move-object v10, v1

    move-object v1, v3

    move-object v3, v10

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)La/d/bd;
    .locals 3

    new-instance v0, La/d/bd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alensw/cloud/a/bu;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/cloud/a/bu;->e:La/d/t;

    invoke-direct {v0, v1, v2}, La/d/bd;-><init>(Ljava/lang/String;La/d/t;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v1, 0x2f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;La/d/bd;Landroid/content/ContentValues;)C
    .locals 2

    invoke-virtual {p2}, La/d/bd;->z()La/d/i;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v1, v0, p3}, Lcom/alensw/cloud/a/bu;->a(Ljava/lang/String;La/d/i;Landroid/content/ContentValues;)C

    move-result v0

    const-string v1, "document_id"

    invoke-virtual {p3, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method protected a(Ljava/lang/String;La/d/i;Landroid/content/ContentValues;)C
    .locals 12

    const/16 v3, 0x10

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-interface {p2}, La/d/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, La/d/i;->c()I

    move-result v6

    and-int/lit8 v2, v6, 0x10

    if-ne v2, v3, :cond_1

    move v5, v4

    :goto_0
    if-eqz v5, :cond_2

    const/16 v2, 0x44

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v4, :cond_0

    add-int/lit8 v8, v7, -0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2f

    if-ne v8, v9, :cond_0

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_1
    if-nez v2, :cond_3

    move v0, v1

    :goto_2
    return v0

    :cond_1
    move v5, v1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/alensw/b/f/c;->a(Ljava/lang/String;)C

    move-result v2

    goto :goto_1

    :cond_3
    const-string v1, "document_id"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_display_name"

    invoke-virtual {p3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_size"

    invoke-interface {p2}, La/d/i;->f()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p3, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-interface {p2}, La/d/i;->e()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const-string v1, "last_modified"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p3, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "datetaken"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p3, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "mime_type"

    if-eqz v5, :cond_4

    const-string v0, "vnd.android.document/directory"

    :goto_3
    invoke-virtual {p3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_5

    move v1, v3

    :goto_4
    and-int/lit8 v0, v6, 0x1

    if-nez v0, :cond_7

    if-eqz v5, :cond_6

    const/16 v0, 0xa

    :goto_5
    or-int/2addr v0, v1

    :goto_6
    const-string v1, "flags"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move v0, v2

    goto :goto_2

    :cond_4
    invoke-static {v0, v2}, Lcom/alensw/b/f/c;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    move v1, v4

    goto :goto_4

    :cond_6
    const/4 v0, 0x6

    goto :goto_5

    :cond_7
    move v0, v1

    goto :goto_6
.end method

.method public a()Landroid/content/ContentValues;
    .locals 4

    new-instance v1, Landroid/content/ContentValues;

    const/4 v0, 0x3

    invoke-direct {v1, v0}, Landroid/content/ContentValues;-><init>(I)V

    const-string v0, "document_id"

    iget-object v2, p0, Lcom/alensw/cloud/a/bu;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mime_type"

    const-string v2, "vnd.android.document/directory"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "flags"

    const-string v0, "/"

    iget-object v3, p0, Lcom/alensw/cloud/a/bu;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    or-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v1

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/f;)Landroid/content/ContentValues;
    .locals 3

    new-instance v1, Landroid/content/ContentValues;

    const/16 v0, 0x8

    invoke-direct {v1, v0}, Landroid/content/ContentValues;-><init>(I)V

    :try_start_0
    invoke-static {p1, p2}, Lcom/alensw/cloud/a/bu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alensw/cloud/a/bu;->a(Ljava/lang/String;)La/d/bd;

    move-result-object v2

    invoke-virtual {v2}, La/d/bd;->w()V

    invoke-virtual {p0, v0, v2, v1}, Lcom/alensw/cloud/a/bu;->a(Ljava/lang/String;La/d/bd;Landroid/content/ContentValues;)C
    :try_end_0
    .catch La/d/w; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/a/bu;->a(La/d/w;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/i;Lcom/alensw/b/e/e;)Landroid/content/ContentValues;
    .locals 10

    invoke-static {p1, p2}, Lcom/alensw/cloud/a/bu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-direct {p0, v7}, Lcom/alensw/cloud/a/bu;->a(Ljava/lang/String;)La/d/bd;
    :try_end_0
    .catch La/d/w; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    :try_start_1
    invoke-virtual {v6}, La/d/bd;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v6}, La/d/bd;->v()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    invoke-static {p2}, Lcom/alensw/cloud/a/bu;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alensw/cloud/a/bu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alensw/cloud/a/bu;->a(Ljava/lang/String;)La/d/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/bd;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v6}, La/d/bd;->v()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-lez v1, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "file already exists"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch La/d/w; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    :goto_0
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/alensw/cloud/a/bu;->a(La/d/w;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    :goto_1
    iget-wide v2, p3, Lcom/alensw/b/e/i;->b:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    :try_start_3
    iget-wide v2, p3, Lcom/alensw/b/e/i;->b:J

    invoke-virtual {v0, v2, v3}, La/d/bd;->b(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_2
    new-instance v1, Landroid/content/ContentValues;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    invoke-virtual {p0, v7, v0, v1}, Lcom/alensw/cloud/a/bu;->a(Ljava/lang/String;La/d/bd;Landroid/content/ContentValues;)C

    return-object v1

    :cond_1
    move-object v6, v0

    :cond_2
    :try_start_4
    new-instance v1, La/d/bh;

    invoke-direct {v1, v6}, La/d/bh;-><init>(La/d/bd;)V
    :try_end_4
    .catch La/d/w; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-wide v2, p3, Lcom/alensw/b/e/i;->a:J

    iget-object v0, p3, Lcom/alensw/b/e/i;->e:Ljava/io/InputStream;

    const v4, 0xf000

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/alensw/b/e/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;JILcom/alensw/b/e/f;)J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "upload wrong bytes: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch La/d/w; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    move-object v0, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v2}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_2
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/f;)Landroid/content/ContentValues;
    .locals 5

    const/4 v3, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {p3, v0}, Lcom/alensw/cloud/a/bu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/alensw/cloud/a/bu;->a(Ljava/lang/String;)La/d/bd;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/alensw/cloud/a/bu;->a(Ljava/lang/String;)La/d/bd;
    :try_end_0
    .catch La/d/w; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, La/d/bd;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "file exists"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch La/d/w; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/alensw/cloud/a/bu;->a(La/d/w;)V

    :goto_1
    new-instance v1, Landroid/content/ContentValues;

    const/16 v3, 0x8

    invoke-direct {v1, v3}, Landroid/content/ContentValues;-><init>(I)V

    invoke-virtual {p0, v2, v0, v1}, Lcom/alensw/cloud/a/bu;->a(Ljava/lang/String;La/d/bd;Landroid/content/ContentValues;)C

    return-object v1

    :cond_1
    :try_start_2
    invoke-virtual {v3, v0}, La/d/bd;->a(La/d/bd;)V
    :try_end_2
    .catch La/d/w; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;ILcom/alensw/b/e/f;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alensw/cloud/a/bu;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;Lcom/alensw/b/e/f;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alensw/cloud/a/bu;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(La/d/w;)V
    .locals 3

    new-instance v0, Lcom/alensw/cloud/a/cb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, La/d/w;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alensw/cloud/a/cb;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/alensw/b/e/f;)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/alensw/cloud/a/bu;->a(Ljava/lang/String;)La/d/bd;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/alensw/cloud/a/bu;->a(Ljava/lang/String;La/d/bd;Landroid/content/ContentValues;)C
    :try_end_0
    .catch La/d/w; {:try_start_0 .. :try_end_0} :catch_0
    .catch La/d/bc; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/a/bu;->a(La/d/w;)V

    goto :goto_0

    :catch_1
    move-exception v0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/i;Lcom/alensw/b/e/f;)V
    .locals 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/alensw/cloud/a/bu;->a(Ljava/lang/String;)La/d/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/bd;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alensw/b/f/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p4, Lcom/alensw/b/e/i;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p4, Lcom/alensw/b/e/i;->d:Ljava/lang/String;

    invoke-virtual {v0}, La/d/bd;->q()J

    move-result-wide v2

    iput-wide v2, p4, Lcom/alensw/b/e/i;->b:J

    new-instance v1, La/d/bg;

    invoke-direct {v1, v0}, La/d/bg;-><init>(La/d/bd;)V

    iput-object v1, p4, Lcom/alensw/b/e/i;->e:Ljava/io/InputStream;

    invoke-virtual {v0}, La/d/bd;->v()J

    move-result-wide v0

    iput-wide v0, p4, Lcom/alensw/b/e/i;->a:J

    if-eqz p3, :cond_0

    const-string v0, "bytes="

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bytes="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I
    :try_end_0
    .catch La/d/w; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p4, Lcom/alensw/b/e/i;->e:Ljava/io/InputStream;

    invoke-virtual {v2, v0, v1}, Ljava/io/InputStream;->skip(J)J

    iget-wide v2, p4, Lcom/alensw/b/e/i;->a:J

    sub-long v0, v2, v0

    iput-wide v0, p4, Lcom/alensw/b/e/i;->a:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch La/d/w; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/a/bu;->a(La/d/w;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/alensw/cloud/a/az;ILcom/alensw/b/e/f;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/alensw/cloud/a/bu;->a(Ljava/lang/String;)La/d/bd;

    move-result-object v0

    const-string v2, "*"

    const/16 v3, 0x14

    invoke-virtual {v0, v2, v3}, La/d/bd;->b(Ljava/lang/String;I)Ljava/util/ArrayList;
    :try_end_0
    .catch La/d/w; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-static {p1, v1}, Lcom/alensw/cloud/a/bu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/d/i;

    :try_start_1
    new-instance v3, Landroid/content/ContentValues;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    invoke-virtual {p0, v1, v0, v3}, Lcom/alensw/cloud/a/bu;->a(Ljava/lang/String;La/d/i;Landroid/content/ContentValues;)C

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v3}, Lcom/alensw/cloud/a/az;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch La/d/w; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/a/bu;->a(La/d/w;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/a/bu;->a(La/d/w;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/lang/String;Lcom/alensw/b/e/f;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/f;)V
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, La/d/bd;

    iget-object v0, p0, Lcom/alensw/cloud/a/bu;->e:La/d/t;

    invoke-direct {v3, p1, v0}, La/d/bd;-><init>(Ljava/lang/String;La/d/t;)V

    new-instance v0, La/d/bg;

    invoke-direct {v0, v3}, La/d/bg;-><init>(La/d/bd;)V
    :try_end_0
    .catch La/d/w; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alensw/b/l/b;->e(Ljava/io/File;)Ljava/io/FileOutputStream;
    :try_end_1
    .catch La/d/w; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    :try_start_2
    invoke-virtual {v3}, La/d/bd;->v()J

    move-result-wide v2

    const v4, 0xf000

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alensw/b/e/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;JILcom/alensw/b/e/f;)J
    :try_end_2
    .catch La/d/w; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v0}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/alensw/cloud/a/bu;->a(La/d/w;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-static {v2}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/alensw/b/e/b;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    :catchall_2
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v6, v1

    move-object v1, v2

    move-object v2, v6

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_1

    :catch_2
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_1
.end method

.method public c(Ljava/lang/String;Lcom/alensw/b/e/f;)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/alensw/cloud/a/bu;->a(Ljava/lang/String;)La/d/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/bd;->u()V
    :try_end_0
    .catch La/d/w; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/a/bu;->a(La/d/w;)V

    goto :goto_0
.end method

.method public d_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
