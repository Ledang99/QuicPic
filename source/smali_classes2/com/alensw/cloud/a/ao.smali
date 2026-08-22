.class Lcom/alensw/cloud/a/ao;
.super Lcom/alensw/cloud/a/by;


# instance fields
.field final synthetic a:Landroid/content/ContentValues;

.field final synthetic b:Lcom/alensw/cloud/a/am;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/a/am;ILcom/alensw/b/e/f;Landroid/content/ContentValues;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a/ao;->b:Lcom/alensw/cloud/a/am;

    iput-object p4, p0, Lcom/alensw/cloud/a/ao;->a:Landroid/content/ContentValues;

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/cloud/a/by;-><init>(Lcom/alensw/cloud/a/bv;ILcom/alensw/b/e/f;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/a/a/a/h;)V
    .locals 2

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    iget-object v0, p0, Lcom/alensw/cloud/a/ao;->b:Lcom/alensw/cloud/a/am;

    iget-object v1, p0, Lcom/alensw/cloud/a/ao;->a:Landroid/content/ContentValues;

    invoke-static {v0, p1, v1}, Lcom/alensw/cloud/a/am;->a(Lcom/alensw/cloud/a/am;Lcom/a/a/a/h;Landroid/content/ContentValues;)V

    return-void
.end method
