.class public Lcom/alensw/bean/CommonFolder;
.super Lcom/alensw/bean/CommonFile;


# static fields
.field public static final o:Ljava/util/Comparator;

.field public static final p:Ljava/util/Comparator;

.field public static final q:Ljava/util/Comparator;

.field public static final r:Ljava/util/Comparator;

.field public static final s:Ljava/util/Comparator;

.field public static final t:Ljava/util/Comparator;


# instance fields
.field public k:I

.field public l:I

.field protected m:Ljava/util/Comparator;

.field protected final n:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alensw/bean/a;

    invoke-direct {v0}, Lcom/alensw/bean/a;-><init>()V

    sput-object v0, Lcom/alensw/bean/CommonFolder;->o:Ljava/util/Comparator;

    new-instance v0, Lcom/alensw/bean/b;

    invoke-direct {v0}, Lcom/alensw/bean/b;-><init>()V

    sput-object v0, Lcom/alensw/bean/CommonFolder;->p:Ljava/util/Comparator;

    new-instance v0, Lcom/alensw/bean/c;

    invoke-direct {v0}, Lcom/alensw/bean/c;-><init>()V

    sput-object v0, Lcom/alensw/bean/CommonFolder;->q:Ljava/util/Comparator;

    new-instance v0, Lcom/alensw/bean/d;

    invoke-direct {v0}, Lcom/alensw/bean/d;-><init>()V

    sput-object v0, Lcom/alensw/bean/CommonFolder;->r:Ljava/util/Comparator;

    new-instance v0, Lcom/alensw/bean/e;

    invoke-direct {v0}, Lcom/alensw/bean/e;-><init>()V

    sput-object v0, Lcom/alensw/bean/CommonFolder;->s:Ljava/util/Comparator;

    new-instance v0, Lcom/alensw/bean/f;

    invoke-direct {v0}, Lcom/alensw/bean/f;-><init>()V

    sput-object v0, Lcom/alensw/bean/CommonFolder;->t:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;C)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alensw/bean/CommonFile;-><init>(Landroid/os/Parcel;C)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alensw/bean/CommonFolder;->k:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/bean/CommonFolder;->l:I

    sget-object v0, Lcom/alensw/bean/CommonFolder;->o:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/alensw/bean/CommonFolder;->m:Ljava/util/Comparator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alensw/bean/CommonFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alensw/bean/CommonFolder;->k:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alensw/bean/CommonFolder;->l:I

    return-void
.end method

