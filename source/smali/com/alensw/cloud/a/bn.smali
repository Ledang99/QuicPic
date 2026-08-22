.class public Lcom/alensw/cloud/a/bn;
.super Lcom/alensw/cloud/a/bv;


# static fields
.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/text/DateFormat;

.field private static final i:[Ljava/lang/String;


# instance fields
.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&fields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "openSearch:totalResults,entry(gphoto:id,title,georss:where,media:group(media:thumbnail,media:content),content,gphoto:width,gphoto:height,gphoto:timestamp)"

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alensw/cloud/a/bn;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&fields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "openSearch:totalResults,entry[gphoto:albumType!=\'Buzz\'](gphoto:id,title,georss:where,media:group(media:thumbnail,media:content),content,gphoto:width,gphoto:height,gphoto:timestamp)"

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alensw/cloud/a/bn;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&fields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "openSearch:totalResults,entry[gphoto:albumType=\'Buzz\'](gphoto:id,title,georss:where,media:group(media:thumbnail,media:content),content,gphoto:width,gphoto:height,gphoto:timestamp)"

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alensw/cloud/a/bn;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&fields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "openSearch:totalResults,entry[gphoto:albumType=\'Buzz\'](media:group(media:thumbnail),gphoto:timestamp)"

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alensw/cloud/a/bn;->f:Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alensw/cloud/a/bn;->g:Ljava/text/DateFormat;

    sget-object v0, Lcom/alensw/cloud/a/bn;->g:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "&"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "&amp;"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "<"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "&lt;"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ">"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "&gt;"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\""

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "&quot;"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\'"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "&apos;"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alensw/cloud/a/bn;->i:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alensw/cloud/oauth/a;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alensw/cloud/a/bv;-><init>(Landroid/content/Context;Lcom/alensw/cloud/oauth/a;)V

    iget-object v0, p2, Lcom/alensw/cloud/oauth/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/alensw/cloud/a/bn;->h:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/a/a/a/h;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :goto_0
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v1

    sget-object v2, Lcom/a/a/a/l;->c:Lcom/a/a/a/l;

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/a/a/a/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    const-string v1, "$t"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/a/a/a/h;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "$t expected!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v0
.end method

.method static synthetic a(Lcom/alensw/cloud/a/bn;Lcom/a/a/a/h;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alensw/cloud/a/bn;->a(Lcom/a/a/a/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alensw/cloud/a/bn;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alensw/cloud/a/bn;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/alensw/cloud/a/bn;->i:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/alensw/cloud/a/bn;->i:[Ljava/lang/String;

    aget-object v1, v1, v0

    sget-object v2, Lcom/alensw/cloud/a/bn;->i:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private a(Lcom/a/a/a/h;Landroid/content/ContentValues;)V
    .locals 5

    invoke-virtual {p1}, Lcom/a/a/a/h;->c()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->b:Lcom/a/a/a/l;

    invoke-static {v0, v1}, Lcom/alensw/cloud/a/bn;->a(Lcom/a/a/a/l;Lcom/a/a/a/l;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->c:Lcom/a/a/a/l;

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/a/a/a/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    const-string v1, "gml$Point"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->c:Lcom/a/a/a/l;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/a/a/a/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    const-string v1, "gml$pos"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/alensw/cloud/a/bn;->a(Lcom/a/a/a/h;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-string v4, "latitude"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p2, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v2, "longitude"

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/a/a/a/h;->b()Lcom/a/a/a/h;

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/a/a/a/h;->b()Lcom/a/a/a/h;

    goto :goto_0

    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/alensw/cloud/a/bn;Ljava/lang/String;Lcom/a/a/a/h;Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/cloud/a/bn;->a(Ljava/lang/String;Lcom/a/a/a/h;Landroid/content/ContentValues;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/a/a/a/h;Landroid/content/ContentValues;)V
    .locals 20

    const-string v4, "/albumid/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    const-string v5, ""

    const-string v4, ""

    const-wide/16 v12, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/a/a/a/h;->c()Lcom/a/a/a/l;

    move-result-object v14

    sget-object v16, Lcom/a/a/a/l;->b:Lcom/a/a/a/l;

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/alensw/cloud/a/bn;->a(Lcom/a/a/a/l;Lcom/a/a/a/l;)V

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v14

    sget-object v16, Lcom/a/a/a/l;->c:Lcom/a/a/a/l;

    move-object/from16 v0, v16

    if-eq v14, v0, :cond_10

    invoke-virtual/range {p2 .. p2}, Lcom/a/a/a/h;->d()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    const-string v16, "gphoto$id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "/"

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v14, ""

    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-eqz v15, :cond_1

    const-string v14, "/photoid/"

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/alensw/cloud/a/bn;->a(Lcom/a/a/a/h;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v16, "document_id"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v18, v6

    move-wide v6, v8

    move-wide v8, v10

    move-wide v10, v12

    move-object v12, v4

    move-object v13, v5

    move-wide/from16 v4, v18

    :goto_3
    move-wide/from16 v18, v4

    move-object v4, v12

    move-object v5, v13

    move-wide v12, v10

    move-wide v10, v8

    move-wide v8, v6

    move-wide/from16 v6, v18

    goto :goto_0

    :cond_0
    move-object/from16 v14, p1

    goto :goto_1

    :cond_1
    const-string v14, "/albumid/"

    goto :goto_2

    :cond_2
    const-string v16, "title"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    const-string v14, "_display_name"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/alensw/cloud/a/bn;->a(Lcom/a/a/a/h;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v18, v6

    move-wide v6, v8

    move-wide v8, v10

    move-wide v10, v12

    move-object v12, v4

    move-object v13, v5

    move-wide/from16 v4, v18

    goto :goto_3

    :cond_3
    const-string v16, "georss$where"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/alensw/cloud/a/bn;->a(Lcom/a/a/a/h;Landroid/content/ContentValues;)V

    move-wide/from16 v18, v6

    move-wide v6, v8

    move-wide v8, v10

    move-wide v10, v12

    move-object v12, v4

    move-object v13, v5

    move-wide/from16 v4, v18

    goto :goto_3

    :cond_4
    const-string v16, "media$group"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/alensw/cloud/a/bn;->b(Lcom/a/a/a/h;Landroid/content/ContentValues;)V

    move-wide/from16 v18, v6

    move-wide v6, v8

    move-wide v8, v10

    move-wide v10, v12

    move-object v12, v4

    move-object v13, v5

    move-wide/from16 v4, v18

    goto :goto_3

    :cond_5
    const-string v16, "gphoto$width"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    const-string v14, "width"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/alensw/cloud/a/bn;->a(Lcom/a/a/a/h;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/alensw/b/l/b;->a(Ljava/lang/String;I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-wide/from16 v18, v6

    move-wide v6, v8

    move-wide v8, v10

    move-wide v10, v12

    move-object v12, v4

    move-object v13, v5

    move-wide/from16 v4, v18

    goto/16 :goto_3

    :cond_6
    const-string v16, "gphoto$height"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    const-string v14, "height"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/alensw/cloud/a/bn;->a(Lcom/a/a/a/h;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/alensw/b/l/b;->a(Ljava/lang/String;I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-wide/from16 v18, v6

    move-wide v6, v8

    move-wide v8, v10

    move-wide v10, v12

    move-object v12, v4

    move-object v13, v5

    move-wide/from16 v4, v18

    goto/16 :goto_3

    :cond_7
    const-string v16, "gphoto$timestamp"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/alensw/cloud/a/bn;->a(Lcom/a/a/a/h;)Ljava/lang/String;

    move-result-object v12

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v12, v0, v1}, Lcom/alensw/b/l/b;->a(Ljava/lang/String;J)J

    move-result-wide v12

    const-wide/16 v16, 0x3e8

    div-long v12, v12, v16

    move-wide/from16 v18, v6

    move-wide v6, v8

    move-wide v8, v10

    move-wide v10, v12

    move-object v12, v4

    move-object v13, v5

    move-wide/from16 v4, v18

    goto/16 :goto_3

    :cond_8
    const-string v16, "updated"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/alensw/cloud/a/bn;->a(Lcom/a/a/a/h;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/alensw/cloud/a/bn;->e(Ljava/lang/String;)J

    move-result-wide v10

    move-wide/from16 v18, v6

    move-wide v6, v8

    move-wide v8, v10

    move-wide v10, v12

    move-object v12, v4

    move-object v13, v5

    move-wide/from16 v4, v18

    goto/16 :goto_3

    :cond_9
    const-string v16, "app$edited"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/alensw/cloud/a/bn;->a(Lcom/a/a/a/h;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/alensw/cloud/a/bn;->e(Ljava/lang/String;)J

    move-result-wide v8

    move-wide/from16 v18, v6

    move-wide v6, v8

    move-wide v8, v10

    move-wide v10, v12

    move-object v12, v4

    move-object v13, v5

    move-wide/from16 v4, v18

    goto/16 :goto_3

    :cond_a
    const-string v16, "published"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/alensw/cloud/a/bn;->a(Lcom/a/a/a/h;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/alensw/cloud/a/bn;->e(Ljava/lang/String;)J

    move-result-wide v6

    move-wide/from16 v18, v6

    move-wide v6, v8

    move-wide v8, v10

    move-wide v10, v12

    move-object v12, v4

    move-object v13, v5

    move-wide/from16 v4, v18

    goto/16 :goto_3

    :cond_b
    const-string v16, "content"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v14

    sget-object v16, Lcom/a/a/a/l;->c:Lcom/a/a/a/l;

    move-object/from16 v0, v16

    if-eq v14, v0, :cond_f

    invoke-virtual/range {p2 .. p2}, Lcom/a/a/a/h;->d()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    const-string v16, "src"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-virtual/range {p2 .. p2}, Lcom/a/a/a/h;->f()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/alensw/cloud/a/bn;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_c
    const-string v16, "type"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-virtual/range {p2 .. p2}, Lcom/a/a/a/h;->f()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/a/a/a/h;->b()Lcom/a/a/a/h;

    goto :goto_4

    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/a/a/a/h;->b()Lcom/a/a/a/h;

    :cond_f
    move-wide/from16 v18, v6

    move-wide v6, v8

    move-wide v8, v10

    move-wide v10, v12

    move-object v12, v4

    move-object v13, v5

    move-wide/from16 v4, v18

    goto/16 :goto_3

    :cond_10
    const-string v14, "content_url"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_11

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_12

    :cond_11
    const-string v14, ""

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    const-string v14, "content_url"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mime_type"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    if-eqz v15, :cond_15

    const/4 v4, 0x7

    :goto_5
    const-string v5, "flags"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez v15, :cond_13

    const-string v4, "mime_type"

    const-string v5, "vnd.android.document/directory"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    cmp-long v4, v10, v12

    if-gez v4, :cond_19

    move-wide v4, v12

    :goto_6
    cmp-long v10, v4, v8

    if-gez v10, :cond_14

    move-wide v4, v8

    :cond_14
    cmp-long v8, v4, v6

    if-gez v8, :cond_18

    :goto_7
    const-wide/16 v4, 0x0

    cmp-long v4, v12, v4

    if-eqz v4, :cond_17

    const-string v4, "last_modified"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "datetaken"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :goto_8
    return-void

    :cond_15
    const-string v4, "/post"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    :goto_9
    or-int/lit8 v4, v4, 0x31

    goto :goto_5

    :cond_16
    const/4 v4, 0x6

    goto :goto_9

    :cond_17
    const-string v4, "last_modified"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "datetaken"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_8

    :cond_18
    move-wide v6, v4

    goto :goto_7

    :cond_19
    move-wide v4, v10

    goto :goto_6
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Lcom/alensw/b/e/f;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://picasaweb.google.com/data/entry/api/user/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/alensw/cloud/a/bn;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?alt=json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "GET"

    invoke-virtual {p0}, Lcom/alensw/cloud/a/bn;->b()Ljava/util/HashMap;

    move-result-object v8

    new-instance v0, Lcom/alensw/cloud/a/bt;

    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alensw/cloud/a/bt;-><init>(Lcom/alensw/cloud/a/bn;ILcom/alensw/b/e/f;Ljava/lang/String;Landroid/content/ContentValues;)V

    invoke-static {v6, v7, v8, v0}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V

    return-void
.end method

.method private b(Lcom/a/a/a/h;Landroid/content/ContentValues;)V
    .locals 2

    invoke-virtual {p1}, Lcom/a/a/a/h;->c()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->b:Lcom/a/a/a/l;

    invoke-static {v0, v1}, Lcom/alensw/cloud/a/bn;->a(Lcom/a/a/a/l;Lcom/a/a/a/l;)V

    :goto_0
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->c:Lcom/a/a/a/l;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/a/a/a/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    const-string v1, "media$thumbnail"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/alensw/cloud/a/bn;->d(Lcom/a/a/a/h;Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_0
    const-string v1, "media$content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/alensw/cloud/a/bn;->c(Lcom/a/a/a/h;Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/a/a/a/h;->b()Lcom/a/a/a/h;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "/post"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/post"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const-string v0, "/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    goto :goto_0
.end method

.method private c(Lcom/a/a/a/h;Landroid/content/ContentValues;)V
    .locals 13

    const/4 v8, -0x1

    const/4 v7, -0x1

    const-string v5, ""

    const-string v4, ""

    const-string v2, ""

    const-string v1, ""

    :goto_0
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v3, Lcom/a/a/a/l;->e:Lcom/a/a/a/l;

    if-eq v0, v3, :cond_6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const-string v0, ""

    const-string v3, ""

    :goto_1
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v10

    sget-object v11, Lcom/a/a/a/l;->c:Lcom/a/a/a/l;

    if-eq v10, v11, :cond_4

    invoke-virtual {p1}, Lcom/a/a/a/h;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    const-string v11, "width"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {p1}, Lcom/a/a/a/h;->g()I

    move-result v9

    goto :goto_1

    :cond_0
    const-string v11, "height"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {p1}, Lcom/a/a/a/h;->g()I

    move-result v6

    goto :goto_1

    :cond_1
    const-string v11, "url"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {p1}, Lcom/a/a/a/h;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alensw/cloud/a/bn;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const-string v11, "type"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p1}, Lcom/a/a/a/h;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/a/a/a/h;->b()Lcom/a/a/a/h;

    goto :goto_1

    :cond_4
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    const-string v9, "video/mpeg4"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    if-le v6, v7, :cond_5

    move-object v1, v2

    move v4, v6

    move-object v2, v3

    move v6, v8

    move-object v3, v5

    :goto_2
    move-object v5, v3

    move v7, v4

    move v8, v6

    move-object v4, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_5
    const-string v9, "image/"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    if-le v6, v8, :cond_9

    move-object v2, v4

    move v4, v7

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_2

    :cond_6
    if-ltz v7, :cond_8

    const-string v0, "content_url"

    invoke-virtual {p2, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mime_type"

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void

    :cond_8
    if-ltz v8, :cond_7

    const-string v0, "content_url"

    invoke-virtual {p2, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mime_type"

    invoke-virtual {p2, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    move-object v0, v1

    move-object v3, v5

    move v6, v8

    move-object v1, v2

    move-object v2, v4

    move v4, v7

    goto :goto_2
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string v0, "/"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/photoid/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "/albumid/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "/"

    goto :goto_0
.end method

.method private d(Lcom/a/a/a/h;Landroid/content/ContentValues;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v3, -0x1

    const-string v1, ""

    :goto_0
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v2, Lcom/a/a/a/l;->e:Lcom/a/a/a/l;

    if-eq v0, v2, :cond_4

    const-string v0, ""

    move v2, v4

    move v5, v4

    :goto_1
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v6

    sget-object v7, Lcom/a/a/a/l;->c:Lcom/a/a/a/l;

    if-eq v6, v7, :cond_3

    invoke-virtual {p1}, Lcom/a/a/a/h;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    const-string v7, "width"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Lcom/a/a/a/h;->g()I

    move-result v5

    goto :goto_1

    :cond_0
    const-string v7, "height"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Lcom/a/a/a/h;->g()I

    move-result v2

    goto :goto_1

    :cond_1
    const-string v7, "url"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Lcom/a/a/a/h;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alensw/cloud/a/bn;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/a/a/a/h;->b()Lcom/a/a/a/h;

    goto :goto_1

    :cond_3
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-le v2, v3, :cond_6

    move v1, v2

    :goto_2
    move v3, v1

    move-object v1, v0

    goto :goto_0

    :cond_4
    if-ltz v3, :cond_5

    const-string v0, "thumbnail_url"

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    move-object v0, v1

    move v1, v3

    goto :goto_2
.end method

.method private e(Ljava/lang/String;)J
    .locals 4

    :try_start_0
    sget-object v0, Lcom/alensw/cloud/a/bn;->g:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-string v1, "PicasaDrive"

    const-string v2, "parse date: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Landroid/content/ContentValues;
    .locals 3

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

    const v2, -0x7fffffc7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/f;)Landroid/content/ContentValues;
    .locals 10

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<entry xmlns=\'http://www.w3.org/2005/Atom\'\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    xmlns:media=\'http://search.yahoo.com/mrss/\'\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    xmlns:gphoto=\'http://schemas.google.com/photos/2007\'>\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  <title type=\'text\'>"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/alensw/cloud/a/bn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</title>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  <gphoto:access>private</gphoto:access>\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  <category scheme=\'http://schemas.google.com/g/2005#kind\'\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    term=\'http://schemas.google.com/photos/2007#album\'></category>\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</entry>"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "https://picasaweb.google.com/data/feed/api/user/default?alt=json"

    const-string v8, "POST"

    invoke-virtual {p0}, Lcom/alensw/cloud/a/bn;->b()Ljava/util/HashMap;

    move-result-object v9

    new-instance v0, Lcom/alensw/cloud/a/bq;

    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p3

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/alensw/cloud/a/bq;-><init>(Lcom/alensw/cloud/a/bn;ILcom/alensw/b/e/f;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/StringBuilder;)V

    invoke-static {v7, v8, v9, v0}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V

    return-object v5
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/i;Lcom/alensw/b/e/e;)Landroid/content/ContentValues;
    .locals 12

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<entry xmlns=\'http://www.w3.org/2005/Atom\'>\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  <title type=\'text\'>"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/alensw/cloud/a/bn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</title>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  <category scheme=\'http://schemas.google.com/g/2005#kind\'\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    term=\'http://schemas.google.com/photos/2007#photo\'/>\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</entry>"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p3, Lcom/alensw/b/e/i;->c:Ljava/lang/String;

    const-string v0, "image/"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "video/"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong mimetype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://picasaweb.google.com/data/feed/api/user/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?alt=json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "POST"

    invoke-virtual {p0}, Lcom/alensw/cloud/a/bn;->b()Ljava/util/HashMap;

    move-result-object v11

    new-instance v0, Lcom/alensw/cloud/a/br;

    const/4 v2, 0x1

    move-object v1, p0

    move-object/from16 v3, p4

    move-object v4, p1

    move-object v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/alensw/cloud/a/br;-><init>(Lcom/alensw/cloud/a/bn;ILcom/alensw/b/e/f;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/StringBuilder;Lcom/alensw/b/e/i;Ljava/lang/String;)V

    invoke-static {v9, v10, v11, v0}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V

    return-object v5
.end method

.method public a(Ljava/lang/String;ILcom/alensw/b/e/f;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x640

    if-lt p2, v0, :cond_1

    invoke-virtual {p0, p1, p3}, Lcom/alensw/cloud/a/bn;->a(Ljava/lang/String;Lcom/alensw/b/e/f;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&thumbsize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "u"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/alensw/cloud/a/bn;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Lcom/alensw/b/e/f;)V

    const-string v0, "thumbnail_url"

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const-string v0, "content_url"

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/alensw/b/e/f;)Ljava/lang/String;
    .locals 2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "&imgmax=2048u"

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/alensw/cloud/a/bn;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Lcom/alensw/b/e/f;)V

    const-string v1, "content_url"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0x193

    if-ne p1, v0, :cond_1

    const-string v0, "Token invalid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Token not found"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alensw/cloud/a/ca;

    invoke-direct {v0, p2}, Lcom/alensw/cloud/a/ca;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/alensw/cloud/a/cb;

    invoke-direct {v0, p2}, Lcom/alensw/cloud/a/cb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/alensw/b/e/f;)V
    .locals 12

    const-string v0, "/post"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://picasaweb.google.com/data/feed/api/user/default?alt=json&thumbsize=512u&imgmax=2048u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alensw/cloud/a/bn;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v5, v1, [Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-boolean v2, v5, v1

    move v7, v0

    :goto_0
    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v6, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&start-index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v7, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&max-results="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "GET"

    invoke-virtual {p0}, Lcom/alensw/cloud/a/bn;->b()Ljava/util/HashMap;

    move-result-object v11

    new-instance v0, Lcom/alensw/cloud/a/bp;

    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/alensw/cloud/a/bp;-><init>(Lcom/alensw/cloud/a/bn;ILcom/alensw/b/e/f;Landroid/content/ContentValues;[Z[I)V

    invoke-static {v9, v10, v11, v0}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V

    const/4 v0, 0x0

    aget v0, v6, v0

    if-eqz v0, :cond_2

    add-int/lit16 v0, v7, 0x3e8

    const/4 v1, 0x0

    aget v1, v6, v1

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    move v1, v0

    :goto_1
    add-int/lit16 v0, v7, 0x3e8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aget-boolean v1, v5, v1

    if-eqz v1, :cond_4

    :cond_0
    const/4 v0, 0x0

    aget-boolean v0, v5, v0

    if-eqz v0, :cond_1

    const-string v0, "document_id"

    const-string v1, "/post"

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mime_type"

    const-string v1, "vnd.android.document/directory"

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flags"

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "_display_name"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/cloud/a/bn;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    :cond_3
    const-string v0, ""

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/alensw/cloud/a/bn;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Lcom/alensw/b/e/f;)V

    goto :goto_2

    :cond_4
    move v7, v0

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/alensw/cloud/a/az;ILcom/alensw/b/e/f;)Z
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://picasaweb.google.com/data/feed/api/user/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/alensw/cloud/a/bn;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?alt=json&thumbsize=512u&imgmax=2048u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, "/post"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alensw/cloud/a/bn;->e:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&start-index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&max-results="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v6, v0

    const-string v8, "GET"

    invoke-virtual {p0}, Lcom/alensw/cloud/a/bn;->b()Ljava/util/HashMap;

    move-result-object v9

    new-instance v0, Lcom/alensw/cloud/a/bo;

    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/alensw/cloud/a/bo;-><init>(Lcom/alensw/cloud/a/bn;ILcom/alensw/b/e/f;Ljava/lang/String;Lcom/alensw/cloud/a/az;[I)V

    invoke-static {v7, v8, v9, v0}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V

    if-nez p3, :cond_0

    const-string v0, "/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "/post"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/alensw/cloud/a/bn;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/alensw/b/e/f;)V

    const-string v1, "document_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p2, v0}, Lcom/alensw/cloud/a/az;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p2}, Lcom/alensw/cloud/a/az;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    aget v0, v6, v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_4

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const-string v0, "/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/alensw/cloud/a/bn;->d:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lcom/alensw/cloud/a/bn;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(Ljava/lang/String;Lcom/alensw/b/e/f;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/alensw/cloud/a/bn;->a(Ljava/lang/String;Lcom/alensw/b/e/f;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b()Ljava/util/HashMap;
    .locals 3

    invoke-super {p0}, Lcom/alensw/cloud/a/bv;->b()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "GData-Version"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public c(Ljava/lang/String;Lcom/alensw/b/e/f;)V
    .locals 5

    const-string v0, "/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://picasaweb.google.com/data/entry/api/user/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DELETE"

    invoke-virtual {p0}, Lcom/alensw/cloud/a/bn;->b()Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Lcom/alensw/cloud/a/bs;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, p2}, Lcom/alensw/cloud/a/bs;-><init>(Lcom/alensw/cloud/a/bn;ILcom/alensw/b/e/f;)V

    invoke-static {v0, v1, v2, v3}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V

    return-void
.end method

.method protected declared-synchronized c_()Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alensw/cloud/a/bn;->b:Lcom/alensw/cloud/oauth/aj;

    iget-object v0, v0, Lcom/alensw/cloud/oauth/aj;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/a/bn;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/alensw/cloud/a/bn;->b:Lcom/alensw/cloud/oauth/aj;

    iget-object v2, p0, Lcom/alensw/cloud/a/bn;->h:Ljava/lang/String;

    sget-object v3, Lcom/alensw/cloud/oauth/al;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/alensw/cloud/a/bn;->a(Landroid/content/Context;Lcom/alensw/cloud/oauth/aj;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alensw/cloud/a/bn;->b:Lcom/alensw/cloud/oauth/aj;

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
