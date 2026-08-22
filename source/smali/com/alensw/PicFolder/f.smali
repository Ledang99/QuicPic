.class Lcom/alensw/PicFolder/f;
.super Landroid/database/CursorWrapper;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private f:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    iput-object p2, p0, Lcom/alensw/PicFolder/f;->a:Ljava/lang/String;

    const-string v0, "document_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alensw/PicFolder/f;->b:I

    const-string v0, "parent_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alensw/PicFolder/f;->c:I

    const-string v0, "last_modified"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alensw/PicFolder/f;->d:I

    const-string v0, "datetaken"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alensw/PicFolder/f;->e:I

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/alensw/PicFolder/f;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "loading"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/f;->f:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/alensw/PicFolder/f;->f:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lcom/alensw/PicFolder/f;->f:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLong(I)J
    .locals 4

    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    iget v2, p0, Lcom/alensw/PicFolder/f;->d:I

    if-eq p1, v2, :cond_0

    iget v2, p0, Lcom/alensw/PicFolder/f;->e:I

    if-ne p1, v2, :cond_1

    :cond_0
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/alensw/PicFolder/f;->b:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/alensw/PicFolder/f;->c:I

    if-ne p1, v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/alensw/PicFolder/f;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alensw/PicFolder/CloudProvider;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/alensw/PicFolder/f;->a:Ljava/lang/String;

    goto :goto_0
.end method
