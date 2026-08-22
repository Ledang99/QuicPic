.class public Landroid/support/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/widget/d;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Landroid/support/a/a/c;

.field private final c:Landroid/support/v4/widget/DrawerLayout;

.field private d:Landroid/support/a/a/f;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Z

.field private g:Z

.field private final h:I

.field private final i:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Ljava/lang/Object;II)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/a/a/a;->f:Z

    iput-object p1, p0, Landroid/support/a/a/a;->a:Landroid/app/Activity;

    invoke-static {p1}, Landroid/support/a/a/a;->a(Landroid/app/Activity;)Landroid/support/a/a/c;

    move-result-object v0

    iput-object v0, p0, Landroid/support/a/a/a;->b:Landroid/support/a/a/c;

    iput-object p2, p0, Landroid/support/a/a/a;->c:Landroid/support/v4/widget/DrawerLayout;

    iput p4, p0, Landroid/support/a/a/a;->h:I

    iput p5, p0, Landroid/support/a/a/a;->i:I

    instance-of v0, p3, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/a/a/j;

    move-object v3, p3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    const v4, 0x3eaaaaab

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/a/a/j;-><init>(Landroid/support/a/a/a;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;FLandroid/support/a/a/b;)V

    iput-object v0, p0, Landroid/support/a/a/a;->d:Landroid/support/a/a/f;

    :goto_0
    invoke-virtual {p0}, Landroid/support/a/a/a;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/a/a/a;->e:Landroid/graphics/drawable/Drawable;

    return-void

    :cond_0
    new-instance v0, Landroid/support/a/a/e;

    iget-object v1, p0, Landroid/support/a/a/a;->b:Landroid/support/a/a/c;

    invoke-interface {v1}, Landroid/support/a/a/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/support/a/a/e;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    instance-of v1, p3, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/a/a/e;->a(I)V

    :cond_1
    iput-object v0, p0, Landroid/support/a/a/a;->d:Landroid/support/a/a/f;

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)Landroid/support/a/a/c;
    .locals 3

    const/4 v2, 0x0

    instance-of v0, p0, Landroid/support/a/a/d;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/a/a/d;

    invoke-interface {p0}, Landroid/support/a/a/d;->a()Landroid/support/a/a/c;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/a/a/i;

    invoke-direct {v0, p0, v2}, Landroid/support/a/a/i;-><init>(Landroid/app/Activity;Landroid/support/a/a/b;)V

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/a/a/h;

    invoke-direct {v0, p0, v2}, Landroid/support/a/a/h;-><init>(Landroid/app/Activity;Landroid/support/a/a/b;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/support/a/a/g;

    invoke-direct {v0, p0}, Landroid/support/a/a/g;-><init>(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;I)Landroid/support/a/a/m;
    .locals 3

    invoke-static {p0}, Landroid/support/a/a/a;->a(Landroid/app/Activity;)Landroid/support/a/a/c;

    move-result-object v0

    new-instance v1, Landroid/support/a/a/e;

    invoke-interface {v0}, Landroid/support/a/a/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/support/a/a/e;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/support/a/a/e;->a(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/support/a/a/e;->a(F)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/support/a/a/c;->a(Landroid/graphics/drawable/Drawable;I)V

    return-object v1
.end method

.method public static b(Landroid/app/Activity;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private d()V
    .locals 2

    const v1, 0x800003

    iget-object v0, p0, Landroid/support/a/a/a;->c:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/a;->c:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->d(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/a;->c:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->c(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    const v2, 0x800003

    iget-object v0, p0, Landroid/support/a/a/a;->c:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/a/a/a;->d:Landroid/support/a/a/f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Landroid/support/a/a/f;->a(F)V

    :goto_0
    iget-boolean v0, p0, Landroid/support/a/a/a;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/a;->d:Landroid/support/a/a/f;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/a/a/a;->c:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->e(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/support/a/a/a;->i:I

    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/support/a/a/a;->a(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/a/a/a;->d:Landroid/support/a/a/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/a/a/f;->a(F)V

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/support/a/a/a;->h:I

    goto :goto_1
.end method

.method public a(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-boolean v0, p0, Landroid/support/a/a/a;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/a/a/a;->d:Landroid/support/a/a/f;

    invoke-interface {v0, v1}, Landroid/support/a/a/f;->a(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/a/a/a;->e:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/support/a/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/a;->e:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/support/a/a/f;

    invoke-interface {v0, v1}, Landroid/support/a/a/f;->a(F)V

    goto :goto_0
.end method

.method a(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/a;->b:Landroid/support/a/a/c;

    invoke-interface {v0, p1}, Landroid/support/a/a/c;->a(I)V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/a/a/a;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/a/a/a;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/a/a/a;->e:Landroid/graphics/drawable/Drawable;

    :cond_0
    invoke-virtual {p0}, Landroid/support/a/a/a;->a()V

    return-void
.end method

.method a(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/a;->b:Landroid/support/a/a/c;

    invoke-interface {v0, p1, p2}, Landroid/support/a/a/c;->a(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/a/a/a;->d:Landroid/support/a/a/f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Landroid/support/a/a/f;->a(F)V

    iget-boolean v0, p0, Landroid/support/a/a/a;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/a/a/a;->i:I

    invoke-virtual {p0, v0}, Landroid/support/a/a/a;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;F)V
    .locals 3

    iget-object v0, p0, Landroid/support/a/a/a;->d:Landroid/support/a/a/f;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/a/a/f;->a(F)V

    return-void
.end method

.method public a(Landroid/view/View;ZI)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 3

    iget-boolean v0, p0, Landroid/support/a/a/a;->f:Z

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/support/a/a/a;->d:Landroid/support/a/a/f;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/a/a/a;->c:Landroid/support/v4/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->e(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/support/a/a/a;->i:I

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/support/a/a/a;->a(Landroid/graphics/drawable/Drawable;I)V

    :goto_1
    iput-boolean p1, p0, Landroid/support/a/a/a;->f:Z

    :cond_0
    return-void

    :cond_1
    iget v1, p0, Landroid/support/a/a/a;->h:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/a/a/a;->e:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/a/a/a;->a(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/support/a/a/a;->f:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/a/a/a;->d()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/a/a/a;->d:Landroid/support/a/a/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/a/a/f;->a(F)V

    iget-boolean v0, p0, Landroid/support/a/a/a;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/a/a/a;->h:I

    invoke-virtual {p0, v0}, Landroid/support/a/a/a;->a(I)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/a/a/a;->f:Z

    return v0
.end method

.method c()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Landroid/support/a/a/a;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/a/a/a;->a(Landroid/app/Activity;)Landroid/support/a/a/c;

    move-result-object v0

    new-instance v1, Landroid/support/a/a/e;

    iget-object v2, p0, Landroid/support/a/a/a;->a:Landroid/app/Activity;

    invoke-interface {v0}, Landroid/support/a/a/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/support/a/a/e;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    iget-object v0, p0, Landroid/support/a/a/a;->d:Landroid/support/a/a/f;

    instance-of v0, v0, Landroid/support/a/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/a;->d:Landroid/support/a/a/f;

    check-cast v0, Landroid/support/a/a/e;

    invoke-virtual {v0}, Landroid/support/a/a/e;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/a/a/e;->a(I)V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/support/a/a/e;->a(F)V

    return-object v1
.end method
