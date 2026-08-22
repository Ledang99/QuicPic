.class Lcom/alensw/ui/c/cs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/bz;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/bz;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/cs;->a:Lcom/alensw/ui/c/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/c/cs;->a:Lcom/alensw/ui/c/bz;

    iget-boolean v0, v0, Lcom/alensw/ui/c/bz;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/cs;->a:Lcom/alensw/ui/c/bz;

    new-instance v1, Lcom/alensw/a/e;

    iget-object v2, p0, Lcom/alensw/ui/c/cs;->a:Lcom/alensw/ui/c/bz;

    iget-object v2, v2, Lcom/alensw/ui/c/bz;->k:Lcom/alensw/ui/view/PathBar;

    invoke-virtual {v2}, Lcom/alensw/ui/view/PathBar;->getPath()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/alensw/a/e;-><init>(Ljava/io/File;I)V

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/bz;->b(Lcom/alensw/a/e;)V

    :cond_0
    return-void
.end method
