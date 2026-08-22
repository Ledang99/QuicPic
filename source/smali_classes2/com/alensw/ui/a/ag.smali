.class Lcom/alensw/ui/a/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/a/ae;


# direct methods
.method constructor <init>(Lcom/alensw/ui/a/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/a/ag;->a:Lcom/alensw/ui/a/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/a/ag;->a:Lcom/alensw/ui/a/ae;

    iget-object v1, p0, Lcom/alensw/ui/a/ag;->a:Lcom/alensw/ui/a/ae;

    iget-object v1, v1, Lcom/alensw/ui/a/ae;->c:Lcom/alensw/ui/view/PathBar;

    invoke-virtual {v1}, Lcom/alensw/ui/view/PathBar;->getPath()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/ui/a/ae;->a(Ljava/io/File;)V

    return-void
.end method
