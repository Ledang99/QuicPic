.class Lcom/alensw/ui/a/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/a/p;


# direct methods
.method constructor <init>(Lcom/alensw/ui/a/p;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/a/q;->a:Lcom/alensw/ui/a/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/a/q;->a:Lcom/alensw/ui/a/p;

    iget-object v1, v0, Lcom/alensw/ui/a/p;->d:Lcom/alensw/ui/view/TitleView;

    iget-object v0, p0, Lcom/alensw/ui/a/q;->a:Lcom/alensw/ui/a/p;

    iget-object v0, v0, Lcom/alensw/ui/a/p;->c:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/alensw/ui/view/TitleView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
