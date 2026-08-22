.class public abstract Lcom/alensw/ui/a/ao;
.super Landroid/app/ProgressDialog;


# static fields
.field public static final d:Lcom/alensw/b/k/a;


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/alensw/b/k/a;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v3, 0x8

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alensw/b/k/a;-><init>(IIII)V

    sput-object v0, Lcom/alensw/ui/a/ao;->d:Lcom/alensw/b/k/a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/alensw/ui/a/u;->a(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/alensw/ui/a/ao;->a:Landroid/app/Activity;

    invoke-virtual {p0, v2}, Lcom/alensw/ui/a/ao;->setCanceledOnTouchOutside(Z)V

    if-lez p3, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alensw/ui/a/ao;->setCancelable(Z)V

    if-nez v0, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/alensw/ui/a/ao;->setIndeterminate(Z)V

    if-eqz v0, :cond_2

    invoke-virtual {p0, p3}, Lcom/alensw/ui/a/ao;->setMax(I)V

    invoke-virtual {p0, v1}, Lcom/alensw/ui/a/ao;->setProgressStyle(I)V

    const/4 v0, -0x2

    const/high16 v1, 0x1040000

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alensw/ui/a/ap;

    invoke-direct {v2, p0}, Lcom/alensw/ui/a/ap;-><init>(Lcom/alensw/ui/a/ao;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/alensw/ui/a/ao;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0, p2}, Lcom/alensw/ui/a/ao;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lcom/alensw/ui/a/ao;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alensw/ui/a/ao;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/a/ao;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/a/ao;->a:Landroid/app/Activity;

    new-instance v1, Lcom/alensw/ui/a/as;

    invoke-direct {v1, p0, p1}, Lcom/alensw/ui/a/as;-><init>(Lcom/alensw/ui/a/ao;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 2

    invoke-static {p0}, Lcom/alensw/ui/a/f;->a(Landroid/app/Dialog;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/alensw/ui/a/ao;->d:Lcom/alensw/b/k/a;

    new-instance v1, Lcom/alensw/ui/a/aq;

    invoke-direct {v1, p0}, Lcom/alensw/ui/a/aq;-><init>(Lcom/alensw/ui/a/ao;)V

    invoke-virtual {v0, v1}, Lcom/alensw/b/k/a;->a(Lcom/alensw/b/k/k;)Lcom/alensw/b/k/d;

    goto :goto_0
.end method

.method protected d()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/alensw/ui/a/ao;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/a/ao;->incrementProgressBy(I)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/a/ao;->a:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/alensw/ui/a/u;->a(Landroid/content/Context;Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method
