.class public Lcom/alensw/bean/CommonRoot;
.super Lcom/alensw/bean/CommonFile;


# instance fields
.field public k:Lcom/alensw/cloud/z;

.field public l:I

.field public m:I

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 14

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-direct/range {v1 .. v13}, Lcom/alensw/bean/CommonFile;-><init>(CLjava/lang/String;Ljava/lang/String;IJJJLjava/lang/String;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/alensw/bean/CommonRoot;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/alensw/bean/CommonRoot;

    iget-object v2, p0, Lcom/alensw/bean/CommonRoot;->n:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alensw/bean/CommonRoot;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/alensw/bean/CommonRoot;->n:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/alensw/bean/CommonRoot;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/alensw/bean/CommonRoot;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/alensw/bean/CommonRoot;->i()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alensw/bean/CommonRoot;->i()Landroid/net/Uri;

    move-result-object v3

    if-eq v2, v3, :cond_4

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public k()Lcom/alensw/bean/CommonFolder;
    .locals 1

    new-instance v0, Lcom/alensw/bean/CommonFolder;

    invoke-direct {v0, p0}, Lcom/alensw/bean/CommonFolder;-><init>(Lcom/alensw/bean/CommonFile;)V

    return-object v0
.end method
