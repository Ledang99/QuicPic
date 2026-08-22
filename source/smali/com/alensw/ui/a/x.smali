.class public Lcom/alensw/ui/a/x;
.super Lcom/alensw/ui/a/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLcom/alensw/ui/a/ad;Ljava/lang/Runnable;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/alensw/ui/a/u;-><init>(Landroid/content/Context;)V

    invoke-super {p0, p2}, Lcom/alensw/ui/a/u;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f03000d

    invoke-super {p0, v0}, Lcom/alensw/ui/a/u;->a(I)V

    iget-object v0, p0, Lcom/alensw/ui/a/x;->b:Landroid/view/View;

    check-cast v0, Lcom/alensw/ui/view/PasswordView;

    invoke-virtual {v0, p3}, Lcom/alensw/ui/view/PasswordView;->setPatternMode(Z)V

    new-instance v1, Lcom/alensw/ui/a/y;

    invoke-direct {v1, p0, p4}, Lcom/alensw/ui/a/y;-><init>(Lcom/alensw/ui/a/x;Lcom/alensw/ui/a/ad;)V

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/PasswordView;->setInputListener(Lcom/alensw/ui/view/ay;)V

    if-eqz p5, :cond_0

    new-instance v0, Lcom/alensw/ui/a/z;

    invoke-direct {v0, p0, p5}, Lcom/alensw/ui/a/z;-><init>(Lcom/alensw/ui/a/x;Ljava/lang/Runnable;)V

    invoke-super {p0, v0}, Lcom/alensw/ui/a/u;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "password"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/alensw/ui/a/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 6

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v0, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, ""

    invoke-interface {v0, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->y:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v3, 0x1

    :cond_2
    new-instance v0, Lcom/alensw/ui/a/x;

    const v2, 0x7f0a0053

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/alensw/ui/a/ac;

    invoke-direct {v4, v5, v1, p3, p4}, Lcom/alensw/ui/a/ac;-><init>(Ljava/lang/String;ZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    move-object v1, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alensw/ui/a/x;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/alensw/ui/a/ad;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/alensw/ui/a/x;->show()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ZLcom/alensw/ui/a/ad;)V
    .locals 6

    new-instance v0, Lcom/alensw/ui/a/x;

    const v1, 0x7f0a005b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/alensw/ui/a/aa;

    invoke-direct {v4, p0, p1, p2}, Lcom/alensw/ui/a/aa;-><init>(Landroid/content/Context;ZLcom/alensw/ui/a/ad;)V

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/alensw/ui/a/x;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/alensw/ui/a/ad;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/alensw/ui/a/x;->show()V

    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0054

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    return-void
.end method
