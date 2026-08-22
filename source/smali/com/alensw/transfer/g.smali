.class Lcom/alensw/transfer/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# instance fields
.field final synthetic a:Landroid/app/ActionBar$Tab;

.field final synthetic b:Lcom/alensw/transfer/TransferActivity;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/TransferActivity;Landroid/app/ActionBar$Tab;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/g;->b:Lcom/alensw/transfer/TransferActivity;

    iput-object p2, p0, Lcom/alensw/transfer/g;->a:Landroid/app/ActionBar$Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/transfer/g;->a:Landroid/app/ActionBar$Tab;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/alensw/transfer/g;->b:Lcom/alensw/transfer/TransferActivity;

    invoke-static {v1}, Lcom/alensw/transfer/TransferActivity;->a(Lcom/alensw/transfer/TransferActivity;)Landroid/support/v4/a/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/a/p;->setCurrentItem(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0

    return-void
.end method
