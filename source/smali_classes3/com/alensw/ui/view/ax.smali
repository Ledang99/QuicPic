.class Lcom/alensw/ui/view/ax;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Landroid/view/View$OnClickListener;

.field final synthetic b:Lcom/alensw/ui/view/PasswordView;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/PasswordView;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/ax;->b:Lcom/alensw/ui/view/PasswordView;

    iput-object p2, p0, Lcom/alensw/ui/view/ax;->a:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    sget-object v0, Lcom/alensw/ui/view/PasswordView;->a:[C

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/alensw/ui/view/PasswordView;->a:[C

    aget-char v0, v0, p1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    sget-object v0, Lcom/alensw/ui/view/PasswordView;->a:[C

    aget-char v0, v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/ax;->b:Lcom/alensw/ui/view/PasswordView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/PasswordView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03000f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alensw/ui/view/ax;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/alensw/ui/view/ax;->getItemId(I)J

    move-result-wide v2

    long-to-int v1, v2

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    check-cast p2, Landroid/widget/TextView;

    move-object v0, p2

    goto :goto_0
.end method
