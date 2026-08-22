.class Lcom/alensw/cloud/a/cp;
.super Lcom/alensw/cloud/a/by;


# instance fields
.field final synthetic a:Landroid/content/ContentValues;

.field final synthetic b:Lcom/alensw/cloud/a/cm;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/a/cm;ILcom/alensw/b/e/f;Landroid/content/ContentValues;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a/cp;->b:Lcom/alensw/cloud/a/cm;

    iput-object p4, p0, Lcom/alensw/cloud/a/cp;->a:Landroid/content/ContentValues;

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

    :goto_0
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->c:Lcom/a/a/a/l;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/a/a/a/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    const-string v1, "data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/a/cp;->b:Lcom/alensw/cloud/a/cm;

    iget-object v1, p0, Lcom/alensw/cloud/a/cp;->a:Landroid/content/ContentValues;

    invoke-static {v0, p1, v1}, Lcom/alensw/cloud/a/cm;->a(Lcom/alensw/cloud/a/cm;Lcom/a/a/a/h;Landroid/content/ContentValues;)C

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/a/a/a/h;->b()Lcom/a/a/a/h;

    goto :goto_0

    :cond_1
    return-void
.end method
