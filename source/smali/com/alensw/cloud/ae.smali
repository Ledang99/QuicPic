.class public Lcom/alensw/cloud/ae;
.super Lcom/alensw/b/c/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/b/c/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/DataInputStream;)Lcom/alensw/cloud/ad;
    .locals 3

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alensw/cloud/ad;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/alensw/cloud/ad;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v2
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "UrlItem"

    return-object v0
.end method

.method public a(Ljava/io/DataOutputStream;Lcom/alensw/cloud/ad;)V
    .locals 1

    iget-object v0, p2, Lcom/alensw/cloud/ad;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/alensw/cloud/ad;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/io/DataOutputStream;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/alensw/cloud/ad;

    invoke-virtual {p0, p1, p2}, Lcom/alensw/cloud/ae;->a(Ljava/io/DataOutputStream;Lcom/alensw/cloud/ad;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/ae;->a(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public synthetic b(Ljava/io/DataInputStream;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alensw/cloud/ae;->a(Ljava/io/DataInputStream;)Lcom/alensw/cloud/ad;

    move-result-object v0

    return-object v0
.end method
