.class Lcom/alensw/ui/view/ca;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View$OnClickListener;

.field final synthetic b:Lcom/alensw/ui/view/TitleBar;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/TitleBar;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/ca;->b:Lcom/alensw/ui/view/TitleBar;

    iput-object p2, p0, Lcom/alensw/ui/view/ca;->a:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/view/ca;->a:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/alensw/ui/view/ca;->b:Lcom/alensw/ui/view/TitleBar;

    invoke-static {v1}, Lcom/alensw/ui/view/TitleBar;->e(Lcom/alensw/ui/view/TitleBar;)Lcom/alensw/ui/view/TitleView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
