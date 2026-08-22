.class Lcom/alensw/ui/view/by;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/view/TitleBar;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/TitleBar;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/by;->a:Lcom/alensw/ui/view/TitleBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/by;->a:Lcom/alensw/ui/view/TitleBar;

    invoke-static {v0}, Lcom/alensw/ui/view/TitleBar;->b(Lcom/alensw/ui/view/TitleBar;)Lcom/alensw/ui/view/ActionLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/ui/view/ActionLayout;->requestLayout()V

    iget-object v0, p0, Lcom/alensw/ui/view/by;->a:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {v0}, Lcom/alensw/ui/view/TitleBar;->requestLayout()V

    iget-object v0, p0, Lcom/alensw/ui/view/by;->a:Lcom/alensw/ui/view/TitleBar;

    invoke-static {v0}, Lcom/alensw/ui/view/TitleBar;->c(Lcom/alensw/ui/view/TitleBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/by;->a:Lcom/alensw/ui/view/TitleBar;

    invoke-static {v0}, Lcom/alensw/ui/view/TitleBar;->d(Lcom/alensw/ui/view/TitleBar;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/by;->a:Lcom/alensw/ui/view/TitleBar;

    invoke-static {v0}, Lcom/alensw/ui/view/TitleBar;->d(Lcom/alensw/ui/view/TitleBar;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method
