.class Lcom/alensw/a/bb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# instance fields
.field final synthetic a:Lcom/alensw/a/ba;


# direct methods
.method constructor <init>(Lcom/alensw/a/ba;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/a/bb;->a:Lcom/alensw/a/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 0

    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    :try_start_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/alensw/a/bb;->a:Lcom/alensw/a/ba;

    invoke-static {v1}, Lcom/alensw/a/ba;->a(Lcom/alensw/a/ba;)Lcom/alensw/a/am;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/alensw/a/am;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
