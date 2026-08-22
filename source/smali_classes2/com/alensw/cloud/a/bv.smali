.class public abstract Lcom/alensw/cloud/a/bv;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/a/a/a/b;

.field private static d:Lorg/xmlpull/v1/XmlPullParserFactory;


# instance fields
.field protected final a:Landroid/content/Context;

.field protected b:Lcom/alensw/cloud/oauth/aj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alensw/cloud/oauth/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alensw/cloud/a/bv;->a:Landroid/content/Context;

    iget-object v0, p2, Lcom/alensw/cloud/oauth/a;->g:Lcom/alensw/cloud/oauth/aj;

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/a/bv;->a(Lcom/alensw/cloud/oauth/aj;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alensw/cloud/oauth/a;)Lcom/alensw/cloud/a/bv;
    .locals 2

    sget-object v0, Lcom/alensw/cloud/a/bx;->a:[I

    iget-object v1, p1, Lcom/alensw/cloud/oauth/a;->a:Lcom/alensw/cloud/z;

    invoke-virtual {v1}, Lcom/alensw/cloud/z;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/alensw/cloud/a/bn;

    invoke-direct {v0, p0, p1}, Lcom/alensw/cloud/a/bn;-><init>(Landroid/content/Context;Lcom/alensw/cloud/oauth/a;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/alensw/cloud/a/i;

    invoke-direct {v0, p0, p1}, Lcom/alensw/cloud/a/i;-><init>(Landroid/content/Context;Lcom/alensw/cloud/oauth/a;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/alensw/cloud/a/t;

    invoke-direct {v0, p0, p1}, Lcom/alensw/cloud/a/t;-><init>(Landroid/content/Context;Lcom/alensw/cloud/oauth/a;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/alensw/cloud/a/ba;

    invoke-direct {v0, p0, p1}, Lcom/alensw/cloud/a/ba;-><init>(Landroid/content/Context;Lcom/alensw/cloud/oauth/a;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/alensw/cloud/a/x;

    invoke-direct {v0, p0, p1}, Lcom/alensw/cloud/a/x;-><init>(Landroid/content/Context;Lcom/alensw/cloud/oauth/a;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/alensw/cloud/a/am;

    invoke-direct {v0, p0, p1}, Lcom/alensw/cloud/a/am;-><init>(Landroid/content/Context;Lcom/alensw/cloud/oauth/a;)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/alensw/cloud/a/aa;

    invoke-direct {v0, p0, p1}, Lcom/alensw/cloud/a/aa;-><init>(Landroid/content/Context;Lcom/alensw/cloud/oauth/a;)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/alensw/cloud/a/ae;

    invoke-direct {v0, p0, p1}, Lcom/alensw/cloud/a/ae;-><init>(Landroid/content/Context;Lcom/alensw/cloud/oauth/a;)V

    goto :goto_0

    :pswitch_8
    new-instance v0, Lcom/alensw/cloud/a/as;

    invoke-direct {v0, p0, p1}, Lcom/alensw/cloud/a/as;-><init>(Landroid/content/Context;Lcom/alensw/cloud/oauth/a;)V

    goto :goto_0

    :pswitch_9
    new-instance v0, Lcom/alensw/cloud/a/cc;

    invoke-direct {v0, p0, p1}, Lcom/alensw/cloud/a/cc;-><init>(Landroid/content/Context;Lcom/alensw/cloud/oauth/a;)V

    goto :goto_0

    :pswitch_a
    new-instance v0, Lcom/alensw/cloud/a/n;

    invoke-direct {v0, p0, p1}, Lcom/alensw/cloud/a/n;-><init>(Landroid/content/Context;Lcom/alensw/cloud/oauth/a;)V

    goto :goto_0

    :pswitch_b
    new-instance v0, Lcom/alensw/cloud/a/bh;

    invoke-direct {v0, p0, p1}, Lcom/alensw/cloud/a/bh;-><init>(Landroid/content/Context;Lcom/alensw/cloud/oauth/a;)V

    goto :goto_0

    :pswitch_c
    new-instance v0, Lcom/alensw/cloud/a/a;

    invoke-direct {v0, p0, p1}, Lcom/alensw/cloud/a/a;-><init>(Landroid/content/Context;Lcom/alensw/cloud/oauth/a;)V

    goto :goto_0

    :pswitch_d
    new-instance v0, Lcom/alensw/cloud/a/bu;

    invoke-direct {v0, p0, p1}, Lcom/alensw/cloud/a/bu;-><init>(Landroid/content/Context;Lcom/alensw/cloud/oauth/a;)V

    goto :goto_0

    :pswitch_e
    new-instance v0, Lcom/alensw/cloud/a/cm;

    invoke-direct {v0, p0, p1}, Lcom/alensw/cloud/a/cm;-><init>(Landroid/content/Context;Lcom/alensw/cloud/oauth/a;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Lcom/alensw/cloud/oauth/aj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oauth2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/google/gms/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alensw/cloud/oauth/aj;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "GMS auth error"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Lcom/a/a/a/l;Lcom/a/a/a/l;)V
    .locals 2

    if-eq p0, p1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Json object check failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    move-object v0, p0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/alensw/cloud/a/bv;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-gez v1, :cond_1

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected static f()Lcom/a/a/a/b;
    .locals 2

    const-class v1, Lcom/alensw/cloud/a/bv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alensw/cloud/a/bv;->c:Lcom/a/a/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a/a/b;

    invoke-direct {v0}, Lcom/a/a/a/b;-><init>()V

    sput-object v0, Lcom/alensw/cloud/a/bv;->c:Lcom/a/a/a/b;

    :cond_0
    sget-object v0, Lcom/alensw/cloud/a/bv;->c:Lcom/a/a/a/b;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static g()Lorg/xmlpull/v1/XmlPullParserFactory;
    .locals 3

    const-class v1, Lcom/alensw/cloud/a/bv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alensw/cloud/a/bv;->d:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    sput-object v0, Lcom/alensw/cloud/a/bv;->d:Lorg/xmlpull/v1/XmlPullParserFactory;

    sget-object v0, Lcom/alensw/cloud/a/bv;->d:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/alensw/cloud/a/bv;->d:Lorg/xmlpull/v1/XmlPullParserFactory;

    monitor-exit v1

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static h()Ljava/lang/String;
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const-string v1, "%04d%02d%02d_%02d%02d%02d"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x3

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract a()Landroid/content/ContentValues;
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/f;)Landroid/content/ContentValues;
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/i;Lcom/alensw/b/e/e;)Landroid/content/ContentValues;
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/f;)Landroid/content/ContentValues;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract a(Ljava/lang/String;ILcom/alensw/b/e/f;)Ljava/lang/String;
.end method

.method protected abstract a(Ljava/lang/String;Lcom/alensw/b/e/f;)Ljava/lang/String;
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized a(Lcom/alensw/cloud/oauth/aj;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alensw/cloud/a/bv;->b:Lcom/alensw/cloud/oauth/aj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/f;)V
    .locals 2

    if-nez p3, :cond_0

    const/16 v0, 0x320

    add-int/lit8 v1, p2, 0x7f

    shr-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, p1, v0, p5}, Lcom/alensw/cloud/a/bv;->a(Ljava/lang/String;ILcom/alensw/b/e/f;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "no url"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, p3, p4, p5}, Lcom/alensw/cloud/a/bv;->b(Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/f;)V

    return-void
.end method

.method public abstract a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/alensw/b/e/f;)V
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/i;Lcom/alensw/b/e/f;)V
    .locals 4

    if-nez p2, :cond_0

    invoke-virtual {p0, p1, p5}, Lcom/alensw/cloud/a/bv;->a(Ljava/lang/String;Lcom/alensw/b/e/f;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "no url"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/alensw/cloud/a/bv;->b()Ljava/util/HashMap;

    move-result-object v0

    if-eqz p3, :cond_2

    const-string v1, "Range"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v1, "GET"

    new-instance v2, Lcom/alensw/cloud/a/bw;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, p5, p4}, Lcom/alensw/cloud/a/bw;-><init>(Lcom/alensw/cloud/a/bv;ILcom/alensw/b/e/f;Lcom/alensw/b/e/i;)V

    invoke-static {p2, v1, v0, v2}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V

    return-void
