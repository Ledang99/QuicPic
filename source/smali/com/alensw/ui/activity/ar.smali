.class final Lcom/alensw/ui/activity/ar;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/ar;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/alensw/ui/activity/ar;->a:Landroid/app/Activity;

    new-instance v0, Lcom/alensw/b/g/l;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x102002c

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/alensw/b/g/l;-><init>(Lcom/alensw/b/g/b;Landroid/content/Context;IILjava/lang/CharSequence;)V

    invoke-virtual {v6, v3, v0}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    return-void
.end method
