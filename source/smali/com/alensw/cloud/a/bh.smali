.class public Lcom/alensw/cloud/a/bh;
.super Lcom/alensw/cloud/a/bv;


# static fields
.field private static final c:Ljava/text/DateFormat;


# instance fields
.field private final d:Z

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, d MMM yyyy HH:mm:ss z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/alensw/cloud/a/bh;->c:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alensw/cloud/oauth/a;)V
    .locals 6

    const/16 v2, 0x2f

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/alensw/cloud/a/bv;-><init>(Landroid/content/Context;Lcom/alensw/cloud/oauth/a;)V

    iget-object v0, p2, Lcom/alensw/cloud/oauth/a;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, ""

    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v2, "https"

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "remote.php/webdav"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/alensw/cloud/a/bh;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "remote.php/webdav"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alensw/cloud/a/bh;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "index.php/core/preview.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/cloud/a/bh;->g:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v0, p2, Lcom/alensw/cloud/oauth/a;->g:Lcom/alensw/cloud/oauth/aj;

    iget-wide v0, v0, Lcom/alensw/cloud/oauth/aj;->d:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/alensw/cloud/a/bh;->d:Z

    return-void

    :catch_0
    move-exception v2

    move-object v4, v2

    move v2, v3

    :goto_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method static synthetic a(Lcom/alensw/cloud/a/bh;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/ContentValues;)C
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alensw/cloud/a/bh;->a(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/ContentValues;)C

    move-result v0

    return v0
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/ContentValues;)C
    .locals 6

    const/4 v1, 0x0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v2, v0

    move-object v0, v1

    :goto_0
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const-string v3, "response"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "href"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/alensw/cloud/a/bh;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_c

    iget-object v2, p0, Lcom/alensw/cloud/a/bh;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_1
    invoke-static {v2}, Lcom/alensw/cloud/a/bh;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "document_id"

    invoke-virtual {p2, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_display_name"

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    :cond_2
    const-string v3, "getlastmodified"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alensw/cloud/a/bh;->d(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "last_modified"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "datetaken"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    :cond_3
    const-string v3, "getcontenttype"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mime_type"

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v3, "getcontentlength"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v2, "_size"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    :cond_6
    const/4 v2, 0x0

    if-nez v0, :cond_8

    const-string v0, "mime_type"

    const-string v1, "vnd.android.document/directory"

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flags"

    const/16 v1, 0x3a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "_size"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const/16 v0, 0x44

    :cond_7
    :goto_3
    return v0

    :cond_8
    const-string v3, "flags"

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "image/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/16 v0, 0x49

    goto :goto_3

    :cond_9
    const-string v3, "video/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x56

    goto :goto_3

    :cond_a
    if-eqz v1, :cond_b

    invoke-static {v1}, Lcom/alensw/b/f/c;->a(Ljava/lang/String;)C

    move-result v0

    if-eqz v0, :cond_7

    const-string v2, "mime_type"

    invoke-static {v1, v0}, Lcom/alensw/b/f/c;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    move v0, v2

    goto :goto_3

    :cond_c
    move-object v2, v1

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alensw/cloud/a/bh;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alensw/cloud/a/bh;Lorg/xmlpull/v1/XmlPullParser;Lcom/alensw/cloud/a/az;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alensw/cloud/a/bh;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/alensw/cloud/a/az;)V

    return-void
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Lcom/alensw/cloud/a/az;)V
    .locals 2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "response"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/alensw/cloud/a/bh;->a(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/ContentValues;)C

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Lcom/alensw/cloud/a/az;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x2f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_1

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)J
    .locals 4

    :try_start_0
    sget-object v0, Lcom/alensw/cloud/a/bh;->c:Ljava/text/DateFormat;

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

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mime_type"

    const-string v2, "vnd.android.document/directory"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "flags"

    const/16 v2, 0x3a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/f;)Landroid/content/ContentValues;
    .locals 6

    invoke-static {p1, p2}, Lcom/alensw/cloud/a/bh;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alensw/cloud/a/bh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MKCOL"

    invoke-virtual {p0}, Lcom/alensw/cloud/a/bh;->b()Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Lcom/alensw/cloud/a/by;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5, p3}, Lcom/alensw/cloud/a/by;-><init>(Lcom/alensw/cloud/a/bv;ILcom/alensw/b/e/f;)V

    invoke-static {v1, v2, v3, v4}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0, v0, v1, p3}, Lcom/alensw/cloud/a/bh;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/alensw/b/e/f;)V

    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/i;Lcom/alensw/b/e/e;)Landroid/content/ContentValues;
    .locals 19

    invoke-static/range {p1 .. p2}, Lcom/alensw/cloud/a/bh;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/alensw/cloud/a/bh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/alensw/cloud/a/bh;->b()Ljava/util/HashMap;

    move-result-object v7

    const-string v6, "Depth"

    const-string v8, "0"

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    :try_start_0
    const-string v8, "PROPFIND"

    new-instance v9, Lcom/alensw/cloud/a/bk;

    const/4 v10, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v9, v0, v10, v1}, Lcom/alensw/cloud/a/bk;-><init>(Lcom/alensw/cloud/a/bh;ILcom/alensw/b/e/f;)V

    invoke-static {v4, v8, v7, v9}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v6, :cond_2

    invoke-static/range {p2 .. p2}, Lcom/alensw/cloud/a/bh;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/alensw/cloud/a/bh;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/alensw/cloud/a/bh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v12, v5

    :goto_1
    move-object/from16 v0, p3

    iget-wide v6, v0, Lcom/alensw/b/e/i;->a:J

    const-wide/32 v8, 0xa00000

    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    const-string v5, "PUT"

    invoke-virtual/range {p0 .. p0}, Lcom/alensw/cloud/a/bh;->b()Ljava/util/HashMap;

    move-result-object v6

    new-instance v7, Lcom/alensw/cloud/a/bl;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-direct {v7, v0, v8, v1, v2}, Lcom/alensw/cloud/a/bl;-><init>(Lcom/alensw/cloud/a/bh;ILcom/alensw/b/e/f;Lcom/alensw/b/e/i;)V

    invoke-static {v4, v5, v6, v7}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V

    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v12, v4, v1}, Lcom/alensw/cloud/a/bh;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/alensw/b/e/f;)V

    return-object v4

    :catch_0
    move-exception v6

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-chunking-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    const/16 v6, 0x2328

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit16 v5, v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p3

    iget-wide v4, v0, Lcom/alensw/b/e/i;->a:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xa00000

    div-long/2addr v4, v6

    const-wide/16 v6, 0x1

    add-long v14, v4, v6

    invoke-virtual/range {p0 .. p0}, Lcom/alensw/cloud/a/bh;->b()Ljava/util/HashMap;

    move-result-object v16

    const-string v4, "OC-Chunked"

    const-string v5, "OC-Chunked"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_2
    int-to-long v6, v4

    cmp-long v5, v6, v14

    if-gez v5, :cond_0

    const/high16 v5, 0xa00000

    mul-int/2addr v5, v4

    int-to-long v10, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "PUT"

    new-instance v5, Lcom/alensw/cloud/a/bm;

    const/4 v7, 0x0

    move-object/from16 v6, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p3

    invoke-direct/range {v5 .. v11}, Lcom/alensw/cloud/a/bm;-><init>(Lcom/alensw/cloud/a/bh;ILcom/alensw/b/e/f;Lcom/alensw/b/e/i;J)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2, v5}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    move-object v12, v5

    goto/16 :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/f;)Landroid/content/ContentValues;
    .locals 7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, p1}, Lcom/alensw/cloud/a/bh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/alensw/b/l/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alensw/cloud/a/bh;->b()Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "Destination"

    invoke-direct {p0, v2}, Lcom/alensw/cloud/a/bh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "Overwrite"

    const-string v5, "F"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "MOVE"

    new-instance v5, Lcom/alensw/cloud/a/by;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6, p4}, Lcom/alensw/cloud/a/by;-><init>(Lcom/alensw/cloud/a/bv;ILcom/alensw/b/e/f;)V

    invoke-static {v1, v4, v3, v5}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V

    const-string v1, "parent_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected a(Ljava/lang/String;ILcom/alensw/b/e/f;)Ljava/lang/String;
    .locals 4

    const-string v0, "%s?file=%s&x=%d&y=%d&a=true&scalingup=0"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alensw/cloud/a/bh;->g:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;Lcom/alensw/b/e/f;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alensw/cloud/a/bh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0x191

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/alensw/cloud/a/cb;

    invoke-direct {v0, p2}, Lcom/alensw/cloud/a/cb;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/alensw/b/e/f;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/alensw/cloud/a/bh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alensw/cloud/a/bh;->b()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "Depth"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "PROPFIND"

    new-instance v3, Lcom/alensw/cloud/a/bj;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4, p3, p2}, Lcom/alensw/cloud/a/bj;-><init>(Lcom/alensw/cloud/a/bh;ILcom/alensw/b/e/f;Landroid/content/ContentValues;)V

    invoke-static {v0, v2, v1, v3}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V

    return-void
