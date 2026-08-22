.class Lcom/alensw/ui/c/dd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/b/k/k;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/dc;

.field private volatile b:Z

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/regex/Pattern;

.field private final e:Ljava/util/ArrayList;

.field private final f:Lcom/alensw/bean/CommonFolder;


# direct methods
.method public constructor <init>(Lcom/alensw/ui/c/dc;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/alensw/ui/c/dd;->a:Lcom/alensw/ui/c/dc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/c/dd;->c:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {p2, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/c/dd;->d:Ljava/util/regex/Pattern;

    const-string v0, "moments"

    invoke-static {p1}, Lcom/alensw/ui/c/dc;->a(Lcom/alensw/ui/c/dc;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v2, p0, Lcom/alensw/ui/c/dd;->e:Ljava/util/ArrayList;

    new-instance v0, Lcom/alensw/bean/MediaStoreRoot;

    const v1, 0x7f0a00bb

    invoke-virtual {p1, v1}, Lcom/alensw/ui/c/dc;->g(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "*/*"

    invoke-direct {v0, v1, v2}, Lcom/alensw/bean/MediaStoreRoot;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alensw/bean/MediaStoreRoot;->l()Lcom/alensw/bean/MediaStoreFolder;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/c/dd;->f:Lcom/alensw/bean/CommonFolder;

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->o:Lcom/alensw/a/x;

    invoke-virtual {v0}, Lcom/alensw/a/x;->h()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/c/dd;->e:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/alensw/ui/c/dd;->f:Lcom/alensw/bean/CommonFolder;

    goto :goto_0
.end method

.method private a(Lcom/alensw/bean/CommonFolder;)I
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/alensw/bean/CommonFolder;->o()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Lcom/alensw/bean/CommonFolder;->a(I)Lcom/alensw/bean/CommonFile;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/alensw/bean/CommonFile;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/alensw/ui/c/dd;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alensw/ui/c/dd;->a:Lcom/alensw/ui/c/dc;

    invoke-static {v4, v3}, Lcom/alensw/ui/c/dc;->a(Lcom/alensw/ui/c/dc;Lcom/alensw/bean/CommonFile;)V

    :cond_0
    invoke-virtual {v3}, Lcom/alensw/bean/CommonFile;->g()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/alensw/ui/c/dd;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/alensw/ui/c/dd;->a:Lcom/alensw/ui/c/dc;

    invoke-static {v4, v3}, Lcom/alensw/ui/c/dc;->a(Lcom/alensw/ui/c/dc;Lcom/alensw/bean/CommonFile;)V

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-boolean v3, p0, Lcom/alensw/ui/c/dd;->b:Z

    if-eqz v3, :cond_3

    :cond_2
    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;)I
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/alensw/ui/c/dd;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/alensw/ui/c/dd;->a:Lcom/alensw/ui/c/dc;

    invoke-static {v4, v0}, Lcom/alensw/ui/c/dc;->a(Lcom/alensw/ui/c/dc;Lcom/alensw/a/e;)V

    add-int/lit8 v0, v1, 0x1

    :goto_1
    iget-boolean v1, p0, Lcom/alensw/ui/c/dd;->b:Z

    if-eqz v1, :cond_1

    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->j()I

    move-result v5

    move v3, v2

    :goto_4
    if-ge v3, v5, :cond_4

    invoke-virtual {v0, v3}, Lcom/alensw/a/e;->e(I)Lcom/alensw/a/d;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v7, v6, Lcom/alensw/a/d;->b:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/alensw/ui/c/dd;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/alensw/ui/c/dd;->a:Lcom/alensw/ui/c/dc;

    invoke-static {v7, v6}, Lcom/alensw/ui/c/dc;->a(Lcom/alensw/ui/c/dc;Lcom/alensw/a/d;)V

    add-int/lit8 v1, v1, 0x1

    :cond_0
    iget-boolean v6, p0, Lcom/alensw/ui/c/dd;->b:Z

    if-eqz v6, :cond_2

    move v0, v1

    :goto_5
    iget-boolean v1, p0, Lcom/alensw/ui/c/dd;->b:Z

    if-eqz v1, :cond_3

    :goto_6
    return v0

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    move v1, v0

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_5

    :cond_5
    move v0, v1

    goto :goto_6

    :cond_6
    move v0, v1

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_2
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/ui/c/dd;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alensw/ui/c/dd;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alensw/ui/c/dd;->b:Z

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/dd;->a:Lcom/alensw/ui/c/dc;

    iget-object v0, v0, Lcom/alensw/ui/c/dc;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alensw/ui/c/de;

    invoke-direct {v1, p0}, Lcom/alensw/ui/c/de;-><init>(Lcom/alensw/ui/c/dd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c()Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/dd;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/dd;->e:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/alensw/ui/c/dd;->a(Ljava/util/ArrayList;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/dd;->f:Lcom/alensw/bean/CommonFolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/dd;->f:Lcom/alensw/bean/CommonFolder;

    invoke-direct {p0, v0}, Lcom/alensw/ui/c/dd;->a(Lcom/alensw/bean/CommonFolder;)I

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/ui/c/dd;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
