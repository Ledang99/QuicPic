.class public Lcom/alensw/b/g/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem;


# static fields
.field public static final a:[[I

.field public static final b:Landroid/util/SparseIntArray;


# instance fields
.field private final c:Lcom/alensw/b/g/b;

.field private final d:Landroid/content/Context;

.field private final e:I

.field private final f:I

.field private g:I

.field private h:Ljava/lang/CharSequence;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Ljava/lang/Object;

.field private k:Landroid/view/SubMenu;

.field private l:Landroid/view/MenuItem$OnMenuItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x2

    const/16 v0, 0x12

    new-array v0, v0, [[I

    new-array v2, v4, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    new-array v2, v4, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v7

    new-array v2, v4, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v4

    const/4 v2, 0x3

    new-array v3, v4, [I

    fill-array-data v3, :array_3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    new-array v3, v4, [I

    fill-array-data v3, :array_4

    aput-object v3, v0, v2

    const/4 v2, 0x5

    new-array v3, v4, [I

    fill-array-data v3, :array_5

    aput-object v3, v0, v2

    const/4 v2, 0x6

    new-array v3, v4, [I

    fill-array-data v3, :array_6

    aput-object v3, v0, v2

    const/4 v2, 0x7

    new-array v3, v4, [I

    fill-array-data v3, :array_7

    aput-object v3, v0, v2

    const/16 v2, 0x8

    new-array v3, v4, [I

    fill-array-data v3, :array_8

    aput-object v3, v0, v2

    const/16 v2, 0x9

    new-array v3, v4, [I

    fill-array-data v3, :array_9

    aput-object v3, v0, v2

    const/16 v2, 0xa

    new-array v3, v4, [I

    fill-array-data v3, :array_a

    aput-object v3, v0, v2

    const/16 v2, 0xb

    new-array v3, v4, [I

    fill-array-data v3, :array_b

    aput-object v3, v0, v2

    const/16 v2, 0xc

    new-array v3, v4, [I

    fill-array-data v3, :array_c

    aput-object v3, v0, v2

    const/16 v2, 0xd

    new-array v3, v4, [I

    fill-array-data v3, :array_d

    aput-object v3, v0, v2

    const/16 v2, 0xe

    new-array v3, v4, [I

    fill-array-data v3, :array_e

    aput-object v3, v0, v2

    const/16 v2, 0xf

    new-array v3, v4, [I

    fill-array-data v3, :array_f

    aput-object v3, v0, v2

    const/16 v2, 0x10

    new-array v3, v4, [I

    fill-array-data v3, :array_10

    aput-object v3, v0, v2

    const/16 v2, 0x11

    new-array v3, v4, [I

    fill-array-data v3, :array_11

    aput-object v3, v0, v2

    sput-object v0, Lcom/alensw/b/g/l;->a:[[I

    new-instance v0, Landroid/util/SparseIntArray;

    sget-object v2, Lcom/alensw/b/g/l;->a:[[I

    array-length v2, v2

    invoke-direct {v0, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lcom/alensw/b/g/l;->b:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/alensw/b/g/l;->a:[[I

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    sget-object v5, Lcom/alensw/b/g/l;->b:Landroid/util/SparseIntArray;

    aget v6, v4, v1

    aget v4, v4, v7

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x7f090040
        0x7f050005
    .end array-data

    :array_1
    .array-data 4
        0x7f090067
        0x7f050006
    .end array-data

    :array_2
    .array-data 4
        0x7f090041
        0x7f050007
    .end array-data

    :array_3
    .array-data 4
        0x7f090059
        0x7f050008
    .end array-data

    :array_4
    .array-data 4
        0x7f09004e
        0x7f020030
    .end array-data

    :array_5
    .array-data 4
        0x7f090009
        0x7f05000a
    .end array-data

    :array_6
    .array-data 4
        0x7f09004f
        0x7f05000b
    .end array-data

    :array_7
    .array-data 4
        0x7f09005b
        0x7f05000c
    .end array-data

    :array_8
    .array-data 4
        0x7f090003
        0x7f020031
    .end array-data

    :array_9
    .array-data 4
        0x7f090079
        0x7f050010
    .end array-data

    :array_a
    .array-data 4
        0x7f09005a
        0x7f050011
    .end array-data

    :array_b
    .array-data 4
        0x7f09006e
        0x7f050012
    .end array-data

    :array_c
    .array-data 4
        0x7f090051
        0x7f050013
    .end array-data

    :array_d
    .array-data 4
        0x7f09005e
        0x7f020034
    .end array-data

    :array_e
    .array-data 4
        0x7f09000a
        0x7f020032
    .end array-data

    :array_f
    .array-data 4
        0x7f090058
        0x7f050016
    .end array-data

    :array_10
    .array-data 4
        0x7f090052
        0x7f020033
    .end array-data

    :array_11
    .array-data 4
        0x7f090053
        0x7f050018
    .end array-data
.end method

.method public constructor <init>(Lcom/alensw/b/g/b;Landroid/content/Context;IILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alensw/b/g/l;->c:Lcom/alensw/b/g/b;

    iput-object p2, p0, Lcom/alensw/b/g/l;->d:Landroid/content/Context;

    iput p3, p0, Lcom/alensw/b/g/l;->e:I

    iput p4, p0, Lcom/alensw/b/g/l;->f:I

    iput-object p5, p0, Lcom/alensw/b/g/l;->h:Ljava/lang/CharSequence;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f010001

    invoke-static {p0, v1}, Lcom/alensw/ui/activity/ao;->b(Landroid/content/Context;I)I

    move-result v1

    const v2, 0x7f080014

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {p0, p1, v1, v0}, Lcom/alensw/b/g/l;->a(Landroid/content/Context;Landroid/view/MenuItem;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/view/MenuItem;II)Landroid/graphics/drawable/Drawable;
    .locals 3

    sget-object v0, Lcom/alensw/b/g/l;->b:Landroid/util/SparseIntArray;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :try_start_0
    invoke-static {v0, v1, p2, p3}, Lcom/b/a/b;->a(Landroid/content/res/Resources;III)Lcom/b/a/l;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_0
    return-object v0

    :catch_0
    move-exception v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Object;II)Landroid/graphics/drawable/Drawable;
    .locals 3

    if-eqz p1, :cond_1

    :try_start_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :try_start_1
    invoke-static {v0, v1, p2, p3}, Lcom/b/a/b;->a(Landroid/content/res/Resources;III)Lcom/b/a/l;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)Lcom/alensw/b/g/l;
    .locals 6

    const/4 v1, 0x0

    new-instance v0, Lcom/alensw/b/g/l;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v4

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/alensw/b/g/l;-><init>(Lcom/alensw/b/g/b;Landroid/content/Context;IILjava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/pm/ResolveInfo;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lcom/alensw/b/g/l;->j:Ljava/lang/Object;

    return-object p0
.end method

.method public a(I)Lcom/alensw/b/g/l;
    .locals 0

    iput p1, p0, Lcom/alensw/b/g/l;->g:I

    return-object p0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/g/l;->j:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/b/g/l;->i:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method protected a(Landroid/view/SubMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/b/g/l;->k:Landroid/view/SubMenu;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/alensw/b/g/l;->g:I

    return v0
.end method

.method protected c()Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/g/l;->l:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/b/g/l;->l:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public collapseActionView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public expandActionView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGroupId()I
    .locals 1

    iget v0, p0, Lcom/alensw/b/g/l;->e:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v0, p0, Lcom/alensw/b/g/l;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/b/g/l;->i:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alensw/b/g/l;->j:Ljava/lang/Object;

    if-nez v0, :cond_1

    sget-object v0, Lcom/alensw/b/g/l;->b:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/alensw/b/g/l;->f:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/b/g/l;->j:Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/alensw/b/g/l;->j:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/b/g/l;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/alensw/b/g/l;->j:Ljava/lang/Object;

    iget-object v2, p0, Lcom/alensw/b/g/l;->c:Lcom/alensw/b/g/b;

    iget v2, v2, Lcom/alensw/b/g/b;->a:I

    iget-object v3, p0, Lcom/alensw/b/g/l;->c:Lcom/alensw/b/g/b;

    iget v3, v3, Lcom/alensw/b/g/b;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/alensw/b/g/l;->a(Landroid/content/Context;Ljava/lang/Object;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/b/g/l;->i:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v0, p0, Lcom/alensw/b/g/l;->i:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    iget v0, p0, Lcom/alensw/b/g/l;->f:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOrder()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/g/l;->k:Landroid/view/SubMenu;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/g/l;->h:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/g/l;->h:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/g/l;->k:Landroid/view/SubMenu;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/alensw/b/g/l;->g:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    iget v0, p0, Lcom/alensw/b/g/l;->g:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    iget v0, p0, Lcom/alensw/b/g/l;->g:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    iget v0, p0, Lcom/alensw/b/g/l;->g:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/alensw/b/g/l;->g:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alensw/b/g/l;->g:I

    :goto_0
    return-object p0

    :cond_0
    iget v0, p0, Lcom/alensw/b/g/l;->g:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/alensw/b/g/l;->g:I

    goto :goto_0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 5

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/alensw/b/g/l;->e:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alensw/b/g/l;->g:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/b/g/l;->c:Lcom/alensw/b/g/b;

    invoke-virtual {v0}, Lcom/alensw/b/g/b;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/alensw/b/g/l;->c:Lcom/alensw/b/g/b;

    invoke-virtual {v0, v1}, Lcom/alensw/b/g/b;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    iget v4, p0, Lcom/alensw/b/g/l;->e:I

    if-ne v3, v4, :cond_0

    instance-of v3, v0, Lcom/alensw/b/g/l;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/alensw/b/g/l;

    iget v3, v0, Lcom/alensw/b/g/l;->g:I

    and-int/lit8 v3, v3, -0x3

    iput v3, v0, Lcom/alensw/b/g/l;->g:I

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/alensw/b/g/l;->g:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alensw/b/g/l;->g:I

    :goto_1
    return-object p0

    :cond_2
    iget v0, p0, Lcom/alensw/b/g/l;->g:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/alensw/b/g/l;->g:I

    goto :goto_1
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 1

    if-nez p1, :cond_0

    iget v0, p0, Lcom/alensw/b/g/l;->g:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alensw/b/g/l;->g:I

    :goto_0
    return-object p0

    :cond_0
    iget v0, p0, Lcom/alensw/b/g/l;->g:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/alensw/b/g/l;->g:I

    goto :goto_0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/alensw/b/g/l;->j:Ljava/lang/Object;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1

    iput-object p1, p0, Lcom/alensw/b/g/l;->i:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/b/g/l;->j:Ljava/lang/Object;

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lcom/alensw/b/g/l;->l:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 0

    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alensw/b/g/l;->d:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alensw/b/g/l;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_0
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lcom/alensw/b/g/l;->h:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1

    if-nez p1, :cond_0

    iget v0, p0, Lcom/alensw/b/g/l;->g:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/alensw/b/g/l;->g:I

    :goto_0
    return-object p0

    :cond_0
    iget v0, p0, Lcom/alensw/b/g/l;->g:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/alensw/b/g/l;->g:I

    goto :goto_0
.end method
