.class final Lcom/alensw/ui/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lcom/alensw/ui/a/t;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/alensw/ui/a/t;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/a/i;->a:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/alensw/ui/a/i;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/alensw/ui/a/i;->c:Lcom/alensw/ui/a/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/a/i;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/alensw/b/l/b;->a(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/alensw/ui/a/i;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/alensw/b/l/b;->a(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/alensw/ui/a/i;->c:Lcom/alensw/ui/a/t;

    invoke-interface {v2, v0, v1}, Lcom/alensw/ui/a/t;->a(II)V

    :cond_0
    return-void
.end method
