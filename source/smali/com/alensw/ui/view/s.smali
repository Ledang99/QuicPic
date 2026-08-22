.class Lcom/alensw/ui/view/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/view/ConfirmPreference;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/ConfirmPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/s;->a:Lcom/alensw/ui/view/ConfirmPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/s;->a:Lcom/alensw/ui/view/ConfirmPreference;

    iget-object v0, v0, Lcom/alensw/ui/view/ConfirmPreference;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/s;->a:Lcom/alensw/ui/view/ConfirmPreference;

    iget-object v0, v0, Lcom/alensw/ui/view/ConfirmPreference;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
