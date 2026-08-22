.class final Lcom/alensw/bean/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/alensw/bean/LocalFile;
    .locals 2

    new-instance v0, Lcom/alensw/bean/LocalFile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v1, v1

    invoke-direct {v0, p1, v1}, Lcom/alensw/bean/LocalFile;-><init>(Landroid/os/Parcel;C)V

    return-object v0
.end method

.method public a(I)[Lcom/alensw/bean/LocalFile;
    .locals 1

    new-array v0, p1, [Lcom/alensw/bean/LocalFile;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alensw/bean/i;->a(Landroid/os/Parcel;)Lcom/alensw/bean/LocalFile;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alensw/bean/i;->a(I)[Lcom/alensw/bean/LocalFile;

    move-result-object v0

    return-object v0
.end method
