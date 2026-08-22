.class public Lcom/alensw/cloud/a/am;
.super Lcom/alensw/cloud/a/bv;


# static fields
.field private static final c:Ljava/text/DateFormat;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alensw/cloud/a/am;->c:Ljava/text/DateFormat;

    sget-object v0, Lcom/alensw/cloud/a/am;->c:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alensw/cloud/oauth/a;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alensw/cloud/a/bv;-><init>(Landroid/content/Context;Lcom/alensw/cloud/oauth/a;)V

    iget-object v0, p2, Lcom/alensw/cloud/oauth/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/alensw/cloud/a/am;->d:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)J
    .locals 4

    :try_start_0
    sget-object v0, Lcom/alensw/cloud/a/am;->c:Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

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

.method private a(Lcom/a/a/a/h;Landroid/content/ContentValues;)V
    .locals 4

    invoke-virtual {p1}, Lcom/a/a/a/h;->c()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->b:Lcom/a/a/a/l;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Object start expected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->c:Lcom/a/a/a/l;

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/a/a/a/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    const-string v1, "latitude"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "latitude"

    invoke-virtual {p1}, Lcom/a/a/a/h;->i()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_0

    :cond_1
    const-string v1, "longitude"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "longitude"

    invoke-virtual {p1}, Lcom/a/a/a/h;->i()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/a/a/a/h;->b()Lcom/a/a/a/h;

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/alensw/cloud/a/am;Lcom/a/a/a/h;Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alensw/cloud/a/am;->c(Lcom/a/a/a/h;Landroid/content/ContentValues;)V

    return-void
.end method

