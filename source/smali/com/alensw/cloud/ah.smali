.class Lcom/alensw/cloud/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/cloud/am;


# instance fields
.field final synthetic a:Lcom/alensw/cloud/UrlTaskActivity;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/UrlTaskActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/ah;->a:Lcom/alensw/cloud/UrlTaskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alensw/cloud/ad;)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/ah;->a:Lcom/alensw/cloud/UrlTaskActivity;

    invoke-static {v0, p1}, Lcom/alensw/cloud/UrlTaskActivity;->a(Lcom/alensw/cloud/UrlTaskActivity;Lcom/alensw/cloud/ad;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/ah;->a:Lcom/alensw/cloud/UrlTaskActivity;

    invoke-static {v0}, Lcom/alensw/cloud/UrlTaskActivity;->f(Lcom/alensw/cloud/UrlTaskActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/alensw/cloud/ah;->a:Lcom/alensw/cloud/UrlTaskActivity;

    invoke-static {v0}, Lcom/alensw/cloud/UrlTaskActivity;->f(Lcom/alensw/cloud/UrlTaskActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/alensw/cloud/ah;->a:Lcom/alensw/cloud/UrlTaskActivity;

    invoke-static {v0}, Lcom/alensw/cloud/UrlTaskActivity;->a(Lcom/alensw/cloud/UrlTaskActivity;)Lcom/alensw/ui/view/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/ui/view/z;->notifyDataSetChanged()V

    return-void
.end method
