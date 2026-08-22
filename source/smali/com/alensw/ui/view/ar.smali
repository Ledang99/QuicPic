.class final Lcom/alensw/ui/view/ar;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/preference/ListPreference;

.field final synthetic b:Z

.field final synthetic c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/preference/ListPreference;ZLandroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/ar;->a:Landroid/preference/ListPreference;

    iput-boolean p2, p0, Lcom/alensw/ui/view/ar;->b:Z

    iput-object p3, p0, Lcom/alensw/ui/view/ar;->c:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/alensw/ui/view/ar;->a:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/alensw/ui/view/ar;->a:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alensw/ui/a/u;->a(Landroid/content/Context;Landroid/app/Dialog;)V

    instance-of v2, v0, Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080007

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v0, 0x7f01000e

    invoke-static {v1, v0}, Lcom/alensw/ui/activity/ao;->b(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v5, v0, Landroid/widget/CheckedTextView;

    if-eqz v5, :cond_0

    check-cast v0, Landroid/widget/CheckedTextView;

    iget-boolean v5, p0, Lcom/alensw/ui/view/ar;->b:Z

    invoke-static {v0, v3, v4, v5}, Lcom/alensw/ui/view/ModernListPreference;->a(Landroid/widget/CheckedTextView;IIZ)V

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/alensw/ui/view/as;

    invoke-direct {v0, p0, v3, v4}, Lcom/alensw/ui/view/as;-><init>(Lcom/alensw/ui/view/ar;II)V

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/alensw/ui/view/ar;->c:Landroid/os/Handler;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method
