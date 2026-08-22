.class final Lcom/alensw/ui/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/a/s;

.field final synthetic b:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/alensw/ui/a/s;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/a/n;->a:Lcom/alensw/ui/a/s;

    iput-object p2, p0, Lcom/alensw/ui/a/n;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/a/n;->a:Lcom/alensw/ui/a/s;

    iget-object v1, p0, Lcom/alensw/ui/a/n;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alensw/ui/a/s;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
