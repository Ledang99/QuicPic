.class Lcom/alensw/cloud/a/bc;
.super Lcom/alensw/cloud/a/by;


# instance fields
.field final synthetic a:Landroid/content/ContentValues;

.field final synthetic b:Lcom/alensw/cloud/a/ba;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/a/ba;ILcom/alensw/b/e/f;Landroid/content/ContentValues;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a/bc;->b:Lcom/alensw/cloud/a/ba;

    iput-object p4, p0, Lcom/alensw/cloud/a/bc;->a:Landroid/content/ContentValues;

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

    iget-object v0, p0, Lcom/alensw/cloud/a/bc;->b:Lcom/alensw/cloud/a/ba;

    iget-object v1, p0, Lcom/alensw/cloud/a/bc;->a:Landroid/content/ContentValues;

    invoke-static {v0, p1, v1}, Lcom/alensw/cloud/a/ba;->a(Lcom/alensw/cloud/a/ba;Lcom/a/a/a/h;Landroid/content/ContentValues;)V

    return-void
.end method
