.class Lcom/alensw/cloud/a/ck;
.super Lcom/alensw/cloud/a/by;


# instance fields
.field final synthetic a:Lcom/alensw/b/e/i;

.field final synthetic b:Ljava/io/InputStream;

.field final synthetic c:Lcom/alensw/cloud/a/cc;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/a/cc;ILcom/alensw/b/e/f;Lcom/alensw/b/e/i;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a/ck;->c:Lcom/alensw/cloud/a/cc;

    iput-object p4, p0, Lcom/alensw/cloud/a/ck;->a:Lcom/alensw/b/e/i;

    iput-object p5, p0, Lcom/alensw/cloud/a/ck;->b:Ljava/io/InputStream;

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/cloud/a/by;-><init>(Lcom/alensw/cloud/a/bv;ILcom/alensw/b/e/f;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/net/HttpURLConnection;)V
    .locals 3

    iget-object v0, p0, Lcom/alensw/cloud/a/ck;->a:Lcom/alensw/b/e/i;

    iget-object v0, v0, Lcom/alensw/b/e/i;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/alensw/cloud/a/ck;->b:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/alensw/cloud/a/ck;->i:Lcom/alensw/b/e/f;

    invoke-static {p1, v0, v1, v2}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/io/InputStream;Lcom/alensw/b/e/f;)V

    return-void
.end method
