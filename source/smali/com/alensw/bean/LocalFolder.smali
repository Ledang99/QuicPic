.class public Lcom/alensw/bean/LocalFolder;
.super Lcom/alensw/bean/CommonFolder;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field protected final u:Ljava/lang/String;

.field public v:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alensw/bean/j;

    invoke-direct {v0}, Lcom/alensw/bean/j;-><init>()V

    sput-object v0, Lcom/alensw/bean/LocalFolder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;C)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/alensw/bean/CommonFolder;-><init>(Landroid/os/Parcel;C)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/bean/LocalFolder;->v:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/bean/LocalFolder;->u:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v3, v0

    const/16 v0, 0x44

    if-ne v3, v0, :cond_0

    new-instance v0, Lcom/alensw/bean/LocalFolder;

    invoke-direct {v0, p1, v3}, Lcom/alensw/bean/LocalFolder;-><init>(Landroid/os/Parcel;C)V

    :goto_1
    iget-object v3, p0, Lcom/alensw/bean/LocalFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/alensw/bean/LocalFile;

    invoke-direct {v0, p1, v3}, Lcom/alensw/bean/LocalFile;-><init>(Landroid/os/Parcel;C)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/alensw/bean/CommonFile;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alensw/bean/CommonFolder;-><init>(Lcom/alensw/bean/CommonFile;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/bean/LocalFolder;->v:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/alensw/bean/LocalFolder;->u:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJJ)V
    .locals 10

    if-eqz p2, :cond_0

    move-object v2, p2

    :goto_0
    const/4 v8, 0x0

    move-object v1, p0

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v1 .. v8}, Lcom/alensw/bean/CommonFolder;-><init>(Ljava/lang/String;IJJLjava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/bean/LocalFolder;->v:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/alensw/bean/LocalFolder;->u:Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {p1}, Lcom/alensw/b/l/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/net/Uri;)I
    .locals 5

    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/alensw/bean/CommonFolder;->a(Landroid/net/Uri;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alensw/bean/LocalFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    iget-object v0, p0, Lcom/alensw/bean/LocalFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/bean/CommonFile;

    instance-of v4, v0, Lcom/alensw/bean/LocalFile;

    if-eqz v4, :cond_1

    check-cast v0, Lcom/alensw/bean/LocalFile;

    iget-object v0, v0, Lcom/alensw/bean/LocalFile;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-super {p0, p1}, Lcom/alensw/bean/CommonFolder;->a(Landroid/net/Uri;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic a(Z)Lcom/alensw/bean/CommonFolder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alensw/bean/LocalFolder;->b(Z)Lcom/alensw/bean/LocalFolder;

    move-result-object v0

    return-object v0
.end method

.method public a(CILjava/lang/String;)V
    .locals 15

    iget-object v2, p0, Lcom/alensw/bean/LocalFolder;->n:Ljava/util/ArrayList;

    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/16 v2, 0x44

    move/from16 v0, p1

    if-eq v0, v2, :cond_1

    iget-object v14, p0, Lcom/alensw/bean/LocalFolder;->n:Ljava/util/ArrayList;

    new-instance v2, Lcom/alensw/bean/LocalFile;

    iget-object v4, p0, Lcom/alensw/bean/LocalFolder;->u:Ljava/lang/String;

    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/alensw/b/f/c;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    const-wide/16 v8, 0x0

    move/from16 v0, p2

    int-to-long v10, v0

    move/from16 v0, p2

    int-to-long v12, v0

    move/from16 v3, p1

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v13}, Lcom/alensw/bean/LocalFile;-><init>(CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJ)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/alensw/bean/LocalFolder;->v:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v10, p0, Lcom/alensw/bean/LocalFolder;->v:Ljava/util/ArrayList;

    new-instance v2, Lcom/alensw/bean/LocalFolder;

    iget-object v3, p0, Lcom/alensw/bean/LocalFolder;->u:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-static {v3, v0}, Lcom/alensw/b/l/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x32

    move/from16 v0, p2

    int-to-long v6, v0

    move/from16 v0, p2

    int-to-long v8, v0

    move-object/from16 v4, p3

    invoke-direct/range {v2 .. v9}, Lcom/alensw/bean/LocalFolder;-><init>(Ljava/lang/String;Ljava/lang/String;IJJ)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public b(Z)Lcom/alensw/bean/LocalFolder;
    .locals 2

    new-instance v0, Lcom/alensw/bean/LocalFolder;

    iget-object v1, p0, Lcom/alensw/bean/LocalFolder;->u:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/alensw/bean/LocalFolder;-><init>(Lcom/alensw/bean/CommonFile;Ljava/lang/String;)V

    iget v1, p0, Lcom/alensw/bean/LocalFolder;->k:I

    iput v1, v0, Lcom/alensw/bean/LocalFolder;->k:I

    iget v1, p0, Lcom/alensw/bean/LocalFolder;->l:I

    iput v1, v0, Lcom/alensw/bean/LocalFolder;->l:I

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/alensw/bean/LocalFolder;->a(Lcom/alensw/bean/CommonFolder;Z)V

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/alensw/bean/LocalFolder;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/alensw/bean/LocalFolder;

    iget-wide v2, p0, Lcom/alensw/bean/LocalFolder;->g:J

    iget-wide v4, p1, Lcom/alensw/bean/LocalFolder;->g:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-char v2, p0, Lcom/alensw/bean/LocalFolder;->b:C

    iget-char v3, p1, Lcom/alensw/bean/LocalFolder;->b:C

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/alensw/bean/LocalFolder;->u:Ljava/lang/String;

    iget-object v3, p1, Lcom/alensw/bean/LocalFolder;->u:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/alensw/bean/LocalFolder;->u:Ljava/lang/String;

    iget-object v3, p1, Lcom/alensw/bean/LocalFolder;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/alensw/bean/LocalFolder;->u:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-wide v2, p0, Lcom/alensw/bean/LocalFolder;->g:J

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public i()Landroid/net/Uri;
    .locals 2

    iget-object v0, p0, Lcom/alensw/bean/LocalFolder;->j:Landroid/net/Uri;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alensw/bean/LocalFolder;->u:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/bean/LocalFolder;->j:Landroid/net/Uri;

    :cond_0
    iget-object v0, p0, Lcom/alensw/bean/LocalFolder;->j:Landroid/net/Uri;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alensw/bean/LocalFolder;->u:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/alensw/bean/CommonFolder;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/alensw/bean/LocalFolder;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alensw/bean/LocalFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/alensw/bean/LocalFolder;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0, p1, p2}, Lcom/alensw/bean/CommonFile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
