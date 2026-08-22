.class public Lcom/alensw/ui/c/bf;
.super Lcom/alensw/ui/c/a;


# static fields
.field protected static final l:Ljava/util/HashMap;

.field public static final m:[Ljava/lang/String;


# instance fields
.field protected f:Lcom/alensw/ui/view/ImageGridView;

.field protected g:Lcom/alensw/a/e;

.field protected h:I

.field protected i:I

.field protected j:I

.field protected final k:Ljava/util/LinkedHashSet;

.field private n:I

.field private final o:Landroid/graphics/Rect;

.field private final p:Lcom/alensw/a/aj;

.field private final q:Lcom/alensw/ui/view/aj;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/alensw/ui/c/bf;->l:Ljava/util/HashMap;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "%Y"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "%M"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "%D"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "%h"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "%m"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "%s"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alensw/ui/c/bf;->m:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/alensw/ui/c/a;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/ui/c/bf;->k:Ljava/util/LinkedHashSet;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/c/bf;->o:Landroid/graphics/Rect;

    new-instance v0, Lcom/alensw/ui/c/bp;

    invoke-direct {v0, p0}, Lcom/alensw/ui/c/bp;-><init>(Lcom/alensw/ui/c/bf;)V

    iput-object v0, p0, Lcom/alensw/ui/c/bf;->p:Lcom/alensw/a/aj;

    new-instance v0, Lcom/alensw/ui/c/bq;

    invoke-direct {v0, p0}, Lcom/alensw/ui/c/bq;-><init>(Lcom/alensw/ui/c/bf;)V

    iput-object v0, p0, Lcom/alensw/ui/c/bf;->q:Lcom/alensw/ui/view/aj;

    return-void
.end method

.method private a(Lcom/alensw/a/d;)V
    .locals 3

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->t:Lcom/alensw/a/ah;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alensw/ui/c/bf;->p:Lcom/alensw/a/aj;

    invoke-virtual {v0, p1, v1, v2}, Lcom/alensw/a/ah;->a(Lcom/alensw/a/d;ZLcom/alensw/a/aj;)V

    return-void
.end method

.method static synthetic a(Lcom/alensw/ui/c/bf;Lcom/alensw/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alensw/ui/c/bf;->a(Lcom/alensw/a/d;)V

    return-void
.end method


# virtual methods
.method public a(ZLandroid/graphics/RectF;)J
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-object v1, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v1, p1}, Lcom/alensw/ui/c/cx;->b(Z)J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3, p2}, Lcom/alensw/ui/view/ImageGridView;->a(ZJLandroid/graphics/RectF;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a()V
    .locals 5

    invoke-super {p0}, Lcom/alensw/ui/c/a;->a()V

    iget v0, p0, Lcom/alensw/ui/c/bf;->n:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->D:Landroid/view/View;

    iget-object v1, p0, Lcom/alensw/ui/c/bf;->D:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/alensw/ui/c/bf;->D:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/alensw/ui/c/bf;->n:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/alensw/ui/c/bf;->D:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/alensw/ui/c/bf;->D:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/ui/c/bf;->n:I

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    const-string v2, "horizontal_scroll"

    iget-object v3, p0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-boolean v3, v3, Lcom/alensw/ui/view/ImageGridView;->c:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alensw/ui/view/ImageGridView;->setHorizontal(Z)V

    iget v0, p0, Lcom/alensw/ui/c/bf;->h:I

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/bf;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->k()V

    :cond_1
    invoke-virtual {p0}, Lcom/alensw/ui/c/bf;->o()V

    return-void
.end method

.method public a(IIII)V
    .locals 5

    invoke-super {p0, p1, p2, p3, p4}, Lcom/alensw/ui/c/a;->a(IIII)V

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    iget-object v1, p0, Lcom/alensw/ui/c/bf;->o:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/cx;->a(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-object v1, p0, Lcom/alensw/ui/c/bf;->o:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/alensw/ui/c/bf;->o:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/alensw/ui/c/bf;->o:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/alensw/ui/c/bf;->o:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alensw/ui/view/ImageGridView;->setPadding(IIII)V

    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    iget v0, p0, Lcom/alensw/ui/c/bf;->h:I

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0, p2, p3}, Lcom/alensw/ui/c/cx;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->finish()V

    :cond_0
    return-void
.end method

.method protected a(ILcom/alensw/a/d;)V
    .locals 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    iget-object v1, p2, Lcom/alensw/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alensw/a/e;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, p2, Lcom/alensw/a/d;->b:Ljava/lang/String;

    iget-char v1, p2, Lcom/alensw/a/d;->c:C

    invoke-static {v0, v1}, Lcom/alensw/b/f/c;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    iget-object v1, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    iget v1, v1, Lcom/alensw/a/e;->c:I

    invoke-virtual {v0, v1}, Lcom/alensw/a/e;->e(I)Lcom/alensw/a/d;

    move-result-object v0

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    iget-object v1, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v1, p2}, Lcom/alensw/a/e;->a(Lcom/alensw/a/d;)I

    move-result v1

    iput v1, v0, Lcom/alensw/a/e;->c:I

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/c/cx;->c(I)Landroid/view/View;

    move-result-object v6

    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    new-instance v0, Lcom/alensw/ui/c/df;

    iget-object v1, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    iget-char v3, p2, Lcom/alensw/a/d;->c:C

    invoke-direct/range {v0 .. v5}, Lcom/alensw/ui/c/df;-><init>(Landroid/content/Context;Landroid/net/Uri;CLjava/lang/String;Lcom/alensw/b/h/k;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    iget v2, v2, Lcom/alensw/a/e;->c:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v2}, Lcom/alensw/a/e;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alensw/ui/c/by;

    invoke-direct {v2, p0, p2}, Lcom/alensw/ui/c/by;-><init>(Lcom/alensw/ui/c/bf;Lcom/alensw/a/d;)V

    invoke-virtual {v0, v1, v2}, Lcom/alensw/ui/c/df;->a(Ljava/lang/String;Lcom/alensw/ui/c/do;)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcom/alensw/ui/c/df;

    iget-object v1, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    iget-char v3, p2, Lcom/alensw/a/d;->c:C

    invoke-direct/range {v0 .. v5}, Lcom/alensw/ui/c/df;-><init>(Landroid/content/Context;Landroid/net/Uri;CLjava/lang/String;Lcom/alensw/b/h/k;)V

    invoke-virtual {v0, v6, v5}, Lcom/alensw/ui/c/df;->b(Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/alensw/ui/c/df;

    iget-object v1, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    iget-char v3, p2, Lcom/alensw/a/d;->c:C

    invoke-direct/range {v0 .. v5}, Lcom/alensw/ui/c/df;-><init>(Landroid/content/Context;Landroid/net/Uri;CLjava/lang/String;Lcom/alensw/b/h/k;)V

    invoke-virtual {v0, v6, v5}, Lcom/alensw/ui/c/df;->a(Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_0

    :sswitch_3
    sget-boolean v0, Lcom/alensw/ui/c/bf;->a:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alensw/ui/c/bf;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v0, p2}, Lcom/alensw/a/e;->a(Lcom/alensw/a/d;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/bf;->c(I)V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/alensw/ui/c/df;

    iget-object v1, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    iget-char v3, p2, Lcom/alensw/a/d;->c:C

    invoke-direct/range {v0 .. v5}, Lcom/alensw/ui/c/df;-><init>(Landroid/content/Context;Landroid/net/Uri;CLjava/lang/String;Lcom/alensw/b/h/k;)V

    invoke-virtual {v0, v6}, Lcom/alensw/ui/c/df;->b(Landroid/view/View;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090044 -> :sswitch_0
        0x7f090062 -> :sswitch_3
        0x7f090069 -> :sswitch_2
        0x7f09006a -> :sswitch_1
        0x7f09006c -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->s()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/alensw/ui/c/bf;->D:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    aget v4, v0, v6

    add-int/2addr v3, v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    aget v0, v0, v6

    iput v0, p0, Lcom/alensw/ui/c/bf;->n:I

    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_0

    const-string v1, "QuickPic.slide_show"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    const-class v2, Lcom/alensw/ui/c/dp;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/alensw/ui/c/cx;->a(Ljava/lang/Class;Landroid/content/Intent;Landroid/os/Bundle;)Lcom/alensw/ui/c/cu;

    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/ui/c/bf;->n:I

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/alensw/ui/c/a;->a(Landroid/os/Bundle;)V

    const v0, 0x7f030002

    invoke-super {p0, v0}, Lcom/alensw/ui/c/a;->h(I)V

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->E:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "current_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    :cond_0
    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->o:Lcom/alensw/a/x;

    iget-object v2, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v1, v2, v0}, Lcom/alensw/a/x;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/alensw/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    const v1, 0x7f0a0049

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/alensw/ui/c/bf;->E()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/bf;->E:Landroid/content/Intent;

    invoke-static {v0}, Lcom/alensw/ui/activity/p;->b(Landroid/content/Intent;)I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/c/bf;->h:I

    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/bf;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alensw/ui/c/bf;->c:Landroid/view/ViewGroup;

    const v0, 0x7f090005

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/bf;->f(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alensw/ui/view/ImageGridView;

    iput-object v0, p0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0, v3}, Lcom/alensw/ui/view/ImageGridView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    sget v1, Lcom/alensw/PicFolder/QuickApp;->h:I

    div-int/lit16 v1, v1, 0x140

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/ImageGridView;->setSpaceWidth(I)V

    iget v0, p0, Lcom/alensw/ui/c/bf;->h:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0, v3}, Lcom/alensw/ui/view/ImageGridView;->setMultiSelect(Z)V

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->a()I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/c/bf;->i:I

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->d()I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/c/bf;->j:I

    iget v0, p0, Lcom/alensw/ui/c/bf;->i:I

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/bf;->b(I)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p0}, Lcom/alensw/ui/c/bf;->r()Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "android.intent.action.SEND"

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    if-eqz v2, :cond_0

    new-instance v0, Lcom/alensw/ui/c/df;

    iget-object v1, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    const/4 v3, 0x0

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/alensw/ui/c/df;-><init>(Landroid/content/Context;Landroid/net/Uri;CLjava/lang/String;Lcom/alensw/b/h/k;)V

    invoke-virtual {v0, p1}, Lcom/alensw/ui/c/df;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    const v1, 0x7f0a0073

    new-instance v2, Lcom/alensw/ui/c/bo;

    invoke-direct {v2, p0}, Lcom/alensw/ui/c/bo;-><init>(Lcom/alensw/ui/c/bf;)V

    invoke-static {v0, v4, v1, p1, v2}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;ILandroid/view/View;Lcom/alensw/ui/activity/o;)I

    goto :goto_0
