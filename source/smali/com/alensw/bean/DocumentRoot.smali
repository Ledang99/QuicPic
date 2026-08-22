.class public Lcom/alensw/bean/DocumentRoot;
.super Lcom/alensw/bean/CommonRoot;


# static fields
.field public static final s:[Ljava/lang/String;


# instance fields
.field protected final q:Ljava/lang/String;

.field protected final r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "root_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "document_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "icon"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "summary"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alensw/bean/DocumentRoot;->s:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p3, p4, p5}, Lcom/alensw/bean/CommonRoot;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/alensw/bean/DocumentRoot;->q:Ljava/lang/String;

    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/alensw/bean/DocumentRoot;->r:Ljava/lang/String;

    return-void

    :cond_0
    const-string p2, ""

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/database/Cursor;)Lcom/alensw/bean/DocumentRoot;
    .locals 7

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    new-instance v0, Lcom/alensw/bean/DocumentRoot;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alensw/bean/DocumentRoot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/alensw/bean/DocumentRoot;->l:I

    iput-object v6, v0, Lcom/alensw/bean/DocumentRoot;->n:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alensw/bean/DocumentRoot;->o:Ljava/lang/String;

    invoke-static {v6}, Lcom/alensw/PicFolder/CloudProvider;->e(Ljava/lang/String;)Lcom/alensw/cloud/z;

    move-result-object v1

    iput-object v1, v0, Lcom/alensw/bean/DocumentRoot;->k:Lcom/alensw/cloud/z;

    return-object v0
.end method


# virtual methods
.method public i()Landroid/net/Uri;
    .locals 2

    iget-object v0, p0, Lcom/alensw/bean/DocumentRoot;->j:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/bean/DocumentRoot;->q:Ljava/lang/String;

    iget-object v1, p0, Lcom/alensw/bean/DocumentRoot;->r:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alensw/b/j/a;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/bean/DocumentRoot;->j:Landroid/net/Uri;

    :cond_0
    iget-object v0, p0, Lcom/alensw/bean/DocumentRoot;->j:Landroid/net/Uri;

    return-object v0
.end method

.method public synthetic k()Lcom/alensw/bean/CommonFolder;
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/bean/DocumentRoot;->m()Lcom/alensw/bean/DocumentFolder;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alensw/bean/DocumentRoot;->r:Ljava/lang/String;

    return-object v0
.end method

.method public m()Lcom/alensw/bean/DocumentFolder;
    .locals 11

    new-instance v1, Lcom/alensw/bean/DocumentFolder;

    iget-object v2, p0, Lcom/alensw/bean/DocumentRoot;->q:Ljava/lang/String;

    iget-object v3, p0, Lcom/alensw/bean/DocumentRoot;->r:Ljava/lang/String;

    iget-object v4, p0, Lcom/alensw/bean/DocumentRoot;->c:Ljava/lang/String;

    iget v5, p0, Lcom/alensw/bean/DocumentRoot;->e:I

    iget-wide v6, p0, Lcom/alensw/bean/DocumentRoot;->g:J

    iget-wide v8, p0, Lcom/alensw/bean/DocumentRoot;->h:J

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/alensw/bean/DocumentFolder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;)V

    return-object v1
.end method