.method public constructor <init>(Lcom/alensw/bean/CommonFile;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alensw/bean/CommonFile;-><init>(Lcom/alensw/bean/CommonFile;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alensw/bean/CommonFolder;->k:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/bean/CommonFolder;->l:I

    sget-object v0, Lcom/alensw/bean/CommonFolder;->o:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/alensw/bean/CommonFolder;->m:Ljava/util/Comparator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alensw/bean/CommonFolder;->n:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJJLjava/lang/String;)V
    .locals 15

    const/16 v2, 0x44

    const-string v4, "vnd.android.document/directory"

    const-wide/16 v6, 0x0

    const/4 v13, 0x0

    move-object v1, p0

    move-object/from16 v3, p1

    move/from16 v5, p2

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move-object/from16 v12, p7

    invoke-direct/range {v1 .. v13}, Lcom/alensw/bean/CommonFile;-><init>(CLjava/lang/String;Ljava/lang/String;IJJJLjava/lang/String;Landroid/net/Uri;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alensw/bean/CommonFolder;->k:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/bean/CommonFolder;->l:I

    sget-object v0, Lcom/alensw/bean/CommonFolder;->o:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/alensw/bean/CommonFolder;->m:Ljava/util/Comparator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alensw/bean/CommonFolder;->n:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x4

    or-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public a(Landroid/net/Uri;)I
    .locals 3

    iget-object v0, p0, Lcom/alensw/bean/CommonFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/alensw/bean/CommonFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public a(Lcom/alensw/bean/CommonFile;)I
    .locals 3

    iget-object v0, p0, Lcom/alensw/bean/CommonFolder;->n:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alensw/bean/CommonFolder;->m:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Lcom/alensw/b/l/b;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    if-gez v1, :cond_0

    invoke-virtual {p1}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alensw/bean/CommonFolder;->a(Landroid/net/Uri;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public a(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(I)Lcom/alensw/bean/CommonFile;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alensw/bean/CommonFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/alensw/bean/CommonFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/bean/CommonFile;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/alensw/bean/CommonFile;->a:Lcom/alensw/bean/CommonFile;

    goto :goto_0
.end method

.method public a(Z)Lcom/alensw/bean/CommonFolder;
    .locals 2

    new-instance v0, Lcom/alensw/bean/CommonFolder;

    invoke-direct {v0, p0}, Lcom/alensw/bean/CommonFolder;-><init>(Lcom/alensw/bean/CommonFile;)V

    iget v1, p0, Lcom/alensw/bean/CommonFolder;->k:I

    iput v1, v0, Lcom/alensw/bean/CommonFolder;->k:I

    iget v1, p0, Lcom/alensw/bean/CommonFolder;->l:I

    iput v1, v0, Lcom/alensw/bean/CommonFolder;->l:I

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/alensw/bean/CommonFolder;->a(Lcom/alensw/bean/CommonFolder;Z)V

    :cond_0
    return-object v0
.end method

.method public a(ILcom/alensw/bean/CommonFile;)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/bean/CommonFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 2

    invoke-virtual {p0}, Lcom/alensw/bean/CommonFolder;->i()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public a(Landroid/database/Cursor;Ljava/util/Set;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/alensw/bean/CommonFolder;Z)V
    .locals 5

    iget-object v0, p0, Lcom/alensw/bean/CommonFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Lcom/alensw/bean/CommonFolder;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/bean/CommonFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/alensw/bean/CommonFolder;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :cond_0
    iget v0, p1, Lcom/alensw/bean/CommonFolder;->k:I

    invoke-virtual {p1, v0}, Lcom/alensw/bean/CommonFolder;->a(I)Lcom/alensw/bean/CommonFile;

    move-result-object v1

    iget-object v0, p1, Lcom/alensw/bean/CommonFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/bean/CommonFile;

    if-nez p2, :cond_2

    iget-char v3, v0, Lcom/alensw/bean/CommonFile;->b:C

    const/16 v4, 0x44

    if-eq v3, v4, :cond_1

    :cond_2
    if-ne v1, v0, :cond_3

    iget-object v3, p0, Lcom/alensw/bean/CommonFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/alensw/bean/CommonFolder;->k:I

    :cond_3
    iget-object v3, p0, Lcom/alensw/bean/CommonFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/alensw/bean/CommonFile;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/alensw/bean/CommonFile;

    invoke-virtual {p0, v0}, Lcom/alensw/bean/CommonFolder;->d(Lcom/alensw/bean/CommonFile;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Landroid/content/ContentResolver;)[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lcom/alensw/bean/CommonFile;)I
    .locals 2

    iget-object v0, p0, Lcom/alensw/bean/CommonFolder;->n:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alensw/bean/CommonFolder;->m:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Lcom/alensw/b/l/b;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public final b(I)Landroid/net/Uri;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alensw/bean/CommonFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/alensw/bean/CommonFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    goto :goto_0
.end method

.method public b(Landroid/content/ContentResolver;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public b(Landroid/database/Cursor;Ljava/util/Set;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/alensw/bean/CommonFile;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/alensw/bean/CommonFolder;->a(Lcom/alensw/bean/CommonFile;)I

    move-result v0

    if-gez v0, :cond_0

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    iget-object v1, p0, Lcom/alensw/bean/CommonFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return v0
.end method

.method public c(I)Z
    .locals 2

    iget-object v0, p0, Lcom/alensw/bean/CommonFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ltz p1, :cond_2

    if-ge p1, v0, :cond_2

    iget-object v1, p0, Lcom/alensw/bean/CommonFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/alensw/bean/CommonFolder;->k:I

    if-lt v1, v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alensw/bean/CommonFolder;->k:I

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget v0, p0, Lcom/alensw/bean/CommonFolder;->k:I

    if-le v0, p1, :cond_0

    iget v0, p0, Lcom/alensw/bean/CommonFolder;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alensw/bean/CommonFolder;->k:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public d(Lcom/alensw/bean/CommonFile;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alensw/bean/CommonFolder;->a(Lcom/alensw/bean/CommonFile;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/alensw/bean/CommonFolder;->c(I)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lcom/alensw/bean/CommonFolder;->l:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Lcom/alensw/bean/CommonFolder;->l:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public final m()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/alensw/bean/CommonFolder;->l:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/bean/CommonFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public o()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/bean/CommonFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final p()Ljava/util/List;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/alensw/bean/CommonFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/alensw/bean/CommonFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->h()C

    move-result v3

    const/16 v4, 0x44

    if-eq v3, v4, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public q()Landroid/net/Uri;
    .locals 1

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    return-object v0
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/bean/CommonFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alensw/bean/CommonFolder;->k:I

    return-void
.end method

.method public s()V
    .locals 3

    invoke-virtual {p0}, Lcom/alensw/bean/CommonFolder;->l()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget v0, p0, Lcom/alensw/bean/CommonFolder;->k:I

    invoke-virtual {p0, v0}, Lcom/alensw/bean/CommonFolder;->a(I)Lcom/alensw/bean/CommonFile;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/bean/CommonFolder;->n:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alensw/bean/CommonFolder;->m:Ljava/util/Comparator;

    invoke-static {v1, v2}, Lcom/alensw/b/l/b;->a(Ljava/util/ArrayList;Ljava/util/Comparator;)Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/alensw/bean/CommonFolder;->a(Lcom/alensw/bean/CommonFile;)I

    move-result v0

    iput v0, p0, Lcom/alensw/bean/CommonFolder;->k:I

    :cond_0
    return-void

    :pswitch_1
    sget-object v0, Lcom/alensw/bean/CommonFolder;->o:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/alensw/bean/CommonFolder;->m:Ljava/util/Comparator;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/alensw/bean/CommonFolder;->p:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/alensw/bean/CommonFolder;->m:Ljava/util/Comparator;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/alensw/bean/CommonFolder;->q:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/alensw/bean/CommonFolder;->m:Ljava/util/Comparator;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/alensw/bean/CommonFolder;->r:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/alensw/bean/CommonFolder;->m:Ljava/util/Comparator;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/alensw/bean/CommonFolder;->s:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/alensw/bean/CommonFolder;->m:Ljava/util/Comparator;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/alensw/bean/CommonFolder;->t:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/alensw/bean/CommonFolder;->m:Ljava/util/Comparator;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/alensw/bean/CommonFile;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/alensw/bean/CommonFolder;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/alensw/bean/CommonFolder;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
