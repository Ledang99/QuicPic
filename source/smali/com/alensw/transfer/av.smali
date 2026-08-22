.class Lcom/alensw/transfer/av;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/alensw/transfer/ac;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/ac;Landroid/app/AlertDialog;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/av;->c:Lcom/alensw/transfer/ac;

    iput-object p2, p0, Lcom/alensw/transfer/av;->a:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/alensw/transfer/av;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/transfer/av;->a:Landroid/app/AlertDialog;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/alensw/transfer/av;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/alensw/transfer/av;->a:Landroid/app/AlertDialog;

    invoke-static {v0, v1}, Lcom/alensw/ui/a/u;->a(Landroid/content/Context;Landroid/app/Dialog;)V

    return-void
.end method
