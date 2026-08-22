.class Lcom/alensw/ui/c/db;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/cx;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/cx;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/db;->a:Lcom/alensw/ui/c/cx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createBeamUris(Landroid/nfc/NfcEvent;)[Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/db;->a:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->f()[Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
