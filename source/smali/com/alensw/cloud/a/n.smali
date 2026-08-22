.class public Lcom/alensw/cloud/a/n;
.super Lcom/alensw/cloud/a/bv;


# static fields
.field private static final c:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alensw/cloud/a/n;->c:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alensw/cloud/oauth/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alensw/cloud/a/bv;-><init>(Landroid/content/Context;Lcom/alensw/cloud/oauth/a;)V

    return-void
.end method

.method private a(Lcom/a/a/a/h;Landroid/content/ContentValues;)C
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/a/a/a/h;->c()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->b:Lcom/a/a/a/l;

    invoke-static {v0, v1}, Lcom/alensw/cloud/a/n;->a(Lcom/a/a/a/l;Lcom/a/a/a/l;)V

    const-string v0, ""

    move v1, v2

    :goto_0
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v4

    sget-object v5, Lcom/a/a/a/l;->c:Lcom/a/a/a/l;

    if-eq v4, v5, :cond_6

    invoke-virtual {p1}, Lcom/a/a/a/h;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    const-string v5, "type"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v1, "folder"

    invoke-virtual {p1}, Lcom/a/a/a/h;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const-string v5, "id"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/a/a/a/h;->m()J

    move-result-wide v4

    const-string v6, "document_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :cond_2
    const-string v5, "name"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lcom/a/a/a/h;->f()Ljava/lang/String;

    move-result-object v0

    const-string v4, "_display_name"

    invoke-virtual {p2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v5, "modified_at"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/a/a/a/h;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alensw/cloud/a/n;->a(Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "last_modified"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "datetaken"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :cond_4
    const-string v5, "size"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "_size"

    invoke-virtual {p1}, Lcom/a/a/a/h;->m()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/a/a/a/h;->b()Lcom/a/a/a/h;

    goto/16 :goto_0

    :cond_6
    if-eqz v1, :cond_7

    const/16 v4, 0x44

    :goto_1
    if-eqz v1, :cond_8

    const-string v0, "_size"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v0, "mime_type"

    const-string v1, "vnd.android.document/directory"

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flags"

    const/16 v1, 0x3a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_2
    return v4

    :cond_7
    invoke-static {v0}, Lcom/alensw/b/f/c;->a(Ljava/lang/String;)C

    move-result v4

    goto :goto_1

    :cond_8
    const-string v1, "mime_type"

    invoke-static {v0}, Lcom/alensw/b/f/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x49

    if-eq v4, v0, :cond_9

    const/16 v0, 0x56

    if-ne v4, v0, :cond_a

    :cond_9
    move v0, v3

    :goto_3
    if-eqz v0, :cond_b

    :goto_4
    or-int/lit8 v0, v3, 0x6

    const-string v1, "flags"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_a
    move v0, v2

    goto :goto_3

    :cond_b
    move v3, v2

    goto :goto_4
.end method

.method static synthetic a(Lcom/alensw/cloud/a/n;Lcom/a/a/a/h;Landroid/content/ContentValues;)C
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alensw/cloud/a/n;->a(Lcom/a/a/a/h;Landroid/content/ContentValues;)C

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;)J
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alensw/cloud/a/n;->c:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "document_id"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mime_type"

    const-string v2, "vnd.android.document/directory"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "flags"

    const v2, 0x2000003a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/f;)Landroid/content/ContentValues;
    .locals 9

    new-instance v4, Landroid/content/ContentValues;

    const/16 v0, 0xa

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"name\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ", \"parent\": {\"id\":\""

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "}"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "https://api.box.com/2.0/folders"

    const-string v7, "POST"

    invoke-virtual {p0}, Lcom/alensw/cloud/a/n;->b()Ljava/util/HashMap;

    move-result-object v8

    new-instance v0, Lcom/alensw/cloud/a/q;

    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/alensw/cloud/a/q;-><init>(Lcom/alensw/cloud/a/n;ILcom/alensw/b/e/f;Landroid/content/ContentValues;Ljava/lang/StringBuilder;)V

    invoke-static {v6, v7, v8, v0}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V

    return-object v4
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/i;Lcom/alensw/b/e/e;)Landroid/content/ContentValues;
    .locals 15

    new-instance v6, Landroid/content/ContentValues;

    const/16 v2, 0xa

    invoke-direct {v6, v2}, Landroid/content/ContentValues;-><init>(I)V

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/alensw/b/e/i;->e:Ljava/io/InputStream;

    const/4 v2, 0x0

    move v11, v2

    :goto_0
    const/4 v2, 0x2

    if-ge v11, v2, :cond_4

    const/4 v2, 0x2

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v9, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v9, v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"name\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ", \"parent\": {\"id\":\""

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, "}"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Lcom/alensw/b/e/h;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Content-Disposition"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "form-data; name=\"file\"; filename=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Content-Type"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/alensw/b/e/i;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-direct {v8, v10, v2}, Lcom/alensw/b/e/h;-><init>(Ljava/lang/Object;[Ljava/lang/String;)V

    const-string v12, "https://upload.box.com/api/2.0/files/content"

    const-string v13, "POST"

    invoke-virtual {p0}, Lcom/alensw/cloud/a/n;->b()Ljava/util/HashMap;

    move-result-object v14

    new-instance v2, Lcom/alensw/cloud/a/r;

    const/4 v4, 0x1

    move-object v3, p0

    move-object/from16 v5, p4

    invoke-direct/range {v2 .. v9}, Lcom/alensw/cloud/a/r;-><init>(Lcom/alensw/cloud/a/n;ILcom/alensw/b/e/f;Landroid/content/ContentValues;Ljava/lang/StringBuilder;Lcom/alensw/b/e/h;[Ljava/lang/String;)V

    invoke-static {v12, v13, v14, v2}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V

    const/4 v2, 0x0

    aget-object v2, v9, v2

    if-nez v2, :cond_1

    :goto_1
    return-object v6

    :cond_1
    instance-of v2, v10, Ljava/io/FileInputStream;

    if-nez v2, :cond_2

    new-instance v2, Ljava/net/ProtocolException;

    const-string v3, "Can\'t rewind input stream"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object v2, v10

    check-cast v2, Ljava/io/FileInputStream;

    const-string v3, "SHA-1"

    invoke-static {v2, v3}, Lcom/alensw/b/l/b;->a(Ljava/io/FileInputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v9, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "document_id"

    const/4 v3, 0x0

    aget-object v3, v9, v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-static/range {p2 .. p2}, Lcom/alensw/cloud/a/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto/16 :goto_0

    :cond_4
    new-instance v2, Ljava/net/ProtocolException;

    const-string v3, "Create file failed"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/f;)Landroid/content/ContentValues;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.box.com/2.0/files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{\"parent\": {\"id\":\""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "PUT"

    invoke-virtual {p0}, Lcom/alensw/cloud/a/n;->b()Ljava/util/HashMap;

    move-result-object v8

    new-instance v0, Lcom/alensw/cloud/a/s;

    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/alensw/cloud/a/s;-><init>(Lcom/alensw/cloud/a/n;ILcom/alensw/b/e/f;Ljava/lang/StringBuilder;Landroid/content/ContentValues;)V

    invoke-static {v6, v7, v8, v0}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V

    return-object v5
.end method

.method protected a(Ljava/lang/String;ILcom/alensw/b/e/f;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.box.com/2.0/files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/thumbnail.jpg?min_height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&min_width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;Lcom/alensw/b/e/f;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.box.com/2.0/files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0x191

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/alensw/cloud/a/ca;

    invoke-direct {v0, p2}, Lcom/alensw/cloud/a/ca;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/alensw/b/e/f;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.box.com/2.0/folders/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {p0}, Lcom/alensw/cloud/a/n;->b()Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Lcom/alensw/cloud/a/p;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4, p3, p2}, Lcom/alensw/cloud/a/p;-><init>(Lcom/alensw/cloud/a/n;ILcom/alensw/b/e/f;Landroid/content/ContentValues;)V

    invoke-static {v0, v1, v2, v3}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/alensw/cloud/a/az;ILcom/alensw/b/e/f;)Z
    .locals 10

    const/4 v2, 0x1

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://api.box.com/2.0/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "folders/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/items?fields=name,modified_at&limit=500&offset="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v2, [I

    aput v6, v4, v6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "GET"

    invoke-virtual {p0}, Lcom/alensw/cloud/a/n;->b()Ljava/util/HashMap;

    move-result-object v9

    new-instance v0, Lcom/alensw/cloud/a/o;

    move-object v1, p0

    move-object v3, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alensw/cloud/a/o;-><init>(Lcom/alensw/cloud/a/n;ILcom/alensw/b/e/f;[ILcom/alensw/cloud/a/az;)V

    invoke-static {v7, v8, v9, v0}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V

    aget v0, v4, v6

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v6

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Lcom/alensw/b/e/f;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public c(Ljava/lang/String;Lcom/alensw/b/e/f;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.box.com/2.0/files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DELETE"

    invoke-virtual {p0}, Lcom/alensw/cloud/a/n;->b()Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Lcom/alensw/cloud/a/by;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, p2}, Lcom/alensw/cloud/a/by;-><init>(Lcom/alensw/cloud/a/bv;ILcom/alensw/b/e/f;)V

    invoke-static {v0, v1, v2, v3}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V

    return-void
.end method
