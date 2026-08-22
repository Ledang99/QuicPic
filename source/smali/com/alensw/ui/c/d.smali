.class Lcom/alensw/ui/c/d;
.super Lcom/alensw/ui/a/ao;


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/alensw/a/ba;

.field final synthetic c:Lcom/alensw/a/bc;

.field final synthetic e:Ljava/util/HashSet;

.field final synthetic f:Ljava/util/ArrayList;

.field final synthetic g:Ljava/util/ArrayList;

.field final synthetic h:Lcom/alensw/ui/c/c;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/c;Landroid/app/Activity;Ljava/lang/String;ILjava/io/File;Lcom/alensw/a/ba;Lcom/alensw/a/bc;Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/d;->h:Lcom/alensw/ui/c/c;

    iput-object p5, p0, Lcom/alensw/ui/c/d;->a:Ljava/io/File;

    iput-object p6, p0, Lcom/alensw/ui/c/d;->b:Lcom/alensw/a/ba;

    iput-object p7, p0, Lcom/alensw/ui/c/d;->c:Lcom/alensw/a/bc;

    iput-object p8, p0, Lcom/alensw/ui/c/d;->e:Ljava/util/HashSet;

    iput-object p9, p0, Lcom/alensw/ui/c/d;->f:Ljava/util/ArrayList;

    iput-object p10, p0, Lcom/alensw/ui/c/d;->g:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3, p4}, Lcom/alensw/ui/a/ao;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/io/File;J)Z
    .locals 4

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/jni/JniUtils;->fuGetAvailBytes(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x400000

    add-long/2addr v2, p2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Low available space: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alensw/ui/c/d;->h:Lcom/alensw/ui/c/c;

    iget-object v3, v3, Lcom/alensw/ui/c/c;->f:Lcom/alensw/ui/c/a;

    iget-object v3, v3, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v3, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/d;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 13

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/alensw/ui/c/d;->a:Ljava/io/File;

    invoke-static {v0}, Lcom/alensw/a/e;->a(Ljava/io/File;)Z

    iget-object v0, p0, Lcom/alensw/ui/c/d;->h:Lcom/alensw/ui/c/c;

    iget-object v0, v0, Lcom/alensw/ui/c/c;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Lcom/alensw/a/d;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/alensw/a/d;

    iget-char v4, v0, Lcom/alensw/a/d;->c:C

    iget-object v3, v0, Lcom/alensw/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alensw/a/d;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    new-instance v5, Ljava/io/File;

    iget-object v8, p0, Lcom/alensw/ui/c/d;->a:Ljava/io/File;

    invoke-direct {v5, v8, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    invoke-static {v5, v3}, Lcom/alensw/b/l/b;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    :goto_1
    iget-object v5, p0, Lcom/alensw/ui/c/d;->h:Lcom/alensw/ui/c/c;

    iget-boolean v5, v5, Lcom/alensw/ui/c/c;->b:Z

    if-eqz v5, :cond_8

    :try_start_0
    iget-object v5, p0, Lcom/alensw/ui/c/d;->h:Lcom/alensw/ui/c/c;

    iget-object v5, v5, Lcom/alensw/ui/c/c;->e:Landroid/content/ContentResolver;

    invoke-static {v5, v0}, Lcom/alensw/b/c/f;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/alensw/b/c/f;

    move-result-object v0

    iget-object v5, p0, Lcom/alensw/ui/c/d;->a:Ljava/io/File;

    invoke-virtual {v0}, Lcom/alensw/b/c/f;->e()J

    move-result-wide v8

    invoke-direct {p0, v5, v8, v9}, Lcom/alensw/ui/c/d;->a(Ljava/io/File;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_5

    :cond_2
    :goto_2
    return-void

    :cond_3
    instance-of v0, v1, Lcom/alensw/bean/CommonFile;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->h()C

    move-result v4

    invoke-static {v2}, Lcom/alensw/b/f/c;->a(Ljava/lang/String;)C

    move-result v3

    if-eqz v3, :cond_4

    :goto_3
    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v0

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alensw/b/f/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_5
    :try_start_1
    invoke-static {v0, v3}, Lcom/alensw/b/l/b;->a(Lcom/alensw/b/c/f;Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    :try_start_2
    invoke-virtual {v0}, Lcom/alensw/b/c/f;->h()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    :cond_6
    :goto_4
    if-eqz v5, :cond_a

    iget-object v0, p0, Lcom/alensw/ui/c/d;->e:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alensw/ui/c/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/alensw/ui/c/d;->h:Lcom/alensw/ui/c/c;

    iget-object v0, v0, Lcom/alensw/ui/c/c;->f:Lcom/alensw/ui/c/a;

    iget-object v2, v0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    iget-object v0, p0, Lcom/alensw/ui/c/d;->h:Lcom/alensw/ui/c/c;

    iget-boolean v0, v0, Lcom/alensw/ui/c/c;->b:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/alensw/b/f/b;->h:Lcom/alensw/b/f/b;

    move-object v1, v0

    :goto_6
    const/16 v0, 0x56

    if-ne v4, v0, :cond_c

    const-string v0, "video"

    :goto_7
    invoke-static {v2, v1, v0}, Lcom/alensw/b/f/a;->a(Landroid/content/Context;Lcom/alensw/b/f/b;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alensw/ui/c/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :catch_0
    move-exception v0

    move v5, v6

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :cond_8
    :try_start_3
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    if-nez v0, :cond_9

    :try_start_4
    iget-object v8, p0, Lcom/alensw/ui/c/d;->a:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-direct {p0, v8, v10, v11}, Lcom/alensw/ui/c/d;->a(Ljava/io/File;J)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v5, v3}, Lcom/alensw/b/l/b;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v5}, Lcom/alensw/b/l/b;->c(Ljava/io/File;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_9
    move v5, v0

    :goto_9
    if-eqz v5, :cond_6

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/alensw/ui/c/d;->b:Lcom/alensw/a/ba;

    invoke-virtual {v0, v2, v4, v6}, Lcom/alensw/a/ba;->a(Ljava/lang/String;CZ)Z

    iget-object v0, p0, Lcom/alensw/ui/c/d;->c:Lcom/alensw/a/bc;

    invoke-virtual {v0, v2}, Lcom/alensw/a/bc;->a(Ljava/lang/String;)V

    goto :goto_4

    :catch_1
    move-exception v0

    move v5, v6

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    :cond_a
    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/alensw/ui/c/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    sget-object v0, Lcom/alensw/b/f/b;->g:Lcom/alensw/b/f/b;

    move-object v1, v0

    goto :goto_6

    :cond_c
    const-string v0, "image"

    goto :goto_7

    :catch_2
    move-exception v5

    move-object v12, v5

    move v5, v0

    move-object v0, v12

    goto :goto_a

    :catch_3
    move-exception v0

    goto :goto_8

    :cond_d
    move-object v3, v5

    goto/16 :goto_1
.end method

.method protected b()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alensw/ui/c/d;->h:Lcom/alensw/ui/c/c;

    iget-object v0, v0, Lcom/alensw/ui/c/c;->a:Lcom/alensw/ui/c/n;

    iget-object v1, p0, Lcom/alensw/ui/c/d;->h:Lcom/alensw/ui/c/c;

    iget-boolean v1, v1, Lcom/alensw/ui/c/c;->b:Z

    iget-object v2, p0, Lcom/alensw/ui/c/d;->e:Ljava/util/HashSet;

    invoke-interface {v0, v1, v2}, Lcom/alensw/ui/c/n;->a(ZLjava/util/HashSet;)V

    iget-object v0, p0, Lcom/alensw/ui/c/d;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->o:Lcom/alensw/a/x;

    iget-object v2, p0, Lcom/alensw/ui/c/d;->h:Lcom/alensw/ui/c/c;

    iget-object v2, v2, Lcom/alensw/ui/c/c;->f:Lcom/alensw/ui/c/a;

    iget-object v2, v2, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    iget-object v3, p0, Lcom/alensw/ui/c/d;->a:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alensw/a/x;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/alensw/a/e;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/alensw/PicFolder/QuickApp;->o:Lcom/alensw/a/x;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/alensw/a/x;->a(Lcom/alensw/a/e;Z)V

    :cond_0
    iget-object v1, p0, Lcom/alensw/ui/c/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    iget-object v2, p0, Lcom/alensw/ui/c/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Lcom/alensw/a/ba;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    sput-boolean v4, Lcom/alensw/PicFolder/QuickApp;->x:Z

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->q:Lcom/alensw/a/s;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/alensw/a/s;->a(ILjava/lang/Object;Landroid/os/Handler;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/alensw/ui/c/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/alensw/ui/c/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/alensw/a/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v1, p0, Lcom/alensw/ui/c/d;->h:Lcom/alensw/ui/c/c;

    iget-object v1, v1, Lcom/alensw/ui/c/c;->f:Lcom/alensw/ui/c/a;

    invoke-virtual {v1, v0}, Lcom/alensw/ui/c/a;->a(Ljava/lang/String;)Z

    goto :goto_0
.end method
