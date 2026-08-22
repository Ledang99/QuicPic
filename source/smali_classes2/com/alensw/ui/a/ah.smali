.class Lcom/alensw/ui/a/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/a/ae;


# direct methods
.method constructor <init>(Lcom/alensw/ui/a/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/a/ah;->a:Lcom/alensw/ui/a/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/a/ah;->a:Lcom/alensw/ui/a/ae;

    iget-object v1, v0, Lcom/alensw/ui/a/ae;->c:Lcom/alensw/ui/view/PathBar;

    iget-object v0, p0, Lcom/alensw/ui/a/ah;->a:Lcom/alensw/ui/a/ae;

    iget-object v0, v0, Lcom/alensw/ui/a/ae;->k:Lcom/alensw/a/e;

    iget-object v0, v0, Lcom/alensw/a/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v1, v0}, Lcom/alensw/ui/view/PathBar;->setPath(Ljava/io/File;)V

    iget-object v0, p0, Lcom/alensw/ui/a/ah;->a:Lcom/alensw/ui/a/ae;

    iget-object v1, p0, Lcom/alensw/ui/a/ah;->a:Lcom/alensw/ui/a/ae;

    iget-object v1, v1, Lcom/alensw/ui/a/ae;->c:Lcom/alensw/ui/view/PathBar;

    invoke-virtual {v1}, Lcom/alensw/ui/view/PathBar;->getPath()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/ui/a/ae;->a(Ljava/io/File;)V

    return-void
.end method
