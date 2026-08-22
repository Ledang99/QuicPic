.class Lcom/alensw/ui/c/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/alensw/ui/c/j;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/j;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/k;->b:Lcom/alensw/ui/c/j;

    iput-object p2, p0, Lcom/alensw/ui/c/k;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alensw/ui/c/k;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/k;->b:Lcom/alensw/ui/c/j;

    iget-object v0, v0, Lcom/alensw/ui/c/j;->f:Lcom/alensw/ui/c/a;

    iget-object v1, v0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    iget-object v0, p0, Lcom/alensw/ui/c/k;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/k;->b:Lcom/alensw/ui/c/j;

    iget-object v0, v0, Lcom/alensw/ui/c/j;->f:Lcom/alensw/ui/c/a;

    iget-object v1, v0, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    iget-object v0, p0, Lcom/alensw/ui/c/k;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
