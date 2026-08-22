.class public Lcom/alensw/bean/CommonFile;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static a:Lcom/alensw/bean/CommonFile;


# instance fields
.field protected final b:C

.field protected final c:Ljava/lang/String;

.field protected final d:Ljava/lang/String;

.field protected final e:I

.field protected final f:J

.field protected g:J

.field protected h:J

.field protected i:Ljava/lang/String;

.field protected j:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    new-instance v1, Lcom/alensw/bean/CommonFile;

    const-string v3, ""

    const-string v4, ""

    const/4 v12, 0x0

    sget-object v13, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    move v5, v2

    move-wide v8, v6

    move-wide v10, v6

    invoke-direct/range {v1 .. v13}, Lcom/alensw/bean/CommonFile;-><init>(CLjava/lang/String;Ljava/lang/String;IJJJLjava/lang/String;Landroid/net/Uri;)V

    sput-object v1, Lcom/alensw/bean/CommonFile;->a:Lcom/alensw/bean/CommonFile;

    return-void
.end method

.method public constructor <init>(CLjava/lang/String;Ljava/lang/String;IJJJLjava/lang/String;Landroid/net/Uri;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lcom/alensw/bean/CommonFile;->b:C

    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/alensw/bean/CommonFile;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/alensw/bean/CommonFile;->d:Ljava/lang/String;

    iput p4, p0, Lcom/alensw/bean/CommonFile;->e:I

    iput-wide p5, p0, Lcom/alensw/bean/CommonFile;->f:J

    iput-wide p7, p0, Lcom/alensw/bean/CommonFile;->g:J

    const-wide/16 v0, 0x0

    cmp-long v0, p9, v0

    if-eqz v0, :cond_1

    :goto_1
    iput-wide p9, p0, Lcom/alensw/bean/CommonFile;->h:J

    iput-object p11, p0, Lcom/alensw/bean/CommonFile;->i:Ljava/lang/String;

    iput-object p12, p0, Lcom/alensw/bean/CommonFile;->j:Landroid/net/Uri;

    return-void

    :cond_0
    const-string p2, ""

    goto :goto_0

    :cond_1
    move-wide p9, p7

    goto :goto_1
.end method

.method public constructor <init>(Landroid/os/Parcel;C)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p2, p0, Lcom/alensw/bean/CommonFile;->b:C

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/bean/CommonFile;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/bean/CommonFile;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alensw/bean/CommonFile;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alensw/bean/CommonFile;->f:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alensw/bean/CommonFile;->g:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alensw/bean/CommonFile;->h:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/bean/CommonFile;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alensw/bean/CommonFile;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-char v0, p1, Lcom/alensw/bean/CommonFile;->b:C

    iput-char v0, p0, Lcom/alensw/bean/CommonFile;->b:C

    iget-object v0, p1, Lcom/alensw/bean/CommonFile;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/alensw/bean/CommonFile;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/alensw/bean/CommonFile;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/alensw/bean/CommonFile;->d:Ljava/lang/String;

    iget v0, p1, Lcom/alensw/bean/CommonFile;->e:I

    iput v0, p0, Lcom/alensw/bean/CommonFile;->e:I

    iget-wide v0, p1, Lcom/alensw/bean/CommonFile;->f:J

    iput-wide v0, p0, Lcom/alensw/bean/CommonFile;->f:J

    iget-wide v0, p1, Lcom/alensw/bean/CommonFile;->g:J

    iput-wide v0, p0, Lcom/alensw/bean/CommonFile;->g:J

    iget-wide v0, p1, Lcom/alensw/bean/CommonFile;->h:J

    iput-wide v0, p0, Lcom/alensw/bean/CommonFile;->h:J

    iget-object v0, p1, Lcom/alensw/bean/CommonFile;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/alensw/bean/CommonFile;->i:Ljava/lang/String;

    iget-object v0, p1, Lcom/alensw/bean/CommonFile;->j:Landroid/net/Uri;

    iput-object v0, p0, Lcom/alensw/bean/CommonFile;->j:Landroid/net/Uri;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)C
    .locals 1

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/alensw/b/f/c;->a(Ljava/lang/String;)C

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x49

    goto :goto_0

    :cond_1
    const-string v0, "video/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x56

    goto :goto_0

    :cond_2
    const-string v0, "vnd.android.document/directory"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x44

    goto :goto_0

    :cond_3
    const-string v0, "audio/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x41

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/alensw/b/f/c;->a(Ljava/lang/String;)C

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alensw/bean/CommonFile;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(JJ)V
    .locals 1

    iput-wide p1, p0, Lcom/alensw/bean/CommonFile;->g:J

    iput-wide p3, p0, Lcom/alensw/bean/CommonFile;->h:J

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alensw/bean/CommonFile;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/alensw/bean/CommonFile;->e:I

    return v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/alensw/bean/CommonFile;->f:J

    return-wide v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lcom/alensw/bean/CommonFile;->g:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/alensw/bean/CommonFile;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/alensw/bean/CommonFile;

    iget-wide v2, p0, Lcom/alensw/bean/CommonFile;->g:J

    iget-wide v4, p1, Lcom/alensw/bean/CommonFile;->g:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-char v2, p0, Lcom/alensw/bean/CommonFile;->b:C

    iget-char v3, p1, Lcom/alensw/bean/CommonFile;->b:C

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v3

    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/alensw/bean/CommonFile;->h:J

    return-wide v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alensw/bean/CommonFile;->i:Ljava/lang/String;

    return-object v0
.end method

.method public h()C
    .locals 1

    iget-char v0, p0, Lcom/alensw/bean/CommonFile;->b:C

    return v0
.end method

.method public hashCode()I
    .locals 4

    invoke-virtual {p0}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    iget-wide v2, p0, Lcom/alensw/bean/CommonFile;->g:J

    long-to-int v1, v2

    add-int/2addr v0, v1

    iget-char v1, p0, Lcom/alensw/bean/CommonFile;->b:C

    add-int/2addr v0, v1

    return v0
.end method

.method public i()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/alensw/bean/CommonFile;->j:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/bean/CommonFile;->j:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-char v0, p0, Lcom/alensw/bean/CommonFile;->b:C

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/alensw/bean/CommonFile;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alensw/bean/CommonFile;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/alensw/bean/CommonFile;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/alensw/bean/CommonFile;->f:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/alensw/bean/CommonFile;->g:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/alensw/bean/CommonFile;->h:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/alensw/bean/CommonFile;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
