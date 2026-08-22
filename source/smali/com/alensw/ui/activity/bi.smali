.class Lcom/alensw/ui/activity/bi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/activity/SelectThemeActivity;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/SelectThemeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/bi;->a:Lcom/alensw/ui/activity/SelectThemeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/activity/bi;->a:Lcom/alensw/ui/activity/SelectThemeActivity;

    invoke-static {v0}, Lcom/alensw/ui/activity/SelectThemeActivity;->a(Lcom/alensw/ui/activity/SelectThemeActivity;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/activity/bi;->a:Lcom/alensw/ui/activity/SelectThemeActivity;

    invoke-static {v0}, Lcom/alensw/ui/activity/SelectThemeActivity;->a(Lcom/alensw/ui/activity/SelectThemeActivity;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/alensw/ui/activity/bi;->a:Lcom/alensw/ui/activity/SelectThemeActivity;

    invoke-static {v1}, Lcom/alensw/ui/activity/SelectThemeActivity;->b(Lcom/alensw/ui/activity/SelectThemeActivity;)I

    move-result v1

    div-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/alensw/ui/activity/bi;->a:Lcom/alensw/ui/activity/SelectThemeActivity;

    invoke-static {v1}, Lcom/alensw/ui/activity/SelectThemeActivity;->a(Lcom/alensw/ui/activity/SelectThemeActivity;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    :cond_1
    return-void
.end method
