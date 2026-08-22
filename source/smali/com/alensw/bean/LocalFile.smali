.class public Lcom/alensw/bean/LocalFile;
.super Lcom/alensw/bean/CommonFile;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field protected final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alensw/bean/i;

    invoke-direct {v0}, Lcom/alensw/bean/i;-><init>()V

    sput-object v0, Lcom/alensw/bean/LocalFile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJ)V
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

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alensw/bean/LocalFile;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;C)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alensw/bean/CommonFile;-><init>(Landroid/os/Parcel;C)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/bean/LocalFile;->k:Ljava/lang/String;

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
    instance-of v2, p1, Lcom/alensw/bean/LocalFile;

    if-eqz v2, :cond_4

    check-cast p1, Lcom/alensw/bean/LocalFile;

    iget-wide v2, p0, Lcom/alensw/bean/LocalFile;->g:J

    iget-wide v4, p1, Lcom/alensw/bean/LocalFile;->g:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-char v2, p0, Lcom/alensw/bean/LocalFile;->b:C

    iget-char v3, p1, Lcom/alensw/bean/LocalFile;->b:C

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/alensw/bean/LocalFile;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/alensw/bean/LocalFile;->c:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/alensw/bean/LocalFile;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/alensw/bean/LocalFile;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/alensw/bean/LocalFile;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/alensw/bean/LocalFile;->k:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/alensw/bean/LocalFile;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/alensw/bean/LocalFile;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/alensw/bean/LocalFile;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/bean/LocalFile;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/alensw/bean/LocalFile;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/alensw/bean/LocalFile;->g:J

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Landroid/net/Uri;
    .locals 3

    iget-object v0, p0, Lcom/alensw/bean/LocalFile;->j:Landroid/net/Uri;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alensw/bean/LocalFile;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/alensw/bean/LocalFile;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/bean/LocalFile;->j:Landroid/net/Uri;

    :cond_0
    iget-object v0, p0, Lcom/alensw/bean/LocalFile;->j:Landroid/net/Uri;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alensw/bean/LocalFile;->k:Ljava/lang/String;

    invoke-static {v1}, Lcom/alensw/b/l/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/bean/LocalFile;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/alensw/bean/CommonFile;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/alensw/bean/LocalFile;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