.end method

.method protected a(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 0

    return-void
.end method

.method public abstract a(Ljava/lang/String;Lcom/alensw/cloud/a/az;ILcom/alensw/b/e/f;)Z
.end method

.method public abstract b(Ljava/lang/String;Lcom/alensw/b/e/f;)Ljava/lang/String;
.end method

.method protected b()Ljava/util/HashMap;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/alensw/cloud/a/bv;->c_()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bearer "

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

    return-object v0
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/f;)V
    .locals 3

    const-string v0, "GET"

    invoke-virtual {p0}, Lcom/alensw/cloud/a/bv;->b()Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lcom/alensw/cloud/a/by;

    invoke-direct {v2, p0, p2, p3}, Lcom/alensw/cloud/a/by;-><init>(Lcom/alensw/cloud/a/bv;Ljava/lang/String;Lcom/alensw/b/e/f;)V

    invoke-static {p1, v0, v1, v2}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/f;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1, p4}, Lcom/alensw/cloud/a/bv;->a(Ljava/lang/String;Lcom/alensw/b/e/f;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "no url"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, p2, p3, p4}, Lcom/alensw/cloud/a/bv;->b(Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/f;)V

    return-void
.end method

.method public c()I
    .locals 1

    const/high16 v0, 0x10000000

    return v0
.end method

.method public abstract c(Ljava/lang/String;Lcom/alensw/b/e/f;)V
.end method

.method protected declared-synchronized c_()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alensw/cloud/a/bv;->b:Lcom/alensw/cloud/oauth/aj;

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

.method public d(Ljava/lang/String;Lcom/alensw/b/e/f;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/alensw/cloud/a/bv;->b(Ljava/lang/String;Lcom/alensw/b/e/f;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/alensw/cloud/a/bv;->a(Ljava/lang/String;Lcom/alensw/b/e/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alensw/cloud/a/bv;->b()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "Authorization"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-static {v1, v0}, Lcom/alensw/b/j/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public d_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
