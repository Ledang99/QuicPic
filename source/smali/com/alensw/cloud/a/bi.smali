.class Lcom/alensw/cloud/a/bi;
.super Lcom/alensw/cloud/a/by;


# instance fields
.field final synthetic a:Lcom/alensw/cloud/a/az;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alensw/cloud/a/bh;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/a/bh;ILcom/alensw/b/e/f;Lcom/alensw/cloud/a/az;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a/bi;->c:Lcom/alensw/cloud/a/bh;

    iput-object p4, p0, Lcom/alensw/cloud/a/bi;->a:Lcom/alensw/cloud/a/az;

    iput-object p5, p0, Lcom/alensw/cloud/a/bi;->b:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/cloud/a/by;-><init>(Lcom/alensw/cloud/a/bv;ILcom/alensw/b/e/f;)V

    return-void
.end method


# virtual methods
.method protected a(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    iget-object v0, p0, Lcom/alensw/cloud/a/bi;->a:Lcom/alensw/cloud/a/az;

    invoke-virtual {v0}, Lcom/alensw/cloud/a/az;->size()I

    move-result v1

    iget-object v0, p0, Lcom/alensw/cloud/a/bi;->c:Lcom/alensw/cloud/a/bh;

    iget-object v2, p0, Lcom/alensw/cloud/a/bi;->a:Lcom/alensw/cloud/a/az;

    invoke-static {v0, p1, v2}, Lcom/alensw/cloud/a/bh;->a(Lcom/alensw/cloud/a/bh;Lorg/xmlpull/v1/XmlPullParser;Lcom/alensw/cloud/a/az;)V

    iget-object v0, p0, Lcom/alensw/cloud/a/bi;->a:Lcom/alensw/cloud/a/az;

    invoke-virtual {v0}, Lcom/alensw/cloud/a/az;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    iget-object v2, p0, Lcom/alensw/cloud/a/bi;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/alensw/cloud/a/bi;->a:Lcom/alensw/cloud/a/az;

    invoke-virtual {v0, v1}, Lcom/alensw/cloud/a/az;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v3, "document_id"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/a/bi;->a:Lcom/alensw/cloud/a/az;

    invoke-virtual {v0, v1}, Lcom/alensw/cloud/a/az;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method
