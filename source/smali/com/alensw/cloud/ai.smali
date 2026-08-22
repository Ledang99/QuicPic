.class Lcom/alensw/cloud/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/cloud/UrlTaskActivity;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/UrlTaskActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/ai;->a:Lcom/alensw/cloud/UrlTaskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/alensw/cloud/ad;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/alensw/cloud/ad;

    iget v1, v0, Lcom/alensw/cloud/ad;->d:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/alensw/cloud/ai;->a:Lcom/alensw/cloud/UrlTaskActivity;

    invoke-static {v1, v0}, Lcom/alensw/cloud/UrlTaskActivity;->b(Lcom/alensw/cloud/UrlTaskActivity;Lcom/alensw/cloud/ad;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/alensw/cloud/ai;->a:Lcom/alensw/cloud/UrlTaskActivity;

    invoke-static {v1}, Lcom/alensw/cloud/UrlTaskActivity;->b(Lcom/alensw/cloud/UrlTaskActivity;)Lcom/alensw/cloud/UrlTaskService;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alensw/cloud/ai;->a:Lcom/alensw/cloud/UrlTaskActivity;

    invoke-static {v1}, Lcom/alensw/cloud/UrlTaskActivity;->b(Lcom/alensw/cloud/UrlTaskActivity;)Lcom/alensw/cloud/UrlTaskService;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/cloud/ai;->a:Lcom/alensw/cloud/UrlTaskActivity;

    invoke-static {v2}, Lcom/alensw/cloud/UrlTaskActivity;->c(Lcom/alensw/cloud/UrlTaskActivity;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/alensw/cloud/UrlTaskService;->b(ILcom/alensw/cloud/ad;)V

    goto :goto_0
.end method
