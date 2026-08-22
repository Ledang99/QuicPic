.class Lcom/alensw/PicFolder/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/b/k/k;


# instance fields
.field final synthetic a:Lcom/alensw/PicFolder/CloudProvider;

.field private final b:Lcom/alensw/PicFolder/c;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Lcom/alensw/PicFolder/b;


# direct methods
.method public constructor <init>(Lcom/alensw/PicFolder/CloudProvider;Lcom/alensw/PicFolder/c;Ljava/lang/String;I)V
    .locals 3

    iput-object p1, p0, Lcom/alensw/PicFolder/g;->a:Lcom/alensw/PicFolder/CloudProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alensw/PicFolder/b;

    iget-object v1, p0, Lcom/alensw/PicFolder/g;->a:Lcom/alensw/PicFolder/CloudProvider;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alensw/PicFolder/b;-><init>(Lcom/alensw/PicFolder/CloudProvider;Lcom/alensw/PicFolder/a;)V

    iput-object v0, p0, Lcom/alensw/PicFolder/g;->e:Lcom/alensw/PicFolder/b;

    iput-object p2, p0, Lcom/alensw/PicFolder/g;->b:Lcom/alensw/PicFolder/c;

    iput-object p3, p0, Lcom/alensw/PicFolder/g;->c:Ljava/lang/String;

    iput p4, p0, Lcom/alensw/PicFolder/g;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/g;->e:Lcom/alensw/PicFolder/b;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/b;->a()V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()Ljava/io/File;
    .locals 11

    const/4 v7, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alensw/PicFolder/g;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/alensw/PicFolder/CloudProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/PicFolder/g;->b:Lcom/alensw/PicFolder/c;

    invoke-virtual {v2, v1}, Lcom/alensw/PicFolder/c;->a(Ljava/lang/String;)Lcom/alensw/PicFolder/e;

    move-result-object v10

    iget v2, p0, Lcom/alensw/PicFolder/g;->d:I

    if-lez v2, :cond_0

    const/4 v2, 0x1

    move v9, v2

    :goto_0
    if-eqz v9, :cond_1

    iget-object v3, v10, Lcom/alensw/PicFolder/e;->b:Ljava/lang/String;

    :goto_1
    move v8, v0

    :goto_2
    const/4 v0, 0x2

    if-ge v8, v0, :cond_6

    :try_start_0
    iget-object v0, p0, Lcom/alensw/PicFolder/g;->b:Lcom/alensw/PicFolder/c;

    iget-object v0, v0, Lcom/alensw/PicFolder/c;->d:Lcom/alensw/cloud/a/ay;

    invoke-virtual {v0}, Lcom/alensw/cloud/a/ay;->f()Ljava/io/File;
    :try_end_0
    .catch Lcom/alensw/cloud/a/bz; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alensw/b/e/a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    if-eqz v9, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/alensw/PicFolder/g;->b:Lcom/alensw/PicFolder/c;

    iget-object v0, v0, Lcom/alensw/PicFolder/c;->e:Lcom/alensw/cloud/a/bv;

    iget v2, p0, Lcom/alensw/PicFolder/g;->d:I

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alensw/PicFolder/g;->e:Lcom/alensw/PicFolder/b;

    invoke-virtual/range {v0 .. v5}, Lcom/alensw/cloud/a/bv;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/f;)V

    :goto_3
    iget-object v0, p0, Lcom/alensw/PicFolder/g;->b:Lcom/alensw/PicFolder/c;

    iget-object v0, v0, Lcom/alensw/PicFolder/c;->d:Lcom/alensw/cloud/a/ay;

    iget v2, p0, Lcom/alensw/PicFolder/g;->d:I

    invoke-static {v1, v2}, Lcom/alensw/PicFolder/CloudProvider;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, v10, Lcom/alensw/PicFolder/e;->c:J

    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/alensw/cloud/a/ay;->a(Ljava/lang/String;JLjava/io/File;)V
    :try_end_1
    .catch Lcom/alensw/cloud/a/bz; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alensw/b/e/a; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    return-object v6

    :cond_0
    move v9, v0

    goto :goto_0

    :cond_1
    iget-object v3, v10, Lcom/alensw/PicFolder/e;->a:Ljava/lang/String;

    goto :goto_1

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/alensw/PicFolder/g;->b:Lcom/alensw/PicFolder/c;

    iget-object v0, v0, Lcom/alensw/PicFolder/c;->e:Lcom/alensw/cloud/a/bv;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/alensw/PicFolder/g;->e:Lcom/alensw/PicFolder/b;

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/alensw/cloud/a/bv;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/f;)V
    :try_end_2
    .catch Lcom/alensw/cloud/a/bz; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/alensw/b/e/a; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/alensw/PicFolder/g;->a:Lcom/alensw/PicFolder/CloudProvider;

    iget-object v4, p0, Lcom/alensw/PicFolder/g;->b:Lcom/alensw/PicFolder/c;

    invoke-static {v2, v4, v0, v7}, Lcom/alensw/PicFolder/CloudProvider;->a(Lcom/alensw/PicFolder/CloudProvider;Lcom/alensw/PicFolder/c;Lcom/alensw/cloud/a/bz;Lcom/alensw/b/e/f;)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lcom/alensw/cloud/a/bz;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    move-object v1, v7

    :goto_4
    const-string v2, "CloudProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download cancelled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alensw/PicFolder/g;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_4
    throw v0

    :catch_2
    move-exception v0

    move-object v6, v7

    :goto_5
    const-string v1, "CloudProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alensw/PicFolder/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_5
    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download gave up: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/PicFolder/g;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v1, v6

    goto :goto_4
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/PicFolder/g;->c()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/alensw/PicFolder/g;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/alensw/PicFolder/g;

    iget-object v1, p0, Lcom/alensw/PicFolder/g;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/alensw/PicFolder/g;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/alensw/PicFolder/g;->d:I

    iget v2, p1, Lcom/alensw/PicFolder/g;->d:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/alensw/PicFolder/g;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/alensw/PicFolder/g;->d:I

    add-int/2addr v0, v1

    return v0
.end method
