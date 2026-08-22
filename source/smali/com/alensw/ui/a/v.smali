.class final Lcom/alensw/ui/a/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    :goto_0
    return v5

    :cond_0
    new-instance v1, Lcom/alensw/ui/a/w;

    invoke-direct {v1, p0, p1}, Lcom/alensw/ui/a/w;-><init>(Lcom/alensw/ui/a/v;Landroid/widget/EditText;)V

    new-instance v2, Lcom/alensw/b/g/b;

    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alensw/b/g/b;-><init>(Landroid/content/Context;)V

    const v0, 0x1020021

    const v3, 0x1040001

    invoke-virtual {v2, v4, v0, v4, v3}, Lcom/alensw/b/g/b;->add(IIII)Landroid/view/MenuItem;

    const v0, 0x1020020

    const v3, 0x1040003

    invoke-virtual {v2, v4, v0, v4, v3}, Lcom/alensw/b/g/b;->add(IIII)Landroid/view/MenuItem;

    const v0, 0x1020022

    const v3, 0x104000b

    invoke-virtual {v2, v4, v0, v4, v3}, Lcom/alensw/b/g/b;->add(IIII)Landroid/view/MenuItem;

    const v0, 0x102001f

    const v3, 0x104000d

    invoke-virtual {v2, v4, v0, v4, v3}, Lcom/alensw/b/g/b;->add(IIII)Landroid/view/MenuItem;

    invoke-virtual {v2}, Lcom/alensw/b/g/b;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    invoke-virtual {v2, v0}, Lcom/alensw/b/g/b;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, p1}, Lcom/alensw/b/g/b;->a(Landroid/view/View;)V

    goto :goto_0
.end method
