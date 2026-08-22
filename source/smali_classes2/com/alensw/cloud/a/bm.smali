.class Lcom/alensw/cloud/a/bm;
.super Lcom/alensw/cloud/a/by;


# instance fields
.field final synthetic a:Lcom/alensw/b/e/i;

.field final synthetic b:J

.field final synthetic c:Lcom/alensw/cloud/a/bh;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/a/bh;ILcom/alensw/b/e/f;Lcom/alensw/b/e/i;J)V
    .locals 1

    iput-object p1, p0, Lcom/alensw/cloud/a/bm;->c:Lcom/alensw/cloud/a/bh;

    iput-object p4, p0, Lcom/alensw/cloud/a/bm;->a:Lcom/alensw/b/e/i;

    iput-wide p5, p0, Lcom/alensw/cloud/a/bm;->b:J

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/cloud/a/by;-><init>(Lcom/alensw/cloud/a/bv;ILcom/alensw/b/e/f;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/net/HttpURLConnection;)V
    .locals 10

    iget-object v0, p0, Lcom/alensw/cloud/a/bm;->a:Lcom/alensw/b/e/i;

    iget-object v2, v0, Lcom/alensw/b/e/i;->c:Ljava/lang/String;

    const/high16 v3, 0xa00000

    iget-wide v4, p0, Lcom/alensw/cloud/a/bm;->b:J

    iget-object v0, p0, Lcom/alensw/cloud/a/bm;->a:Lcom/alensw/b/e/i;

    iget-wide v6, v0, Lcom/alensw/b/e/i;->a:J

    iget-object v0, p0, Lcom/alensw/cloud/a/bm;->a:Lcom/alensw/b/e/i;

    iget-object v8, v0, Lcom/alensw/b/e/i;->e:Ljava/io/InputStream;

    iget-object v9, p0, Lcom/alensw/cloud/a/bm;->i:Lcom/alensw/b/e/f;

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;IJJLjava/io/InputStream;Lcom/alensw/b/e/f;)V

    return-void
.end method
