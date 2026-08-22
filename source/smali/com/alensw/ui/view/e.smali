.class public Lcom/alensw/ui/view/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(IZIII)Landroid/view/animation/Animation;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lcom/alensw/ui/view/e;->a(Z)Landroid/view/animation/Animation;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    add-int v0, p2, p4

    invoke-static {p1, v0}, Lcom/alensw/ui/view/e;->a(ZI)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p1, p2, p3}, Lcom/alensw/ui/view/e;->c(ZII)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p1, p2, p3}, Lcom/alensw/ui/view/e;->b(ZII)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    if-eqz p1, :cond_0

    invoke-static {p1, p2, p3}, Lcom/alensw/ui/view/e;->a(ZII)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :cond_0
    add-int v0, p2, p4

    invoke-static {p1, v0}, Lcom/alensw/ui/view/e;->a(ZI)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Z)Landroid/view/animation/Animation;
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v1

    :goto_0
    if-eqz p0, :cond_1

    :goto_1
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    return-object v1

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static a(ZI)Landroid/view/animation/Animation;
    .locals 1

    new-instance v0, Lcom/alensw/ui/view/i;

    invoke-direct {v0, p0, p1}, Lcom/alensw/ui/view/i;-><init>(ZI)V

    return-object v0
.end method

.method public static a(ZII)Landroid/view/animation/Animation;
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    int-to-float v2, p1

    div-float v3, v2, v4

    int-to-float v2, p2

    div-float v4, v2, v4

    if-eqz p0, :cond_0

    move v2, v1

    :goto_0
    if-eqz p0, :cond_1

    :goto_1
    sub-float/2addr v0, v2

    new-instance v1, Lcom/alensw/ui/view/f;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/alensw/ui/view/f;-><init>(FFFF)V

    return-object v1

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static b(ZII)Landroid/view/animation/Animation;
    .locals 8

    const/4 v2, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    int-to-float v0, p1

    div-float v5, v0, v1

    int-to-float v0, p2

    div-float v6, v0, v1

    int-to-float v0, p1

    div-float v4, v0, v1

    if-eqz p0, :cond_0

    const/high16 v1, 0x43340000    # 180.0f

    :goto_0
    if-eqz p0, :cond_1

    :goto_1
    new-instance v3, Landroid/graphics/Camera;

    invoke-direct {v3}, Landroid/graphics/Camera;-><init>()V

    new-instance v0, Lcom/alensw/ui/view/g;

    move v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/alensw/ui/view/g;-><init>(FFLandroid/graphics/Camera;FFFZ)V

    return-object v0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/high16 v2, -0x3ccc0000    # -180.0f

    goto :goto_1
.end method

.method public static c(ZII)Landroid/view/animation/Animation;
    .locals 7

    const/4 v2, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    int-to-float v0, p1

    div-float v4, v0, v1

    int-to-float v0, p2

    div-float v5, v0, v1

    int-to-float v0, p1

    div-float/2addr v0, v1

    if-eqz p0, :cond_0

    const/high16 v1, 0x43340000    # 180.0f

    :goto_0
    if-eqz p0, :cond_1

    :goto_1
    new-instance v3, Landroid/graphics/Camera;

    invoke-direct {v3}, Landroid/graphics/Camera;-><init>()V

    new-instance v0, Lcom/alensw/ui/view/h;

    move v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/alensw/ui/view/h;-><init>(FFLandroid/graphics/Camera;FFZ)V

    return-object v0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/high16 v2, -0x3ccc0000    # -180.0f

    goto :goto_1
.end method
