.class final Lcom/alensw/bean/m;
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
.method public a(Landroid/os/Parcel;)Lcom/alensw/bean/MediaStoreFolder;
    .locals 2

    new-instance v0, Lcom/alensw/bean/MediaStoreFolder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v1, v1

    invoke-direct {v0, p1, v1}, Lcom/alensw/bean/MediaStoreFolder;-><init>(Landroid/os/Parcel;C)V

    return-object v0
.end method

.method public a(I)[Lcom/alensw/bean/MediaStoreFolder;
    .locals 1

    new-array v0, p1, [Lcom/alensw/bean/MediaStoreFolder;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alensw/bean/m;->a(Landroid/os/Parcel;)Lcom/alensw/bean/MediaStoreFolder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alensw/bean/m;->a(I)[Lcom/alensw/bean/MediaStoreFolder;

    move-result-object v0

    return-object v0
.end method
