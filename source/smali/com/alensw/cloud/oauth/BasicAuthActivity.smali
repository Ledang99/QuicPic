.class public Lcom/alensw/cloud/oauth/BasicAuthActivity;
.super Lcom/alensw/cloud/oauth/e;


# instance fields
.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/Button;

.field private final h:Ljava/util/concurrent/ConcurrentHashMap;

.field private volatile i:Z

.field private j:Lcom/alensw/b/e/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alensw/cloud/oauth/e;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->h:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/alensw/cloud/oauth/k;

    invoke-direct {v0, p0}, Lcom/alensw/cloud/oauth/k;-><init>(Lcom/alensw/cloud/oauth/BasicAuthActivity;)V

    iput-object v0, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->j:Lcom/alensw/b/e/f;

    return-void
.end method

.method static synthetic a(Lcom/alensw/cloud/oauth/BasicAuthActivity;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Lcom/alensw/cloud/oauth/a;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Lcom/alensw/cloud/oauth/a;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Lcom/alensw/cloud/oauth/a;
    .locals 5

    new-instance v0, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v0, p2, p3}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "US-ASCII"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/auth/BasicScheme;->authenticate(Lorg/apache/http/auth/Credentials;Ljava/lang/String;Z)Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Basic "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alensw/cloud/oauth/a;

    invoke-direct {v2}, Lcom/alensw/cloud/oauth/a;-><init>()V

    iget-object v3, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->a:Lcom/alensw/cloud/oauth/ah;

    invoke-virtual {v3}, Lcom/alensw/cloud/oauth/ah;->d()Lcom/alensw/cloud/z;

    move-result-object v3

    iput-object v3, v2, Lcom/alensw/cloud/oauth/a;->a:Lcom/alensw/cloud/z;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alensw/cloud/oauth/a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alensw/cloud/oauth/a;->d:Ljava/lang/String;

    iget-object v3, v2, Lcom/alensw/cloud/oauth/a;->g:Lcom/alensw/cloud/oauth/aj;

    iput-object v0, v3, Lcom/alensw/cloud/oauth/aj;->a:Ljava/lang/String;

    iget-object v0, v2, Lcom/alensw/cloud/oauth/a;->g:Lcom/alensw/cloud/oauth/aj;

    iput-object p3, v0, Lcom/alensw/cloud/oauth/aj;->b:Ljava/lang/String;

    iget-object v3, v2, Lcom/alensw/cloud/oauth/a;->g:Lcom/alensw/cloud/oauth/aj;

    iget-object v0, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    :goto_0
    iput-wide v0, v3, Lcom/alensw/cloud/oauth/aj;->d:J

    return-object v2

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alensw/cloud/oauth/BasicAuthActivity;Ljava/net/URL;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/alensw/cloud/z;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x2f

    const/4 v2, 0x0

    sget-object v0, Lcom/alensw/cloud/z;->m:Lcom/alensw/cloud/z;

    if-ne p0, v0, :cond_3

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "\\\\"

    const-string v1, "/"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1

    :cond_3
    sget-object v0, Lcom/alensw/cloud/z;->k:Lcom/alensw/cloud/z;

    if-ne p0, v0, :cond_1

    const-string v0, "remote.php/webdav"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "GET"

    const/4 v2, 0x0

    new-instance v3, Lcom/alensw/cloud/oauth/q;

    iget-object v4, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->j:Lcom/alensw/b/e/f;

    invoke-direct {v3, p0, v4, p2, v0}, Lcom/alensw/cloud/oauth/q;-><init>(Lcom/alensw/cloud/oauth/BasicAuthActivity;Lcom/alensw/b/e/f;Z[Ljava/lang/String;)V

    invoke-static {p1, v1, v2, v3}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method private a(Ljava/net/URL;)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x2f

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

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
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "status.php"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    :try_start_0
    invoke-direct {p0, v0, v2}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->a(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    if-eqz v2, :cond_1

    throw v0

    :cond_1
    iget-boolean v2, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->i:Z

    if-nez v2, :cond_2

    new-instance v2, Lcom/alensw/cloud/oauth/p;

    invoke-direct {v2, p0, v1, v0}, Lcom/alensw/cloud/oauth/p;-><init>(Lcom/alensw/cloud/oauth/BasicAuthActivity;Ljava/lang/String;Ljavax/net/ssl/SSLException;)V

    invoke-virtual {p0, v2}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alensw/cloud/oauth/BasicAuthActivity;Lcom/alensw/cloud/oauth/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->b(Lcom/alensw/cloud/oauth/a;)V

    return-void
.end method

.method static synthetic a(Lcom/alensw/cloud/oauth/BasicAuthActivity;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic a(Lcom/alensw/cloud/oauth/BasicAuthActivity;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 2

    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_0

    const-string v0, "httpErrorBadUrl"

    const-string v1, "Unknown host!"

    invoke-direct {p0, v0, v1}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_1

    const-string v0, "httpErrorFileNotFound"

    const-string v1, "Server not found!"

    invoke-direct {p0, v0, v1}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_2

    const-string v0, "httpErrorTimeout"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_3

    const-string v0, "httpErrorFailedSslHandshake"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/alensw/cloud/a/bz;

    if-eqz v0, :cond_4

    const-string v0, "httpErrorAuth"

    const-string v1, "Could not authenticate."

    invoke-direct {p0, v0, v1}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {p0, p1}, Lcom/alensw/b/l/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4

    const-string v0, "The server certificate is not trusted.\n\nAlways trust this certificate?"

    const v0, 0x1040014

    const-string v1, "The server certificate is not trusted.\n\nAlways trust this certificate?"

    new-instance v2, Lcom/alensw/cloud/oauth/r;

    invoke-direct {v2, p0, p1}, Lcom/alensw/cloud/oauth/r;-><init>(Lcom/alensw/cloud/oauth/BasicAuthActivity;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/alensw/ui/a/f;->a(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/alensw/b/l/b;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alensw/b/l/b;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alensw/cloud/oauth/BasicAuthActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/alensw/cloud/oauth/BasicAuthActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->g:Landroid/widget/Button;

    return-object v0
.end method

.method private b()V
    .locals 9

    const/4 v8, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->a:Lcom/alensw/cloud/oauth/ah;

    invoke-virtual {v0}, Lcom/alensw/cloud/oauth/ah;->d()Lcom/alensw/cloud/z;

    move-result-object v2

    iget-object v0, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->a(Lcom/alensw/cloud/z;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alensw/cloud/z;->m:Lcom/alensw/cloud/z;

    if-ne v2, v0, :cond_1

    const-string v4, "guest"

    iget-object v0, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    sget-object v0, Lcom/alensw/cloud/z;->m:Lcom/alensw/cloud/z;

    if-ne v2, v0, :cond_3

    new-instance v0, Ljava/net/URL;

    const/4 v6, 0x0

    sget-object v7, La/d/j;->a:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v6, v1, v7}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v3, v0

    :goto_2
    if-nez v3, :cond_5

    iget-object v0, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v0, Lcom/alensw/cloud/z;->m:Lcom/alensw/cloud/z;

    if-ne v2, v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "smb://"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/net/URL;

    const/4 v6, 0x0

    sget-object v7, La/d/j;->a:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v6, v1, v7}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    :goto_3
    move-object v3, v0

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_2

    :cond_5
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->i(Z)V

    iget-object v0, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    iput-boolean v8, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->i:Z

    sget-object v6, Lcom/alensw/ui/a/ao;->d:Lcom/alensw/b/k/a;

    new-instance v0, Lcom/alensw/cloud/oauth/n;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alensw/cloud/oauth/n;-><init>(Lcom/alensw/cloud/oauth/BasicAuthActivity;Lcom/alensw/cloud/z;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/alensw/b/k/a;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto/16 :goto_0
.end method

.method private b(Lcom/alensw/cloud/oauth/a;)V
    .locals 4

    invoke-static {p0, p1}, Lcom/alensw/cloud/a/bv;->a(Landroid/content/Context;Lcom/alensw/cloud/oauth/a;)Lcom/alensw/cloud/a/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/cloud/a/bv;->a()Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "document_id"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->j:Lcom/alensw/b/e/f;

    invoke-virtual {v0, v2, v1, v3}, Lcom/alensw/cloud/a/bv;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/alensw/b/e/f;)V

    return-void
.end method

.method static synthetic c(Lcom/alensw/cloud/oauth/BasicAuthActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->b()V

    return-void
.end method

.method static synthetic d(Lcom/alensw/cloud/oauth/BasicAuthActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/alensw/cloud/oauth/BasicAuthActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/alensw/cloud/oauth/BasicAuthActivity;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->h:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/alensw/cloud/oauth/e;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->setContentView(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->g(Z)V

    invoke-virtual {p0}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v0, 0x7f090012

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->d:Landroid/widget/EditText;

    const v0, 0x7f090013

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->e:Landroid/widget/EditText;

    const v0, 0x7f090014

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->f:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->a:Lcom/alensw/cloud/oauth/ah;

    invoke-virtual {v0}, Lcom/alensw/cloud/oauth/ah;->d()Lcom/alensw/cloud/z;

    move-result-object v0

    sget-object v1, Lcom/alensw/cloud/z;->k:Lcom/alensw/cloud/z;

    if-ne v0, v1, :cond_5

    const-string v0, "http(s)://example.com/owncloud"

    :goto_0
    iget-object v1, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "server"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    const-string v0, "lockscreen_glogin_username_hint"

    const-string v1, "Username"

    invoke-static {v2, v0, v1}, Lcom/alensw/b/l/b;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    const v1, 0xff08

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    :cond_1
    if-lez v1, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const-string v0, "lockscreen_glogin_password_hint"

    const-string v1, "Password"

    invoke-static {v2, v0, v1}, Lcom/alensw/b/l/b;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->f:Landroid/widget/EditText;

    new-instance v1, Lcom/alensw/cloud/oauth/l;

    invoke-direct {v1, p0}, Lcom/alensw/cloud/oauth/l;-><init>(Lcom/alensw/cloud/oauth/BasicAuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->g:Landroid/widget/Button;

    const-string v0, "lockscreen_glogin_submit_button"

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Lcom/alensw/b/l/b;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->g:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->g:Landroid/widget/Button;

    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->g:Landroid/widget/Button;

    iget v1, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->Y:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->g:Landroid/widget/Button;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    :cond_4
    iget-object v0, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->g:Landroid/widget/Button;

    new-instance v1, Lcom/alensw/cloud/oauth/m;

    invoke-direct {v1, p0}, Lcom/alensw/cloud/oauth/m;-><init>(Lcom/alensw/cloud/oauth/BasicAuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090016

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v1, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->a:Lcom/alensw/cloud/oauth/ah;

    invoke-virtual {v1}, Lcom/alensw/cloud/oauth/ah;->d()Lcom/alensw/cloud/z;

    move-result-object v1

    sget-object v2, Lcom/alensw/cloud/z;->k:Lcom/alensw/cloud/z;

    if-ne v1, v2, :cond_6

    const-string v1, "http://owncloud.org"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_5
    const-string v0, "(domain;)server/(path)"

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alensw/cloud/oauth/BasicAuthActivity;->i:Z

    invoke-super {p0}, Lcom/alensw/cloud/oauth/e;->onDestroy()V

    return-void
.end method