.end method

.method public a(Ljava/util/Collection;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/alensw/PicFolder/QuickApp;->w:Lcom/alensw/b/a/a;

    invoke-virtual {v2, v1}, Lcom/alensw/b/a/a;->c(Ljava/lang/Object;)Lcom/alensw/b/a/c;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/bf;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v0, p1}, Lcom/alensw/a/e;->a(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->requestLayout()V

    return-void
.end method

.method public a(Z)V
    .locals 3

    sget-object v0, Lcom/alensw/ui/c/bf;->l:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v1}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v2}, Lcom/alensw/ui/view/ImageGridView;->getScrollPos()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->c()V

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->t:Lcom/alensw/a/ah;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alensw/a/ah;->a(Z)V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->w:Lcom/alensw/b/a/a;

    invoke-virtual {v0}, Lcom/alensw/b/a/a;->c()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alensw/ui/c/bf;->t()V

    goto :goto_0
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const v6, 0x7f09005e

    const v5, 0x7f090052

    const/4 v0, 0x1

    const/4 v4, 0x2

    const/4 v1, 0x0

    iget v2, p0, Lcom/alensw/ui/c/bf;->h:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    const v2, 0x7f090009

    const v3, 0x104000a

    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v3, v2}, Lcom/alensw/b/g/l;->a(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v4}, Lcom/alensw/ui/c/bf;->a(Landroid/view/MenuItem;I)V

    const v2, 0x7f090048

    const v3, 0x7f0a0014

    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const v2, 0x7f090054

    const v3, 0x7f0a007f

    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const v2, 0x102001f

    const v3, 0x104000d

    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-boolean v2, v2, Lcom/alensw/ui/view/ImageGridView;->d:Z

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    const v3, 0x7f0c0005

    invoke-static {v2, v3, p1}, Lcom/alensw/b/g/b;->a(Landroid/content/Context;ILandroid/view/Menu;)V

    iget v2, p0, Lcom/alensw/ui/c/bf;->h:I

    if-nez v2, :cond_2

    invoke-virtual {p0, p1, v5, v4}, Lcom/alensw/ui/c/bf;->a(Landroid/view/Menu;II)V

    invoke-virtual {p0, p1, v6, v4}, Lcom/alensw/ui/c/bf;->a(Landroid/view/Menu;II)V

    :goto_1
    const v1, 0x7f090063

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    const v1, 0x7f09004e

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    const v1, 0x7f090060

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, v5, v1}, Lcom/alensw/ui/c/bf;->a(Landroid/view/Menu;IZ)V

    invoke-virtual {p0, p1, v6, v1}, Lcom/alensw/ui/c/bf;->a(Landroid/view/Menu;IZ)V

    goto :goto_1
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    iget-object v5, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v5, v4}, Lcom/alensw/ui/c/cx;->c(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/alensw/ui/c/bf;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v6}, Ljava/util/LinkedHashSet;->size()I

    move-result v6

    iget-object v7, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    iget v7, v7, Lcom/alensw/a/e;->d:I

    sparse-switch v4, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/alensw/ui/c/a;->a(Landroid/view/MenuItem;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :sswitch_0
    iget-object v0, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "image/*"

    invoke-virtual {p0, v0, v2, v1}, Lcom/alensw/ui/c/bf;->a(Landroid/net/Uri;Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->b()I

    move-result v0

    iget v2, p0, Lcom/alensw/ui/c/bf;->i:I

    iget v3, p0, Lcom/alensw/ui/c/bf;->j:I

    invoke-static {v0, v2, v3}, Lcom/alensw/a/e;->a(III)I

    move-result v0

    if-eq v0, v7, :cond_0

    iget-object v2, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v2}, Lcom/alensw/a/e;->a()I

    move-result v2

    iget-object v3, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v3}, Lcom/alensw/a/e;->d()I

    move-result v3

    iget-object v4, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    iput v0, v4, Lcom/alensw/a/e;->d:I

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v0}, Lcom/alensw/a/q;->a(Landroid/content/Context;)Lcom/alensw/a/q;

    move-result-object v0

    iget-object v4, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v0, v4}, Lcom/alensw/a/q;->b(Lcom/alensw/a/e;)V

    iget v0, p0, Lcom/alensw/ui/c/bf;->i:I

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->a()I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/c/bf;->i:I

    iget v0, p0, Lcom/alensw/ui/c/bf;->i:I

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/bf;->b(I)V

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v2}, Lcom/alensw/ui/view/ImageGridView;->getHeight()I

    move-result v2

    if-lez v0, :cond_2

    if-lez v2, :cond_2

    iget-object v4, p0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-object v5, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v5, v1}, Lcom/alensw/ui/c/cx;->b(Z)J

    move-result-wide v6

    new-instance v5, Landroid/graphics/RectF;

    div-int/lit8 v8, v0, 0x4

    int-to-float v8, v8

    div-int/lit8 v9, v2, 0x4

    int-to-float v9, v9

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    invoke-direct {v5, v8, v9, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v4, v1, v6, v7, v5}, Lcom/alensw/ui/view/ImageGridView;->a(ZJLandroid/graphics/RectF;)J

    :cond_2
    iget v0, p0, Lcom/alensw/ui/c/bf;->j:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->d()I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/c/bf;->j:I

    invoke-virtual {p0, v1}, Lcom/alensw/ui/c/bf;->a(Z)V

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    const/4 v2, -0x1

    iput v2, v0, Lcom/alensw/a/e;->e:I

    invoke-virtual {p0}, Lcom/alensw/ui/c/bf;->o()V

    goto/16 :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    new-instance v2, Lcom/alensw/ui/c/bg;

    invoke-direct {v2, p0}, Lcom/alensw/ui/c/bg;-><init>(Lcom/alensw/ui/c/bf;)V

    invoke-static {v0, v5, v2}, Lcom/alensw/b/g/b;->a(Landroid/content/Context;Landroid/view/View;Lcom/alensw/b/g/k;)V

    goto/16 :goto_1

    :sswitch_2
    iput v0, p0, Lcom/alensw/ui/c/bf;->i:I

    goto/16 :goto_1

    :sswitch_3
    iput v2, p0, Lcom/alensw/ui/c/bf;->i:I

    goto/16 :goto_1

    :sswitch_4
    iget v2, p0, Lcom/alensw/ui/c/bf;->j:I

    packed-switch v2, :pswitch_data_0

    move v2, v0

    :goto_2
    iget-object v4, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v4, v5, v3, v2, v0}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/view/View;[IIZ)V

    goto/16 :goto_1

    :pswitch_0
    move v0, v1

    :pswitch_1
    const v2, 0x7f090074

    goto :goto_2

    :pswitch_2
    move v0, v1

    :pswitch_3
    const v2, 0x7f090075

    goto :goto_2

    :pswitch_4
    move v0, v1

    :pswitch_5
    const v2, 0x7f090076

    goto :goto_2

    :pswitch_6
    move v0, v1

    :pswitch_7
    const v2, 0x7f090077

    goto :goto_2

    :sswitch_5
    iget v0, p0, Lcom/alensw/ui/c/bf;->j:I

    if-ne v0, v2, :cond_3

    move v0, v3

    :goto_3
    iput v0, p0, Lcom/alensw/ui/c/bf;->j:I

    goto/16 :goto_1

    :cond_3
    move v0, v2

    goto :goto_3

    :sswitch_6
    iget v0, p0, Lcom/alensw/ui/c/bf;->j:I

    if-ne v0, v1, :cond_4

    const/4 v0, 0x3

    :goto_4
    iput v0, p0, Lcom/alensw/ui/c/bf;->j:I

    goto/16 :goto_1

    :cond_4
    move v0, v1

    goto :goto_4

    :sswitch_7
    iget v0, p0, Lcom/alensw/ui/c/bf;->j:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_5

    const/4 v0, 0x5

    :goto_5
    iput v0, p0, Lcom/alensw/ui/c/bf;->j:I

    goto/16 :goto_1

    :cond_5
    const/4 v0, 0x6

    goto :goto_5

    :sswitch_8
    iget v0, p0, Lcom/alensw/ui/c/bf;->j:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_6

    const/16 v0, 0x8

    :goto_6
    iput v0, p0, Lcom/alensw/ui/c/bf;->j:I

    goto/16 :goto_1

    :cond_6
    const/4 v0, 0x7

    goto :goto_6

    :sswitch_9
    iget-object v2, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v2, v1}, Lcom/alensw/a/e;->a(Z)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/alensw/ui/c/bf;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    const v2, 0x7f0a003e

    const v3, 0x7f0a0040

    invoke-virtual {p0, v3}, Lcom/alensw/ui/c/bf;->g(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alensw/ui/c/br;

    invoke-direct {v4, p0}, Lcom/alensw/ui/c/br;-><init>(Lcom/alensw/ui/c/bf;)V

    invoke-static {v0, v2, v3, v4, v8}, Lcom/alensw/ui/a/f;->a(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_7
    iget-object v2, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {p0, v2, v0, v8}, Lcom/alensw/ui/c/bf;->a(Lcom/alensw/a/e;ZLjava/lang/Runnable;)Z

    goto/16 :goto_1

    :sswitch_a
    iget-object v0, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    new-instance v2, Lcom/alensw/ui/c/bs;

    invoke-direct {v2, p0}, Lcom/alensw/ui/c/bs;-><init>(Lcom/alensw/ui/c/bf;)V

    invoke-virtual {p0, v0, v2}, Lcom/alensw/ui/c/bf;->a(Lcom/alensw/a/e;Lcom/alensw/ui/a/s;)V

    goto/16 :goto_1

    :sswitch_b
    iget-object v0, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    const v2, 0x7f0a0036

    const v3, 0x7f0a0037

    invoke-virtual {p0, v3}, Lcom/alensw/ui/c/bf;->g(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alensw/ui/c/bt;

    invoke-direct {v4, p0}, Lcom/alensw/ui/c/bt;-><init>(Lcom/alensw/ui/c/bf;)V

    invoke-static {v0, v2, v3, v4, v8}, Lcom/alensw/ui/a/f;->a(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :sswitch_c
    iget-object v2, p0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-boolean v2, v2, Lcom/alensw/ui/view/ImageGridView;->d:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alensw/ui/c/bf;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->size()I

    move-result v2

    iget-object v3, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v3}, Lcom/alensw/a/e;->j()I

    move-result v3

    if-ge v2, v3, :cond_8

    iget-object v2, p0, Lcom/alensw/ui/c/bf;->k:Ljava/util/LinkedHashSet;

    iget-object v3, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    iget-object v3, v3, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    :goto_7
    iget-object v2, p0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v2}, Lcom/alensw/ui/view/ImageGridView;->b()V

    iget-object v2, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v2}, Lcom/alensw/ui/c/cx;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alensw/ui/c/bf;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v4}, Lcom/alensw/a/e;->j()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/alensw/ui/c/cx;->a(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_1

    :cond_8
    iget-object v2, p0, Lcom/alensw/ui/c/bf;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->clear()V

    goto :goto_7

    :sswitch_d
    iget-object v0, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0, v4}, Lcom/alensw/ui/c/cx;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/bf;->a(Landroid/view/View;)V

    goto/16 :goto_1

    :sswitch_e
    iget-object v0, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    iget-object v2, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v2, v4}, Lcom/alensw/ui/c/cx;->c(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/alensw/ui/c/bu;

    invoke-direct {v3, p0}, Lcom/alensw/ui/c/bu;-><init>(Lcom/alensw/ui/c/bf;)V

    invoke-static {v0, v6, v2, v3}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;ILandroid/view/View;Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :sswitch_f
    sget-boolean v2, Lcom/alensw/ui/c/bf;->a:Z

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/alensw/ui/c/bf;->d()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_9
    :sswitch_10
    invoke-virtual {p0}, Lcom/alensw/ui/c/bf;->s()Ljava/util/HashSet;

    move-result-object v2

    const v3, 0x7f09006b

    if-ne v4, v3, :cond_a

    move v0, v1

    :cond_a
    new-instance v3, Lcom/alensw/ui/c/bv;

    invoke-direct {v3, p0}, Lcom/alensw/ui/c/bv;-><init>(Lcom/alensw/ui/c/bf;)V

    invoke-virtual {p0, v2, v0, v3}, Lcom/alensw/ui/c/bf;->a(Ljava/util/HashSet;ZLcom/alensw/ui/c/n;)V

    goto/16 :goto_1

    :sswitch_11
    iget-object v0, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    iget-object v2, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v2, v4}, Lcom/alensw/ui/c/cx;->c(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alensw/ui/activity/a;->c(Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_1

    :sswitch_12
    const/16 v0, -0x5a

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/bf;->d(I)V

    goto/16 :goto_1

    :sswitch_13
    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/bf;->d(I)V

    goto/16 :goto_1

    :sswitch_14
    const/16 v0, 0xb4

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/bf;->d(I)V

    goto/16 :goto_1

    :sswitch_15
    sget-boolean v0, Lcom/alensw/ui/c/bf;->a:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/alensw/ui/c/bf;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_b
    iget-object v0, p0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-boolean v0, v0, Lcom/alensw/ui/view/ImageGridView;->d:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-le v0, v1, :cond_c

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "name_format"

    const-string v3, "IMG_%Y-%M-%D_%h.%m.%s"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    const v4, 0x7f0a0062

    const v5, 0x7f0a0063

    invoke-virtual {p0, v5}, Lcom/alensw/ui/c/bf;->g(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alensw/ui/c/bw;

    invoke-direct {v6, p0, v0}, Lcom/alensw/ui/c/bw;-><init>(Lcom/alensw/ui/c/bf;Landroid/content/SharedPreferences;)V

    invoke-static {v3, v4, v2, v5, v6}, Lcom/alensw/ui/a/f;->a(Landroid/content/Context;ILjava/lang/Object;Ljava/lang/CharSequence;Lcom/alensw/ui/a/s;)V

    goto/16 :goto_1

    :cond_c
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/d;

    invoke-virtual {p0, v4, v0}, Lcom/alensw/ui/c/bf;->a(ILcom/alensw/a/d;)V

    goto/16 :goto_1

    :cond_d
    :sswitch_16
    sget-boolean v0, Lcom/alensw/ui/c/bf;->a:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/alensw/ui/c/bf;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_e
    iget-object v0, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    const v2, 0x7f0a0062

    iget-object v3, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v3}, Lcom/alensw/a/e;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alensw/ui/c/bx;

    invoke-direct {v4, p0}, Lcom/alensw/ui/c/bx;-><init>(Lcom/alensw/ui/c/bf;)V

    invoke-static {v0, v2, v3, v8, v4}, Lcom/alensw/ui/a/f;->a(Landroid/content/Context;ILjava/lang/Object;Ljava/lang/CharSequence;Lcom/alensw/ui/a/s;)V

    goto/16 :goto_1

    :sswitch_17
    iget-object v0, p0, Lcom/alensw/ui/c/bf;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/d;

    invoke-virtual {p0, v4, v0}, Lcom/alensw/ui/c/bf;->a(ILcom/alensw/a/d;)V

    goto/16 :goto_1

    :sswitch_18
    iget-object v0, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->q()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/cx;->d(Z)V

    invoke-virtual {p0}, Lcom/alensw/ui/c/bf;->m()I

    goto/16 :goto_1

    :sswitch_19
    iget-object v0, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/bf;->a(Lcom/alensw/a/e;)V

    goto/16 :goto_1

    :sswitch_1a
    invoke-virtual {p0}, Lcom/alensw/ui/c/bf;->r()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0, v0}, Lcom/alensw/ui/c/a;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1020016 -> :sswitch_16
        0x102001f -> :sswitch_c
        0x7f090009 -> :sswitch_1a
        0x7f09000a -> :sswitch_d
        0x7f090044 -> :sswitch_17
        0x7f090048 -> :sswitch_1
        0x7f09004b -> :sswitch_2
        0x7f09004c -> :sswitch_3
        0x7f09004e -> :sswitch_e
        0x7f090050 -> :sswitch_f
        0x7f090052 -> :sswitch_0
        0x7f090054 -> :sswitch_4
        0x7f090055 -> :sswitch_19
        0x7f09005a -> :sswitch_11
        0x7f09005e -> :sswitch_18
        0x7f09005f -> :sswitch_9
        0x7f090061 -> :sswitch_a
        0x7f090062 -> :sswitch_15
        0x7f090066 -> :sswitch_b
        0x7f090069 -> :sswitch_17
        0x7f09006a -> :sswitch_17
        0x7f09006b -> :sswitch_10
        0x7f09006c -> :sswitch_17
        0x7f090070 -> :sswitch_12
        0x7f090071 -> :sswitch_13
        0x7f090072 -> :sswitch_14
        0x7f090074 -> :sswitch_5
        0x7f090075 -> :sswitch_6
        0x7f090076 -> :sswitch_7
        0x7f090077 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :array_0
    .array-data 4
        0x7f090074
        0x7f090075
        0x7f090076
        0x7f090077
    .end array-data
.end method

.method public b()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/alensw/ui/c/a;->b()V

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/bf;->E:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget v1, p0, Lcom/alensw/ui/c/bf;->h:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    sput-object v0, Lcom/alensw/ui/activity/p;->E:Landroid/net/Uri;

    :goto_0
    iget-object v0, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "open_last_folder"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_folder"

    iget-object v2, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v2}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    invoke-virtual {p0, v3}, Lcom/alensw/ui/c/bf;->a(Z)V

    return-void

    :cond_1
    sput-object v0, Lcom/alensw/ui/activity/p;->D:Landroid/net/Uri;

    goto :goto_0
