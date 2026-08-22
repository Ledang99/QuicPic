.class Lcom/alensw/ui/c/de;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/dd;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/dd;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/de;->a:Lcom/alensw/ui/c/dd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/c/de;->a:Lcom/alensw/ui/c/dd;

    iget-object v0, v0, Lcom/alensw/ui/c/dd;->a:Lcom/alensw/ui/c/dc;

    iget v0, v0, Lcom/alensw/ui/c/dc;->H:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/de;->a:Lcom/alensw/ui/c/dd;

    iget-object v0, v0, Lcom/alensw/ui/c/dd;->a:Lcom/alensw/ui/c/dc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/dc;->c(Z)V

    iget-object v0, p0, Lcom/alensw/ui/c/de;->a:Lcom/alensw/ui/c/dd;

    iget-object v0, v0, Lcom/alensw/ui/c/dd;->a:Lcom/alensw/ui/c/dc;

    iget-object v0, v0, Lcom/alensw/ui/c/dc;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/de;->a:Lcom/alensw/ui/c/dd;

    iget-object v0, v0, Lcom/alensw/ui/c/dd;->a:Lcom/alensw/ui/c/dc;

    iget-object v0, v0, Lcom/alensw/ui/c/dc;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-object v1, p0, Lcom/alensw/ui/c/de;->a:Lcom/alensw/ui/c/dd;

    iget-object v1, v1, Lcom/alensw/ui/c/dd;->a:Lcom/alensw/ui/c/dc;

    const v2, 0x7f0a004e

    invoke-virtual {v1, v2}, Lcom/alensw/ui/c/dc;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/ImageGridView;->setEmptyText(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/de;->a:Lcom/alensw/ui/c/dd;

    iget-object v0, v0, Lcom/alensw/ui/c/dd;->a:Lcom/alensw/ui/c/dc;

    invoke-virtual {v0}, Lcom/alensw/ui/c/dc;->m()I

    goto :goto_0
.end method
