.class Lcom/alensw/cloud/a/bj;
.super Lcom/alensw/cloud/a/by;


# instance fields
.field final synthetic a:Landroid/content/ContentValues;

.field final synthetic b:Lcom/alensw/cloud/a/bh;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/a/bh;ILcom/alensw/b/e/f;Landroid/content/ContentValues;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a/bj;->b:Lcom/alensw/cloud/a/bh;

    iput-object p4, p0, Lcom/alensw/cloud/a/bj;->a:Landroid/content/ContentValues;

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/cloud/a/by;-><init>(Lcom/alensw/cloud/a/bv;ILcom/alensw/b/e/f;)V

    return-void
.end method


# virtual methods
.method protected a(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/cloud/a/bj;->b:Lcom/alensw/cloud/a/bh;

    iget-object v1, p0, Lcom/alensw/cloud/a/bj;->a:Landroid/content/ContentValues;

    invoke-static {v0, p1, v1}, Lcom/alensw/cloud/a/bh;->a(Lcom/alensw/cloud/a/bh;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/ContentValues;)C

    return-void
.end method