.method private b(Lcom/a/a/a/h;Landroid/content/ContentValues;)V
    .locals 4

    invoke-virtual {p1}, Lcom/a/a/a/h;->c()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->b:Lcom/a/a/a/l;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Object start expected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->c:Lcom/a/a/a/l;

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/a/a/a/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    const-string v1, "width"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "width"

    invoke-virtual {p1}, Lcom/a/a/a/h;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    const-string v1, "height"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "height"

    invoke-virtual {p1}, Lcom/a/a/a/h;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    const-string v1, "date"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/a/a/a/h;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/cloud/a/am;->a(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-string v2, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :cond_3
    const-string v1, "location"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/alensw/cloud/a/am;->a(Lcom/a/a/a/h;Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/a/a/a/h;->b()Lcom/a/a/a/h;

    goto :goto_0

    :cond_5
    return-void
.end method

.method private c(Lcom/a/a/a/h;Landroid/content/ContentValues;)V
    .locals 4

    invoke-virtual {p1}, Lcom/a/a/a/h;->c()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->b:Lcom/a/a/a/l;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Object start expected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->c:Lcom/a/a/a/l;

    if-eq v0, v1, :cond_9

    invoke-virtual {p1}, Lcom/a/a/a/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    const-string v1, "id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "document_id"

    invoke-virtual {p1}, Lcom/a/a/a/h;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "title"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "_display_name"

    invoke-virtual {p1}, Lcom/a/a/a/h;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "modifiedDate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "last_modified"

    invoke-virtual {p1}, Lcom/a/a/a/h;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alensw/cloud/a/am;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :cond_3
    const-string v1, "mimeType"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "mime_type"

    invoke-virtual {p1}, Lcom/a/a/a/h;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "fileSize"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "_size"

    invoke-virtual {p1}, Lcom/a/a/a/h;->m()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :cond_5
    const-string v1, "downloadUrl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "content_url"

    invoke-virtual {p1}, Lcom/a/a/a/h;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "thumbnailLink"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "thumbnail_url"

    invoke-virtual {p1}, Lcom/a/a/a/h;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "imageMediaMetadata"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/alensw/cloud/a/am;->b(Lcom/a/a/a/h;Landroid/content/ContentValues;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/a/a/a/h;->b()Lcom/a/a/a/h;

    goto/16 :goto_0

    :cond_9
    const-string v0, "application/vnd.google-apps.folder"

    const-string v1, "mime_type"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "flags"

    const v1, 0x2000003a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "mime_type"

    const-string v1, "vnd.android.document/directory"

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_size"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :goto_1
    const-string v0, "datetaken"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_a

    const-string v0, "datetaken"

    const-string v1, "last_modified"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_a
    return-void

    :cond_b
    const-string v0, "flags"

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1
.end method


# virtual methods
.method public a()Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "document_id"

    const-string v2, "root"

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

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"mimeType\":\"application/vnd.google-apps.folder\",\"title\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ",\"parents\":[{\"id\":\""

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "}"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Landroid/content/ContentValues;

    const/16 v0, 0xd

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    const-string v6, "https://www.googleapis.com/upload/drive/v2/files?uploadType=multipart"

    const-string v7, "POST"

    invoke-virtual {p0}, Lcom/alensw/cloud/a/am;->b()Ljava/util/HashMap;

    move-result-object v8

    new-instance v0, Lcom/alensw/cloud/a/ap;

    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/alensw/cloud/a/ap;-><init>(Lcom/alensw/cloud/a/am;ILcom/alensw/b/e/f;Landroid/content/ContentValues;Ljava/lang/StringBuilder;)V

    invoke-static {v6, v7, v8, v0}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V

    return-object v4
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/i;Lcom/alensw/b/e/e;)Landroid/content/ContentValues;
    .locals 10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"mimeType\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Lcom/alensw/b/e/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"title\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ",\"parents\":[{\"id\":\""

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "}"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Landroid/content/ContentValues;

    const/16 v0, 0xd

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    const-string v7, "https://www.googleapis.com/upload/drive/v2/files?uploadType=multipart"

    const-string v8, "POST"

    invoke-virtual {p0}, Lcom/alensw/cloud/a/am;->b()Ljava/util/HashMap;

    move-result-object v9

    new-instance v0, Lcom/alensw/cloud/a/aq;

    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/alensw/cloud/a/aq;-><init>(Lcom/alensw/cloud/a/am;ILcom/alensw/b/e/f;Landroid/content/ContentValues;Ljava/lang/StringBuilder;Lcom/alensw/b/e/i;)V

    invoke-static {v7, v8, v9, v0}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V

    return-object v4
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/f;)Landroid/content/ContentValues;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www.googleapis.com/drive/v2/files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/parents"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"id\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "POST"

    invoke-virtual {p0}, Lcom/alensw/cloud/a/am;->b()Ljava/util/HashMap;

    move-result-object v4

    new-instance v5, Lcom/alensw/cloud/a/ar;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v6, p4, v2}, Lcom/alensw/cloud/a/ar;-><init>(Lcom/alensw/cloud/a/am;ILcom/alensw/b/e/f;Ljava/lang/StringBuilder;)V

    invoke-static {v0, v3, v4, v5}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www.googleapis.com/drive/v2/files/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/parents/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DELETE"

    invoke-virtual {p0}, Lcom/alensw/cloud/a/am;->b()Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Lcom/alensw/cloud/a/by;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5, p4}, Lcom/alensw/cloud/a/by;-><init>(Lcom/alensw/cloud/a/bv;ILcom/alensw/b/e/f;)V

    invoke-static {v0, v2, v3, v4}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V

    const-string v0, "parent_id"

    invoke-virtual {v1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public a(Ljava/lang/String;ILcom/alensw/b/e/f;)Ljava/lang/String;
    .locals 2

    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/alensw/cloud/a/am;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/alensw/b/e/f;)V

    const-string v1, "thumbnail_url"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/alensw/b/e/f;)Ljava/lang/String;
    .locals 2

    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    invoke-virtual {p0, p1, v0, p2}, Lcom/alensw/cloud/a/am;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/alensw/b/e/f;)V

    const-string v1, "content_url"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

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

    const-string v1, "https://www.googleapis.com/drive/v2/files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {p0}, Lcom/alensw/cloud/a/am;->b()Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Lcom/alensw/cloud/a/ao;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4, p3, p2}, Lcom/alensw/cloud/a/ao;-><init>(Lcom/alensw/cloud/a/am;ILcom/alensw/b/e/f;Landroid/content/ContentValues;)V

    invoke-static {v0, v1, v2, v3}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/alensw/cloud/a/az;ILcom/alensw/b/e/f;)Z
    .locals 11

    const/4 v2, 0x1

    const/4 v10, 0x0

    const-string v0, "\'%s\' in parents and trashed != true and (mimeType = \'application/vnd.google-apps.folder\' or mimeType contains \'image/\' or mimeType contains \'video/\')"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v10

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v1, "https://www.googleapis.com/drive/v2/files"

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?q="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&maxResults=1000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v2, [Ljava/lang/String;

    const-string v0, ""

    aput-object v0, v4, v10

    :cond_0
    aget-object v0, v4, v10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :goto_0
    const-string v8, "GET"

    invoke-virtual {p0}, Lcom/alensw/cloud/a/am;->b()Ljava/util/HashMap;

    move-result-object v9

    new-instance v0, Lcom/alensw/cloud/a/an;

    move-object v1, p0

    move-object v3, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alensw/cloud/a/an;-><init>(Lcom/alensw/cloud/a/am;ILcom/alensw/b/e/f;[Ljava/lang/String;Lcom/alensw/cloud/a/az;)V

    invoke-static {v6, v8, v9, v0}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V

    aget-object v0, v4, v10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "&pageToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v4, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

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

    const-string v1, "https://www.googleapis.com/drive/v2/files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/trash"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {p0}, Lcom/alensw/cloud/a/am;->b()Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Lcom/alensw/cloud/a/by;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, p2}, Lcom/alensw/cloud/a/by;-><init>(Lcom/alensw/cloud/a/bv;ILcom/alensw/b/e/f;)V

    invoke-static {v0, v1, v2, v3}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V

    return-void
.end method

.method protected declared-synchronized c_()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alensw/cloud/a/am;->b:Lcom/alensw/cloud/oauth/aj;

    iget-object v0, v0, Lcom/alensw/cloud/oauth/aj;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/a/am;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/alensw/cloud/a/am;->b:Lcom/alensw/cloud/oauth/aj;

    iget-object v2, p0, Lcom/alensw/cloud/a/am;->d:Ljava/lang/String;

    sget-object v3, Lcom/alensw/cloud/oauth/v;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/alensw/cloud/a/am;->a(Landroid/content/Context;Lcom/alensw/cloud/oauth/aj;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alensw/cloud/a/am;->b:Lcom/alensw/cloud/oauth/aj;

    iget-object v0, v0, Lcom/alensw/cloud/oauth/aj;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
