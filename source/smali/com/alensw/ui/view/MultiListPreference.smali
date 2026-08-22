.class public Lcom/alensw/ui/view/MultiListPreference;
.super Lcom/alensw/ui/view/ModernListPreference;


# instance fields
.field private a:Z

.field private b:I

.field private final c:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alensw/ui/view/MultiListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alensw/ui/view/MultiListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/ui/view/ModernListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/alensw/ui/view/MultiListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/alensw/ui/view/MultiListPreference;->c:[Z

    return-void
.end method

.method static synthetic a(Lcom/alensw/ui/view/MultiListPreference;)[Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/MultiListPreference;->c:[Z

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x1

    iget v1, p0, Lcom/alensw/ui/view/MultiListPreference;->b:I

    if-eq v1, p1, :cond_4

    move v1, v2

    :goto_0
    if-nez v1, :cond_0

    iget-boolean v3, p0, Lcom/alensw/ui/view/MultiListPreference;->a:Z

    if-nez v3, :cond_6

    :cond_0
    iput p1, p0, Lcom/alensw/ui/view/MultiListPreference;->b:I

    iput-boolean v2, p0, Lcom/alensw/ui/view/MultiListPreference;->a:Z

    invoke-virtual {p0, p1}, Lcom/alensw/ui/view/MultiListPreference;->persistInt(I)Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/alensw/ui/view/MultiListPreference;->notifyChanged()V

    :cond_1
    invoke-virtual {p0}, Lcom/alensw/ui/view/MultiListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_1
    iget-object v4, p0, Lcom/alensw/ui/view/MultiListPreference;->c:[Z

    array-length v4, v4

    if-ge v0, v4, :cond_5

    iget v4, p0, Lcom/alensw/ui/view/MultiListPreference;->b:I

    shl-int v5, v2, v0

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v1, v0

    goto :goto_0

    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/MultiListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/alensw/ui/view/MultiListPreference;->c:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/alensw/ui/view/MultiListPreference;->c:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/alensw/ui/view/MultiListPreference;->b:I

    if-eq v0, v1, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/MultiListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/alensw/ui/view/MultiListPreference;->a(I)V

    :cond_2
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/alensw/ui/view/MultiListPreference;->c:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v4, p0, Lcom/alensw/ui/view/MultiListPreference;->c:[Z

    iget v2, p0, Lcom/alensw/ui/view/MultiListPreference;->b:I

    shl-int v5, v3, v0

    and-int/2addr v2, v5

    if-eqz v2, :cond_0

    move v2, v3

    :goto_1
    aput-boolean v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/alensw/ui/view/MultiListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/view/MultiListPreference;->c:[Z

    new-instance v2, Lcom/alensw/ui/view/at;

    invoke-direct {v2, p0}, Lcom/alensw/ui/view/at;-><init>(Lcom/alensw/ui/view/MultiListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {p0, v3}, Lcom/alensw/ui/view/MultiListPreference;->a(Landroid/preference/ListPreference;Z)V

    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/alensw/ui/view/MultiListPreference;->b:I

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/MultiListPreference;->getPersistedInt(I)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/MultiListPreference;->a(I)V

    return-void

    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method
