.class Lcom/alensw/ui/c/bm;
.super Lcom/alensw/ui/a/ao;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/HashSet;

.field final synthetic c:Lcom/alensw/a/bc;

.field final synthetic e:Ljava/util/ArrayList;

.field final synthetic f:Lcom/alensw/ui/c/bf;

.field private final g:Ljava/util/GregorianCalendar;

.field private final h:[I


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/bf;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashSet;Lcom/alensw/a/bc;Ljava/util/ArrayList;)V
    .locals 1

    iput-object p1, p0, Lcom/alensw/ui/c/bm;->f:Lcom/alensw/ui/c/bf;

    iput-object p5, p0, Lcom/alensw/ui/c/bm;->a:Ljava/lang/String;

    iput-object p6, p0, Lcom/alensw/ui/c/bm;->b:Ljava/util/HashSet;

    iput-object p7, p0, Lcom/alensw/ui/c/bm;->c:Lcom/alensw/a/bc;

    iput-object p8, p0, Lcom/alensw/ui/c/bm;->e:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3, p4}, Lcom/alensw/ui/a/ao;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/c/bm;->g:Ljava/util/GregorianCalendar;

    sget-object v0, Lcom/alensw/ui/c/bf;->m:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alensw/ui/c/bm;->h:[I

    return-void
.end method

.method private a(J)Ljava/lang/String;
    .locals 7

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v6, 0x2

    iget-object v1, p0, Lcom/alensw/ui/c/bm;->g:Ljava/util/GregorianCalendar;

    iget-object v3, p0, Lcom/alensw/ui/c/bm;->h:[I

    invoke-virtual {v1, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    invoke-virtual {v1, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    aput v2, v3, v0

    invoke-virtual {v1, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aput v2, v3, v4

    invoke-virtual {v1, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    aput v2, v3, v6

    const/4 v2, 0x3

    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    aput v4, v3, v2

    const/4 v2, 0x4

    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    aput v4, v3, v2

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    aput v1, v3, v5

    iget-object v1, p0, Lcom/alensw/ui/c/bm;->a:Ljava/lang/String;

    :goto_0
    sget-object v2, Lcom/alensw/ui/c/bf;->m:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    aget v2, v3, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v6, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    sget-object v4, Lcom/alensw/ui/c/bf;->m:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method protected a()V
    .locals 9

    iget-object v0, p0, Lcom/alensw/ui/c/bm;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/d;

    iget-object v1, v0, Lcom/alensw/a/d;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alensw/b/l/b;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    iget-object v2, p0, Lcom/alensw/ui/c/bm;->f:Lcom/alensw/ui/c/bf;

    iget-object v2, v2, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-direct {v6, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/alensw/b/h/c;->a(Ljava/lang/String;Z)Lcom/alensw/b/h/c;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8, v2, v3}, Lcom/alensw/b/h/c;->a(J)J

    move-result-wide v2

    invoke-virtual {v8}, Lcom/alensw/b/h/c;->a()V

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v2, v3}, Lcom/alensw/ui/c/bm;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/alensw/ui/c/bm;->f:Lcom/alensw/ui/c/bf;

    iget-object v3, v3, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alensw/b/l/b;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/alensw/b/l/b;->b(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alensw/a/d;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/alensw/ui/c/bm;->c:Lcom/alensw/a/bc;

    invoke-virtual {v0, v7}, Lcom/alensw/a/bc;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alensw/ui/c/bm;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/alensw/ui/c/bm;->d()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    return-void
.end method

.method protected b()V
    .locals 3

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    iget-object v1, p0, Lcom/alensw/ui/c/bm;->f:Lcom/alensw/ui/c/bf;

    iget-object v1, v1, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v1}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/ui/c/bm;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/alensw/a/ba;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->o:Lcom/alensw/a/x;

    iget-object v1, p0, Lcom/alensw/ui/c/bm;->f:Lcom/alensw/ui/c/bf;

    iget-object v1, v1, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alensw/a/x;->a(Lcom/alensw/a/e;Z)V

    iget-object v0, p0, Lcom/alensw/ui/c/bm;->f:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/bm;->f:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->l()V

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/bm;->f:Lcom/alensw/ui/c/bf;

    iget-object v0, v0, Lcom/alensw/ui/c/bf;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    iget-object v0, p0, Lcom/alensw/ui/c/bm;->f:Lcom/alensw/ui/c/bf;

    invoke-virtual {v0}, Lcom/alensw/ui/c/bf;->o()V

    return-void
.end method
