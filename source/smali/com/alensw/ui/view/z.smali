.class public abstract Lcom/alensw/ui/view/z;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/util/HashMap;

.field private final d:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput p1, p0, Lcom/alensw/ui/view/z;->a:I

    iput p2, p0, Lcom/alensw/ui/view/z;->b:I

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/ui/view/z;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/ui/view/z;->d:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Landroid/widget/ImageView;Lcom/alensw/b/h/h;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alensw/b/h/h;->l()Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/alensw/b/h/h;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/alensw/b/h/h;

    invoke-virtual {v0}, Lcom/alensw/b/h/h;->m()I

    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/alensw/b/h/h;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/alensw/b/h/h;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract a(ILandroid/view/View;)Landroid/net/Uri;
.end method

.method public abstract a(ILandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public a(Landroid/net/Uri;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/z;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/view/z;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/alensw/ui/view/z;->a(Landroid/widget/ImageView;Lcom/alensw/b/h/h;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/view/z;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/alensw/ui/view/z;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-nez p2, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/alensw/ui/view/z;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget v0, p0, Lcom/alensw/ui/view/z;->a:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, p0, Lcom/alensw/ui/view/z;->b:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/alensw/ui/view/z;->a(ILandroid/view/View;)Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_4

    if-eqz v0, :cond_1

    invoke-static {v0, v2}, Lcom/alensw/ui/view/z;->a(Landroid/widget/ImageView;Lcom/alensw/b/h/h;)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-object p2

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/alensw/ui/view/z;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alensw/bean/CommonFile;

    if-nez v2, :cond_5

    invoke-static {v5}, Lcom/alensw/bean/UriFile;->a(Landroid/net/Uri;)Lcom/alensw/bean/CommonFile;

    move-result-object v2

    iget-object v3, p0, Lcom/alensw/ui/view/z;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move-object v3, v2

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/alensw/ui/view/z;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/alensw/PicFolder/QuickApp;->w:Lcom/alensw/b/a/a;

    invoke-virtual {v2, v3}, Lcom/alensw/b/a/a;->b(Ljava/lang/Object;)Lcom/alensw/b/a/c;

    move-result-object v2

    check-cast v2, Lcom/alensw/b/h/h;

    invoke-static {v0, v2}, Lcom/alensw/ui/view/z;->a(Landroid/widget/ImageView;Lcom/alensw/b/h/h;)V

    if-nez v2, :cond_6

    sget-object v2, Lcom/alensw/PicFolder/QuickApp;->t:Lcom/alensw/a/ah;

    new-instance v6, Lcom/alensw/ui/view/aa;

    invoke-direct {v6, p0, v0, v5}, Lcom/alensw/ui/view/aa;-><init>(Lcom/alensw/ui/view/z;Landroid/widget/ImageView;Landroid/net/Uri;)V

    invoke-virtual {v2, v3, v4, v6}, Lcom/alensw/a/ah;->a(Lcom/alensw/bean/CommonFile;ZLcom/alensw/a/aj;)V

    :cond_6
    if-eqz v1, :cond_2

    invoke-virtual {v3}, Lcom/alensw/bean/CommonFile;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
