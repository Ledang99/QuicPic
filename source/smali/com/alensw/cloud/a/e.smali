.class Lcom/alensw/cloud/a/e;
.super Lcom/alensw/cloud/a/by;


# instance fields
.field final synthetic a:Ljava/lang/StringBuilder;

.field final synthetic b:Landroid/content/ContentValues;

.field final synthetic c:Lcom/alensw/cloud/a/a;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/a/a;ILcom/alensw/b/e/f;Ljava/lang/StringBuilder;Landroid/content/ContentValues;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a/e;->c:Lcom/alensw/cloud/a/a;

    iput-object p4, p0, Lcom/alensw/cloud/a/e;->a:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcom/alensw/cloud/a/e;->b:Landroid/content/ContentValues;

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/cloud/a/by;-><init>(Lcom/alensw/cloud/a/bv;ILcom/alensw/b/e/f;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/a/a/a/h;)V
    .locals 2

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->b:Lcom/a/a/a/l;

    invoke-static {v0, v1}, Lcom/alensw/cloud/a/bv;->a(Lcom/a/a/a/l;Lcom/a/a/a/l;)V

    iget-object v0, p0, Lcom/alensw/cloud/a/e;->c:Lcom/alensw/cloud/a/a;

    iget-object v1, p0, Lcom/alensw/cloud/a/e;->b:Landroid/content/ContentValues;

    invoke-static {v0, p1, v1}, Lcom/alensw/cloud/a/a;->a(Lcom/alensw/cloud/a/a;Lcom/a/a/a/h;Landroid/content/ContentValues;)C

    return-void
.end method

.method public a(Ljava/net/HttpURLConnection;)V
    .locals 2

    const-string v0, "application/json; charset=utf8"

    iget-object v1, p0, Lcom/alensw/cloud/a/e;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