.end method

.method protected a(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/cloud/a/bh;->d:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/alensw/b/e/b;->a(Ljavax/net/ssl/HttpsURLConnection;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/alensw/cloud/a/az;ILcom/alensw/b/e/f;)Z
    .locals 9

    invoke-direct {p0, p1}, Lcom/alensw/cloud/a/bh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/alensw/cloud/a/bh;->b()Ljava/util/HashMap;

    move-result-object v7

    const-string v0, "Depth"

    const-string v1, "1"

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "PROPFIND"

    new-instance v0, Lcom/alensw/cloud/a/bi;

    const/4 v2, 0x2

    move-object v1, p0

    move-object v3, p4

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alensw/cloud/a/bi;-><init>(Lcom/alensw/cloud/a/bh;ILcom/alensw/b/e/f;Lcom/alensw/cloud/a/az;Ljava/lang/String;)V

    invoke-static {v6, v8, v7, v0}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V

    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/lang/String;Lcom/alensw/b/e/f;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected b()Ljava/util/HashMap;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/alensw/cloud/a/bh;->c_()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Basic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Content-Type"

    const-string v2, "text/xml; charset=utf-8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public c(Ljava/lang/String;Lcom/alensw/b/e/f;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/alensw/cloud/a/bh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DELETE"

    invoke-virtual {p0}, Lcom/alensw/cloud/a/bh;->b()Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Lcom/alensw/cloud/a/by;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, p2}, Lcom/alensw/cloud/a/by;-><init>(Lcom/alensw/cloud/a/bv;ILcom/alensw/b/e/f;)V

    invoke-static {v0, v1, v2, v3}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V

    return-void
.end method
