.class Lcom/alensw/cloud/a/k;
.super Lcom/alensw/cloud/a/by;


# instance fields
.field final synthetic a:Landroid/content/ContentValues;

.field final synthetic b:Lcom/alensw/cloud/a/i;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/a/i;ILcom/alensw/b/e/f;Landroid/content/ContentValues;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a/k;->b:Lcom/alensw/cloud/a/i;

    iput-object p4, p0, Lcom/alensw/cloud/a/k;->a:Landroid/content/ContentValues;

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/cloud/a/by;-><init>(Lcom/alensw/cloud/a/bv;ILcom/alensw/b/e/f;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/a/a/a/h;)V
    .locals 3

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->b:Lcom/a/a/a/l;

    invoke-static {v0, v1}, Lcom/alensw/cloud/a/bv;->a(Lcom/a/a/a/l;Lcom/a/a/a/l;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->c:Lcom/a/a/a/l;

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/a/a/a/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    const-string v1, "list"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/a/a/a/h;->c()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->d:Lcom/a/a/a/l;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v1

    sget-object v2, Lcom/a/a/a/l;->e:Lcom/a/a/a/l;

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/alensw/cloud/a/k;->b:Lcom/alensw/cloud/a/i;

    iget-object v2, p0, Lcom/alensw/cloud/a/k;->a:Landroid/content/ContentValues;

    invoke-static {v1, p1, v2}, Lcom/alensw/cloud/a/i;->a(Lcom/alensw/cloud/a/i;Lcom/a/a/a/h;Landroid/content/ContentValues;)C

    :goto_2
    invoke-virtual {p0}, Lcom/alensw/cloud/a/k;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/a/a/a/h;->b()Lcom/a/a/a/h;

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/a/a/a/h;->b()Lcom/a/a/a/h;

    goto :goto_0

    :cond_3
    return-void
.end method
