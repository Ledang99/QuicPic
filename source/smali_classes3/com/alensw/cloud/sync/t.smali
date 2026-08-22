.class public Lcom/alensw/cloud/sync/t;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:J

.field public e:J

.field public f:J

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/alensw/cloud/sync/t;->a:I

    iput v0, p0, Lcom/alensw/cloud/sync/t;->j:I

    const-string v0, ""

    iput-object v0, p0, Lcom/alensw/cloud/sync/t;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/DataInputStream;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/cloud/sync/t;->a:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alensw/cloud/sync/t;->b:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alensw/cloud/sync/t;->c:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alensw/cloud/sync/t;->d:J

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alensw/cloud/sync/t;->e:J

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alensw/cloud/sync/t;->f:J

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alensw/cloud/sync/t;->g:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alensw/cloud/sync/t;->h:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alensw/cloud/sync/t;->i:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alensw/cloud/sync/t;->j:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alensw/cloud/sync/t;->k:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/cloud/sync/t;->l:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v0, p0, Lcom/alensw/cloud/sync/t;->b:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, Lcom/alensw/cloud/sync/t;->c:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-wide v0, p0, Lcom/alensw/cloud/sync/t;->d:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-wide v0, p0, Lcom/alensw/cloud/sync/t;->e:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-wide v0, p0, Lcom/alensw/cloud/sync/t;->f:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget v0, p0, Lcom/alensw/cloud/sync/t;->g:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, Lcom/alensw/cloud/sync/t;->h:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, Lcom/alensw/cloud/sync/t;->i:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, Lcom/alensw/cloud/sync/t;->j:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, Lcom/alensw/cloud/sync/t;->k:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/alensw/cloud/sync/t;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/alensw/cloud/sync/t;->j:I

    iput v1, p0, Lcom/alensw/cloud/sync/t;->k:I

    const-string v0, ""

    iput-object v0, p0, Lcom/alensw/cloud/sync/t;->l:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public a()Z
    .locals 2

    iget v0, p0, Lcom/alensw/cloud/sync/t;->g:I

    iget v1, p0, Lcom/alensw/cloud/sync/t;->h:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/alensw/cloud/sync/t;->i:I

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/alensw/cloud/sync/t;->j:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
