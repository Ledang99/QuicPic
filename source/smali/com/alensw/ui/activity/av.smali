.class Lcom/alensw/ui/activity/av;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/view/cb;


# instance fields
.field final synthetic a:Lcom/alensw/ui/activity/ao;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/av;->a:Lcom/alensw/ui/activity/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alensw/ui/view/TitleBar;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/activity/av;->a:Lcom/alensw/ui/activity/ao;

    invoke-virtual {v0, p2}, Lcom/alensw/ui/activity/ao;->c(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/alensw/ui/view/TitleBar;Landroid/view/Menu;)Z
    .locals 1

    invoke-virtual {p1, p2}, Lcom/alensw/ui/view/TitleBar;->a(Landroid/view/Menu;)V

    iget-object v0, p0, Lcom/alensw/ui/activity/av;->a:Lcom/alensw/ui/activity/ao;

    invoke-virtual {v0, p2}, Lcom/alensw/ui/activity/ao;->d(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
