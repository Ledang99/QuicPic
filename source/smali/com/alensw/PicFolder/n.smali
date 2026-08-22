.class Lcom/alensw/PicFolder/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/alensw/PicFolder/CropActivity;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/CropActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/n;->c:Lcom/alensw/PicFolder/CropActivity;

    iput-object p2, p0, Lcom/alensw/PicFolder/n;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/alensw/PicFolder/n;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 11

    const/16 v2, 0x7d0

    const/16 v10, 0x20

    const-wide/32 v8, 0x7fffffff

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    const/16 v0, 0x3e8

    if-lt v7, v0, :cond_2

    if-ge v7, v2, :cond_2

    add-int/lit16 v0, v7, -0x3e8

    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/alensw/PicFolder/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/alensw/PicFolder/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    and-long v4, v2, v8

    long-to-int v4, v4

    shr-long/2addr v2, v10

    and-long/2addr v2, v8

    long-to-int v5, v2

    move v3, v1

    move v2, v1

    :goto_0
    iget-object v0, p0, Lcom/alensw/PicFolder/n;->c:Lcom/alensw/PicFolder/CropActivity;

    const/16 v8, 0x3e7

    if-eq v7, v8, :cond_0

    move v1, v6

    :cond_0
    invoke-virtual/range {v0 .. v6}, Lcom/alensw/PicFolder/CropActivity;->a(ZIIIIZ)V

    :goto_1
    return v6

    :cond_1
    iget-object v0, p0, Lcom/alensw/PicFolder/n;->c:Lcom/alensw/PicFolder/CropActivity;

    const v1, 0x7f0a0061

    const-string v2, " : "

    iget-object v3, p0, Lcom/alensw/PicFolder/n;->c:Lcom/alensw/PicFolder/CropActivity;

    invoke-static {v3}, Lcom/alensw/PicFolder/CropActivity;->b(Lcom/alensw/PicFolder/CropActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/alensw/PicFolder/n;->c:Lcom/alensw/PicFolder/CropActivity;

    invoke-static {v4}, Lcom/alensw/PicFolder/CropActivity;->c(Lcom/alensw/PicFolder/CropActivity;)I

    move-result v4

    new-instance v5, Lcom/alensw/PicFolder/o;

    invoke-direct {v5, p0}, Lcom/alensw/PicFolder/o;-><init>(Lcom/alensw/PicFolder/n;)V

    invoke-static/range {v0 .. v5}, Lcom/alensw/ui/a/f;->a(Landroid/content/Context;ILjava/lang/CharSequence;IILcom/alensw/ui/a/t;)V

    goto :goto_1

    :cond_2
    if-lt v7, v2, :cond_4

    add-int/lit16 v0, v7, -0x7d0

    if-ltz v0, :cond_3

    iget-object v2, p0, Lcom/alensw/PicFolder/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/alensw/PicFolder/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    and-long v2, v4, v8

    long-to-int v2, v2

    shr-long/2addr v4, v10

    and-long/2addr v4, v8

    long-to-int v3, v4

    move v5, v1

    move v4, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alensw/PicFolder/n;->c:Lcom/alensw/PicFolder/CropActivity;

    const v1, 0x7f0a0090

    const-string v2, " x "

    iget-object v3, p0, Lcom/alensw/PicFolder/n;->c:Lcom/alensw/PicFolder/CropActivity;

    invoke-static {v3}, Lcom/alensw/PicFolder/CropActivity;->d(Lcom/alensw/PicFolder/CropActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/alensw/PicFolder/n;->c:Lcom/alensw/PicFolder/CropActivity;

    invoke-static {v4}, Lcom/alensw/PicFolder/CropActivity;->e(Lcom/alensw/PicFolder/CropActivity;)I

    move-result v4

    new-instance v5, Lcom/alensw/PicFolder/p;

    invoke-direct {v5, p0}, Lcom/alensw/PicFolder/p;-><init>(Lcom/alensw/PicFolder/n;)V

    invoke-static/range {v0 .. v5}, Lcom/alensw/ui/a/f;->a(Landroid/content/Context;ILjava/lang/CharSequence;IILcom/alensw/ui/a/t;)V

    goto :goto_1

    :cond_4
    move v5, v1

    move v4, v1

    move v3, v1

    move v2, v1

    goto :goto_0
.end method
