.class Lcom/alensw/ui/a/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/a/an;

.field final synthetic b:Lcom/alensw/ui/a/ae;


# direct methods
.method constructor <init>(Lcom/alensw/ui/a/ae;Lcom/alensw/ui/a/an;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/a/ai;->b:Lcom/alensw/ui/a/ae;

    iput-object p2, p0, Lcom/alensw/ui/a/ai;->a:Lcom/alensw/ui/a/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/a/ai;->b:Lcom/alensw/ui/a/ae;

    iget-object v0, v0, Lcom/alensw/ui/a/ae;->c:Lcom/alensw/ui/view/PathBar;

    invoke-virtual {v0}, Lcom/alensw/ui/view/PathBar;->getPath()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/a/ai;->a:Lcom/alensw/ui/a/an;

    invoke-interface {v1, v0}, Lcom/alensw/ui/a/an;->a(Ljava/io/File;)V

    :cond_0
    return-void
.end method
