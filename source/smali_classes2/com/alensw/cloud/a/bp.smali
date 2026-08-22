.class Lcom/alensw/cloud/a/bp;
.super Lcom/alensw/cloud/a/by;


# instance fields
.field final synthetic a:Landroid/content/ContentValues;

.field final synthetic b:[Z

.field final synthetic c:[I

.field final synthetic d:Lcom/alensw/cloud/a/bn;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/a/bn;ILcom/alensw/b/e/f;Landroid/content/ContentValues;[Z[I)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a/bp;->d:Lcom/alensw/cloud/a/bn;

    iput-object p4, p0, Lcom/alensw/cloud/a/bp;->a:Landroid/content/ContentValues;

    iput-object p5, p0, Lcom/alensw/cloud/a/bp;->b:[Z

    iput-object p6, p0, Lcom/alensw/cloud/a/bp;->c:[I

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/cloud/a/by;-><init>(Lcom/alensw/cloud/a/bv;ILcom/alensw/b/e/f;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/a/a/a/h;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->b:Lcom/a/a/a/l;

    invoke-static {v0, v1}, Lcom/alensw/cloud/a/bv;->a(Lcom/a/a/a/l;Lcom/a/a/a/l;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->c:Lcom/a/a/a/l;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/a/a/a/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    const-string v1, "feed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->c:Lcom/a/a/a/l;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/a/a/a/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    const-string v1, "entry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/a/a/a/h;->c()Lcom/a/a/a/l;

    move-result-object v1

    sget-object v2, Lcom/a/a/a/l;->d:Lcom/a/a/a/l;

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/a/a/a/h;->a()Lcom/a/a/a/l;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/l;->e:Lcom/a/a/a/l;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/alensw/cloud/a/bp;->d:Lcom/alensw/cloud/a/bn;

    const-string v1, "/"

    iget-object v2, p0, Lcom/alensw/cloud/a/bp;->a:Landroid/content/ContentValues;

    invoke-static {v0, v1, p1, v2}, Lcom/alensw/cloud/a/bn;->a(Lcom/alensw/cloud/a/bn;Ljava/lang/String;Lcom/a/a/a/h;Landroid/content/ContentValues;)V

    iget-object v0, p0, Lcom/alensw/cloud/a/bp;->b:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v3

    :cond_2
    return-void

    :cond_3
    const-string v1, "openSearch$totalResults"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alensw/cloud/a/bp;->c:[I

    iget-object v1, p0, Lcom/alensw/cloud/a/bp;->d:Lcom/alensw/cloud/a/bn;

    invoke-static {v1, p1}, Lcom/alensw/cloud/a/bn;->a(Lcom/alensw/cloud/a/bn;Lcom/a/a/a/h;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/alensw/b/l/b;->a(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v3

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/a/a/a/h;->b()Lcom/a/a/a/h;

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/a/a/a/h;->b()Lcom/a/a/a/h;

    goto :goto_0
.end method
