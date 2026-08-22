.class Lcom/alensw/transfer/ay;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/view/aj;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/ac;

.field private b:I

.field private final c:Lcom/alensw/a/aj;


# direct methods
.method private constructor <init>(Lcom/alensw/transfer/ac;)V
    .locals 1

    iput-object p1, p0, Lcom/alensw/transfer/ay;->a:Lcom/alensw/transfer/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alensw/transfer/az;

    invoke-direct {v0, p0}, Lcom/alensw/transfer/az;-><init>(Lcom/alensw/transfer/ay;)V

    iput-object v0, p0, Lcom/alensw/transfer/ay;->c:Lcom/alensw/a/aj;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alensw/transfer/ac;Lcom/alensw/transfer/ad;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alensw/transfer/ay;-><init>(Lcom/alensw/transfer/ac;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/ay;->a:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->a(Lcom/alensw/transfer/ac;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(III)V
    .locals 7

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_3

    if-ltz p3, :cond_2

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/alensw/transfer/ay;->b:I

    if-eq v0, p3, :cond_0

    iput p3, p0, Lcom/alensw/transfer/ay;->b:I

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->t:Lcom/alensw/a/ah;

    invoke-virtual {v0, v2}, Lcom/alensw/a/ah;->a(Z)V

    :cond_0
    sub-int v4, p2, p1

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_7

    if-eqz v1, :cond_5

    add-int v0, p1, v3

    :goto_2
    iget-object v5, p0, Lcom/alensw/transfer/ay;->a:Lcom/alensw/transfer/ac;

    invoke-static {v5}, Lcom/alensw/transfer/ac;->a(Lcom/alensw/transfer/ac;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/bean/CommonFile;

    if-eqz v0, :cond_1

    sget-object v5, Lcom/alensw/PicFolder/QuickApp;->w:Lcom/alensw/b/a/a;

    invoke-virtual {v5, v0}, Lcom/alensw/b/a/a;->a(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_1
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/alensw/transfer/ay;->b:I

    if-ltz v1, :cond_4

    move v1, v0

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    add-int/lit8 v0, p2, -0x1

    sub-int/2addr v0, v3

    goto :goto_2

    :cond_6
    sget-object v5, Lcom/alensw/PicFolder/QuickApp;->t:Lcom/alensw/a/ah;

    iget-object v6, p0, Lcom/alensw/transfer/ay;->c:Lcom/alensw/a/aj;

    invoke-virtual {v5, v0, v2, v6}, Lcom/alensw/a/ah;->a(Lcom/alensw/bean/CommonFile;ZLcom/alensw/a/aj;)V

    goto :goto_3

    :cond_7
    return-void
.end method

.method public a(IIZ)V
    .locals 0

    return-void
.end method

.method public a(ILandroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 0

    return-void
.end method

.method public a(ILcom/alensw/ui/view/ak;)V
    .locals 3

    iget-object v0, p0, Lcom/alensw/transfer/ay;->a:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->a(Lcom/alensw/transfer/ac;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/bean/CommonFile;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->w:Lcom/alensw/b/a/a;

    invoke-virtual {v1, v0}, Lcom/alensw/b/a/a;->b(Ljava/lang/Object;)Lcom/alensw/b/a/c;

    move-result-object v1

    check-cast v1, Lcom/alensw/b/h/h;

    iput-object v1, p2, Lcom/alensw/ui/view/ak;->a:Lcom/alensw/b/h/h;

    iget-object v1, p2, Lcom/alensw/ui/view/ak;->a:Lcom/alensw/b/h/h;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/alensw/ui/view/ak;->a:Lcom/alensw/b/h/h;

    invoke-virtual {v1}, Lcom/alensw/b/h/h;->l()Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->h()C

    move-result v1

    const/16 v2, 0x49

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/alensw/ui/view/ak;->c:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 0

    return-void
.end method