.end method

.method protected b(I)V
    .locals 8

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v4, v3

    :goto_0
    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/c/bf;->e()[I

    move-result-object v0

    aget v1, v0, v3

    aget v0, v0, v2

    :goto_1
    iget-object v6, p0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-object v7, p0, Lcom/alensw/ui/c/bf;->q:Lcom/alensw/ui/view/aj;

    invoke-virtual {v6, v7, v1, v0}, Lcom/alensw/ui/view/ImageGridView;->a(Lcom/alensw/ui/view/aj;II)V

    iget-object v1, p0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    if-ne v4, v5, :cond_1

    move v0, v2

    :goto_2
    invoke-virtual {v1, v4, v0}, Lcom/alensw/ui/view/ImageGridView;->a(IZ)V

    return-void

    :pswitch_1
    move v4, v2

    goto :goto_0

    :pswitch_2
    move v4, v5

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    iget v1, v0, Lcom/alensw/a/bc;->d:I

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    iget v0, v0, Lcom/alensw/a/bc;->e:I

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public b(Landroid/content/Intent;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    iget-object v2, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    iget v2, v2, Lcom/alensw/a/e;->c:I

    invoke-virtual {v1, v2}, Lcom/alensw/a/e;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    iget-object v2, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-static {v0}, Lcom/alensw/b/f/c;->a(Ljava/lang/String;)C

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/alensw/a/e;->a(Ljava/lang/String;C)I

    move-result v0

    iput v0, v1, Lcom/alensw/a/e;->c:I

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-object v1, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    iget v1, v1, Lcom/alensw/a/e;->c:I

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/ImageGridView;->c(I)V

    :cond_1
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "current_uri"

    iget-object v1, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public b(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-boolean v0, v0, Lcom/alensw/ui/view/ImageGridView;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const v0, 0x7f09005f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v0, v2}, Lcom/alensw/a/e;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0a003f

    :goto_1
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    const v0, 0x7f0a003e

    goto :goto_1
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "Folder"

    return-object v0
.end method

.method protected c(I)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    new-instance v1, Lcom/alensw/ui/c/bi;

    invoke-direct {v1, p0}, Lcom/alensw/ui/c/bi;-><init>(Lcom/alensw/ui/c/bf;)V

    invoke-super {p0, v0, p1, v1}, Lcom/alensw/ui/c/a;->a(Lcom/alensw/a/e;ILcom/alensw/ui/c/o;)V

    return-void
.end method

.method protected c(Landroid/view/Menu;)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    const v1, 0x7f0c0007

    invoke-static {v0, v1, p1}, Lcom/alensw/b/g/b;->a(Landroid/content/Context;ILandroid/view/Menu;)V

    const v0, 0x102001f

    const v1, 0x104000d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const v0, 0x7f090052

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    const v0, 0x7f090057

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    sget-boolean v0, Lcom/alensw/ui/activity/ao;->F:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const v0, 0x7f09000a

    invoke-virtual {p0, p1, v0, v3}, Lcom/alensw/ui/c/bf;->a(Landroid/view/Menu;II)V

    const v0, 0x7f09004e

    invoke-virtual {p0, p1, v0, v3}, Lcom/alensw/ui/c/bf;->a(Landroid/view/Menu;II)V

    const v0, 0x7f09005a

    invoke-virtual {p0, p1, v0, v3}, Lcom/alensw/ui/c/bf;->a(Landroid/view/Menu;II)V

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0, v4}, Lcom/alensw/ui/view/ImageGridView;->setMultiSelect(Z)V

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/bf;->d(Ljava/lang/String;)V

    :cond_1
    return v4
.end method

.method public d(I)V
    .locals 7

    invoke-virtual {p0}, Lcom/alensw/ui/c/bf;->s()Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/bf;->a(Z)V

    new-instance v0, Lcom/alensw/ui/c/bn;

    iget-object v2, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0a0064

    invoke-virtual {p0, v3}, Lcom/alensw/ui/c/bf;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/alensw/ui/c/bn;-><init>(Lcom/alensw/ui/c/bf;Landroid/app/Activity;Ljava/lang/String;ILjava/util/HashSet;I)V

    invoke-virtual {v0}, Lcom/alensw/ui/c/bn;->c()V

    goto :goto_0
.end method

.method protected d(Landroid/view/Menu;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v3

    if-ne v3, v1, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/d;

    iget-char v0, v0, Lcom/alensw/a/d;->c:C

    const/16 v4, 0x49

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_0
    const v4, 0x7f090044

    if-ne v3, v1, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {p0, p1, v4, v2}, Lcom/alensw/ui/c/bf;->a(Landroid/view/Menu;IZ)V

    const v2, 0x7f090069

    invoke-virtual {p0, p1, v2, v0}, Lcom/alensw/ui/c/bf;->a(Landroid/view/Menu;IZ)V

    const v2, 0x7f09006a

    invoke-virtual {p0, p1, v2, v0}, Lcom/alensw/ui/c/bf;->a(Landroid/view/Menu;IZ)V

    const v2, 0x7f09006c

    invoke-virtual {p0, p1, v2, v0}, Lcom/alensw/ui/c/bf;->a(Landroid/view/Menu;IZ)V

    const v0, 0x102001f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->getCount()I

    move-result v0

    if-ne v3, v0, :cond_2

    const v0, 0x7f0a002e

    :goto_1
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const v0, 0x104000d

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {p0, v4}, Lcom/alensw/ui/c/bf;->a(Z)V

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->o:Lcom/alensw/a/x;

    invoke-virtual {v0, v5}, Lcom/alensw/a/x;->a(Lcom/alensw/a/e;)I

    move-result v0

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->o:Lcom/alensw/a/x;

    invoke-virtual {v1, v0, p1}, Lcom/alensw/a/x;->a(ILjava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->o:Lcom/alensw/a/x;

    invoke-virtual {v1, v0}, Lcom/alensw/a/x;->b(I)Lcom/alensw/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    new-instance v0, Lcom/alensw/ui/c/bk;

    iget-object v2, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    const v1, 0x7f0a0068

    invoke-virtual {p0, v1}, Lcom/alensw/ui/c/bf;->g(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alensw/ui/c/bk;-><init>(Lcom/alensw/ui/c/bf;Landroid/app/Activity;Ljava/lang/String;ILcom/alensw/a/e;)V

    invoke-virtual {v0}, Lcom/alensw/ui/c/bk;->c()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v5}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/bf;->a(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public g(Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p0}, Lcom/alensw/ui/c/bf;->s()Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/bf;->a(Z)V

    sget-object v7, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lcom/alensw/ui/c/bm;

    iget-object v2, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    const v1, 0x7f0a0062

    invoke-virtual {p0, v1}, Lcom/alensw/ui/c/bf;->g(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, Lcom/alensw/ui/c/bm;-><init>(Lcom/alensw/ui/c/bf;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashSet;Lcom/alensw/a/bc;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/alensw/ui/c/bm;->c()V

    goto :goto_0
.end method

.method public h()Landroid/graphics/RectF;
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-object v2, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    iget v2, v2, Lcom/alensw/a/e;->c:I

    invoke-virtual {v1, v2}, Lcom/alensw/ui/view/ImageGridView;->c(I)V

    iget-object v1, p0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-object v2, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    iget v2, v2, Lcom/alensw/a/e;->c:I

    invoke-virtual {v1, v2}, Lcom/alensw/ui/view/ImageGridView;->a(I)V

    iget-object v1, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    iget v1, v1, Lcom/alensw/a/e;->c:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-object v2, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    iget v2, v2, Lcom/alensw/a/e;->c:I

    invoke-virtual {v1, v2, v0}, Lcom/alensw/ui/view/ImageGridView;->b(ILandroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iget v2, p0, Lcom/alensw/ui/c/bf;->n:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/alensw/ui/c/a;->h()Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_0
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/ImageGridView;->a(I)V

    invoke-super {p0}, Lcom/alensw/ui/c/a;->i()V

    return-void
.end method

.method protected j()[Landroid/net/Uri;
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/ui/c/bf;->q()[Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected k()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/ImageGridView;->setMultiSelect(Z)V

    invoke-virtual {p0}, Lcom/alensw/ui/c/bf;->m()I

    return-void
.end method

.method protected l()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v1}, Lcom/alensw/ui/c/cx;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/bf;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v1, v0}, Lcom/alensw/ui/c/cx;->d(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/alensw/ui/c/bf;->m()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected m()I
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->j()I

    move-result v1

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-boolean v0, v0, Lcom/alensw/ui/view/ImageGridView;->d:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alensw/ui/c/bf;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v2}, Lcom/alensw/ui/c/cx;->q()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/alensw/ui/c/cx;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/bf;->b(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    iget v2, v2, Lcom/alensw/a/e;->g:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const v0, 0x7f0a001d

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/bf;->g(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-lez v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/bf;->b(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected n()V
    .locals 8

    const/4 v1, 0x0

    new-instance v5, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    iget-object v0, v0, Lcom/alensw/a/e;->i:Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p0, v1}, Lcom/alensw/ui/c/bf;->a(Z)V

    sget-object v6, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    const-string v0, "datetaken"

    aput-object v0, v7, v1

    new-instance v0, Lcom/alensw/ui/c/bh;

    iget-object v2, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    const v1, 0x7f0a0036

    invoke-virtual {p0, v1}, Lcom/alensw/ui/c/bf;->g(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/alensw/ui/c/bh;-><init>(Lcom/alensw/ui/c/bf;Landroid/app/Activity;Ljava/lang/String;ILjava/util/ArrayList;Lcom/alensw/a/ba;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alensw/ui/c/bh;->c()V

    return-void
.end method

.method public o()V
    .locals 4

    const/4 v1, 0x1

    sget-object v0, Lcom/alensw/ui/c/bf;->l:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v2}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    new-instance v2, Lcom/alensw/ui/c/bj;

    invoke-direct {v2, p0, v0}, Lcom/alensw/ui/c/bj;-><init>(Lcom/alensw/ui/c/bf;Ljava/lang/Float;)V

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->j()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->o:Lcom/alensw/a/x;

    iget-object v3, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v0, v3, v1}, Lcom/alensw/a/x;->a(Lcom/alensw/a/e;Z)V

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->w:Lcom/alensw/b/a/a;

    invoke-virtual {v0}, Lcom/alensw/b/a/a;->c()V

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    const v1, 0x7f0a0048

    invoke-virtual {p0, v1}, Lcom/alensw/ui/c/bf;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/ImageGridView;->setEmptyText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {p0, v0, v2}, Lcom/alensw/ui/c/bf;->a(Lcom/alensw/a/e;Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method public p()V
    .locals 9

    invoke-virtual {p0}, Lcom/alensw/ui/c/bf;->s()Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/bf;->a(Z)V

    sget-object v7, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    sget-object v6, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lcom/alensw/ui/c/bl;

    iget-object v2, p0, Lcom/alensw/ui/c/bf;->C:Lcom/alensw/ui/c/cx;

    const v1, 0x7f0a002d

    invoke-virtual {p0, v1}, Lcom/alensw/ui/c/bf;->g(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/alensw/ui/c/bl;-><init>(Lcom/alensw/ui/c/bf;Landroid/app/Activity;Ljava/lang/String;ILjava/util/HashSet;Lcom/alensw/a/ba;Lcom/alensw/a/bc;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/alensw/ui/c/bl;->c()V

    goto :goto_0
.end method

.method public q()[Landroid/net/Uri;
    .locals 6

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-array v3, v0, [Landroid/net/Uri;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alensw/ui/c/bf;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/d;

    add-int/lit8 v2, v1, 0x1

    iget-object v5, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    iget-object v0, v0, Lcom/alensw/a/d;->b:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/alensw/a/e;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v3, v1

    move v1, v2

    goto :goto_1

    :cond_1
    move-object v0, v3

    goto :goto_0
.end method

.method public r()Landroid/content/Intent;
    .locals 12

    const/4 v2, 0x0

    const/4 v11, 0x1

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/d;

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    iget-object v10, v0, Lcom/alensw/a/d;->b:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-char v9, v0, Lcom/alensw/a/d;->c:C

    const/16 v10, 0x49

    if-ne v9, v10, :cond_2

    or-int/lit8 v1, v1, 0x1

    :cond_1
    :goto_2
    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-char v0, v0, Lcom/alensw/a/d;->c:C

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-char v9, v0, Lcom/alensw/a/d;->c:C

    const/16 v10, 0x56

    if-ne v9, v10, :cond_1

    or-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_3
    if-ne v1, v11, :cond_4

    const-string v0, "image/jpeg"

    move-object v3, v0

    :goto_3
    if-le v4, v11, :cond_6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v1, "multiple_files"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v1, "multiple_types"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :goto_4
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    if-ne v1, v0, :cond_5

    const-string v0, "video/mp4"

    move-object v3, v0

    goto :goto_3

    :cond_5
    const-string v0, "*/*"

    move-object v3, v0

    goto :goto_3

    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object v0, v1

    goto :goto_4
.end method

.method public s()Ljava/util/HashSet;
    .locals 2

    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/alensw/ui/c/bf;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iget-object v1, p0, Lcom/alensw/ui/c/bf;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public t()V
    .locals 5

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->getFirstVisible()I

    move-result v1

    iget-object v0, p0, Lcom/alensw/ui/c/bf;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->getLastVisible()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    sget-object v3, Lcom/alensw/PicFolder/QuickApp;->w:Lcom/alensw/b/a/a;

    iget-object v4, p0, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v4, v0}, Lcom/alensw/a/e;->e(I)Lcom/alensw/a/d;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alensw/b/a/a;->b(Ljava/lang/Object;)Lcom/alensw/b/a/c;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-le v2, v1, :cond_1

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->w:Lcom/alensw/b/a/a;

    sub-int v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/alensw/b/a/a;->b(I)V

    :cond_1
    return-void
.end method
