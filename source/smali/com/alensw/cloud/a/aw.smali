.class public Lcom/alensw/cloud/a/aw;
.super Lcom/alensw/cloud/a/by;


# instance fields
.field final synthetic f:Lcom/alensw/cloud/a/as;


# direct methods
.method public constructor <init>(Lcom/alensw/cloud/a/as;ILcom/alensw/b/e/f;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a/aw;->f:Lcom/alensw/cloud/a/as;

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/cloud/a/by;-><init>(Lcom/alensw/cloud/a/bv;ILcom/alensw/b/e/f;)V

    return-void
.end method

.method public constructor <init>(Lcom/alensw/cloud/a/as;Ljava/lang/String;Lcom/alensw/b/e/f;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a/aw;->f:Lcom/alensw/cloud/a/as;

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/cloud/a/by;-><init>(Lcom/alensw/cloud/a/bv;Ljava/lang/String;Lcom/alensw/b/e/f;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;JLjava/io/InputStream;)V
    .locals 2

    const/16 v0, 0xca

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/a/aw;->f:Lcom/alensw/cloud/a/as;

    iget-object v1, p0, Lcom/alensw/cloud/a/aw;->i:Lcom/alensw/b/e/f;

    invoke-static {p6, p3, v1}, Lcom/alensw/b/e/b;->a(Ljava/io/InputStream;Ljava/lang/String;Lcom/alensw/b/e/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alensw/cloud/a/as;->a(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/alensw/cloud/a/by;->a(ILjava/lang/String;Ljava/lang/String;JLjava/io/InputStream;)V

    goto :goto_0
.end method
