.class public Lcom/alensw/a/d;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:C

.field public d:I

.field public e:I

.field public f:J


# direct methods
.method public constructor <init>(Ljava/io/File;CI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/a/d;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/a/d;->b:Ljava/lang/String;

    iput-char p2, p0, Lcom/alensw/a/d;->c:C

    iput p3, p0, Lcom/alensw/a/d;->d:I

    iput p3, p0, Lcom/alensw/a/d;->e:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;CIIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alensw/a/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alensw/a/d;->b:Ljava/lang/String;

    iput-char p3, p0, Lcom/alensw/a/d;->c:C

    iput p4, p0, Lcom/alensw/a/d;->d:I

    if-eqz p5, :cond_0

    :goto_0
    iput p5, p0, Lcom/alensw/a/d;->e:I

    iput-wide p6, p0, Lcom/alensw/a/d;->f:J

    return-void

    :cond_0
    move p5, p4

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alensw/a/d;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alensw/a/d;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alensw/b/l/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/alensw/a/d;)V
    .locals 1

    iget-object v0, p1, Lcom/alensw/a/d;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/alensw/a/d;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/alensw/a/d;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/alensw/a/d;->b:Ljava/lang/String;

    iget-char v0, p1, Lcom/alensw/a/d;->c:C

    iput-char v0, p0, Lcom/alensw/a/d;->c:C

    iget v0, p1, Lcom/alensw/a/d;->d:I

    iput v0, p0, Lcom/alensw/a/d;->d:I

    iget v0, p1, Lcom/alensw/a/d;->e:I

    iput v0, p0, Lcom/alensw/a/d;->e:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/alensw/a/d;

    if-eqz v2, :cond_4

    check-cast p1, Lcom/alensw/a/d;

    iget v2, p0, Lcom/alensw/a/d;->d:I

    iget v3, p1, Lcom/alensw/a/d;->d:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/alensw/a/d;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/alensw/a/d;->a:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/alensw/a/d;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/alensw/a/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/alensw/a/d;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/alensw/a/d;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/alensw/a/d;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/alensw/a/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/alensw/a/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/alensw/a/d;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/alensw/a/d;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alensw/a/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
