.class public Lcom/alensw/ui/view/PasswordView;
.super Landroid/widget/LinearLayout;


# static fields
.field public static final a:[C


# instance fields
.field private b:Z

.field private c:Landroid/widget/TextView;

.field private d:Lcom/alensw/ui/view/ay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alensw/ui/view/PasswordView;->a:[C

    return-void

    :array_0
    .array-data 2
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2713s
        0x30s
        0x2190s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alensw/ui/view/PasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/alensw/ui/view/PasswordView;)Lcom/alensw/ui/view/ay;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/PasswordView;->d:Lcom/alensw/ui/view/ay;

    return-object v0
.end method

.method static synthetic b(Lcom/alensw/ui/view/PasswordView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/PasswordView;->c:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f09001e

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/PasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alensw/ui/view/PasswordView;->c:Landroid/widget/TextView;

    return-void
.end method

.method public setInputListener(Lcom/alensw/ui/view/ay;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/PasswordView;->d:Lcom/alensw/ui/view/ay;

    return-void
.end method

.method public setPatternMode(Z)V
    .locals 6

    const/16 v4, 0x8

    const/4 v3, 0x0

    iput-boolean p1, p0, Lcom/alensw/ui/view/PasswordView;->b:Z

    const v0, 0x7f09001d

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/PasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alensw/ui/view/LockPatternView;

    const v1, 0x7f090005

    invoke-virtual {p0, v1}, Lcom/alensw/ui/view/PasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iget-boolean v2, p0, Lcom/alensw/ui/view/PasswordView;->b:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Lcom/alensw/ui/view/LockPatternView;->setVisibility(I)V

    iget-boolean v2, p0, Lcom/alensw/ui/view/PasswordView;->b:Z

    if-eqz v2, :cond_1

    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v2, p0, Lcom/alensw/ui/view/PasswordView;->c:Landroid/widget/TextView;

    iget-boolean v5, p0, Lcom/alensw/ui/view/PasswordView;->b:Z

    if-eqz v5, :cond_2

    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v2, p0, Lcom/alensw/ui/view/PasswordView;->b:Z

    if-eqz v2, :cond_3

    new-instance v1, Lcom/alensw/ui/view/av;

    invoke-direct {v1, p0, v0}, Lcom/alensw/ui/view/av;-><init>(Lcom/alensw/ui/view/PasswordView;Lcom/alensw/ui/view/LockPatternView;)V

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/LockPatternView;->setOnPatternListener(Lcom/alensw/ui/view/aq;)V

    :goto_3
    return-void

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    move v4, v3

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/alensw/ui/view/aw;

    invoke-direct {v0, p0}, Lcom/alensw/ui/view/aw;-><init>(Lcom/alensw/ui/view/PasswordView;)V

    new-instance v2, Lcom/alensw/ui/view/ax;

    invoke-direct {v2, p0, v0}, Lcom/alensw/ui/view/ax;-><init>(Lcom/alensw/ui/view/PasswordView;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_3
.end method
