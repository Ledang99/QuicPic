.class public Lcom/alensw/bean/MediaStoreFile;
.super Lcom/alensw/bean/CommonFile;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field protected final k:I

.field protected final l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alensw/bean/k;

    invoke-direct {v0}, Lcom/alensw/bean/k;-><init>()V

    sput-object v0, Lcom/alensw/bean/MediaStoreFile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(CILjava/lang/String;Ljava/lang/String;IJJJLjava/lang/String;)V
    .locals 16

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    invoke-direct/range {v3 .. v15}, Lcom/alensw/bean/CommonFile;-><init>(CLjava/lang/String;Ljava/lang/String;IJJJLjava/lang/String;Landroid/net/Uri;)V

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alensw/bean/MediaStoreFile;->k:I

    move-object/from16 v0, p12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alensw/bean/MediaStoreFile;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(CILjava/lang/String;Ljava/lang/String;IJJJLjava/lang/String;Landroid/net/Uri;)V
    .locals 16

    const/4 v14, 0x0

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-object/from16 v15, p13

    invoke-direct/range {v3 .. v15}, Lcom/alensw/bean/CommonFile;-><init>(CLjava/lang/String;Ljava/lang/String;IJJJLjava/lang/String;Landroid/net/Uri;)V

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alensw/bean/MediaStoreFile;->k:I

    move-object/from16 v0, p12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alensw/bean/MediaStoreFile;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;C)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alensw/bean/CommonFile;-><init>(Landroid/os/Parcel;C)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alensw/bean/MediaStoreFile;->k:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/bean/MediaStoreFile;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/alensw/bean/MediaStoreFile;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/alensw/bean/MediaStoreFile;

    iget-wide v2, p0, Lcom/alensw/bean/MediaStoreFile;->g:J

    iget-wide v4, p1, Lcom/alensw/bean/MediaStoreFile;->g:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-char v2, p0, Lcom/alensw/bean/MediaStoreFile;->b:C

    iget-char v3, p1, Lcom/alensw/bean/MediaStoreFile;->b:C

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/alensw/bean/MediaStoreFile;->k:I

    iget v3, p1, Lcom/alensw/bean/MediaStoreFile;->k:I

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/alensw/bean/MediaStoreFile;->k:I

    iget-wide v2, p0, Lcom/alensw/bean/MediaStoreFile;->g:J

    long-to-int v1, v2

    add-int/2addr v0, v1

    iget-char v1, p0, Lcom/alensw/bean/MediaStoreFile;->b:C

    add-int/2addr v0, v1

    return v0
.end method

.method public i()Landroid/net/Uri;
    .locals 2

    iget-object v0, p0, Lcom/alensw/bean/MediaStoreFile;->j:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-char v0, p0, Lcom/alensw/bean/MediaStoreFile;->b:C

    invoke-static {v0}, Lcom/alensw/a/ba;->a(C)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget v1, p0, Lcom/alensw/bean/MediaStoreFile;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/bean/MediaStoreFile;->j:Landroid/net/Uri;

    :cond_0
    iget-object v0, p0, Lcom/alensw/bean/MediaStoreFile;->j:Landroid/net/Uri;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alensw/bean/MediaStoreFile;->l:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/alensw/bean/CommonFile;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/alensw/bean/MediaStoreFile;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/alensw/bean/MediaStoreFile;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
