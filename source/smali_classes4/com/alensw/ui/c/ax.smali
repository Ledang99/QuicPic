.class Lcom/alensw/ui/c/ax;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/as;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/as;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/ax;->a:Lcom/alensw/ui/c/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/ax;->a:Lcom/alensw/ui/c/as;

    iget-object v0, v0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->u()V

    iget-object v0, p0, Lcom/alensw/ui/c/ax;->a:Lcom/alensw/ui/c/as;

    iget v0, v0, Lcom/alensw/ui/c/as;->H:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/ax;->a:Lcom/alensw/ui/c/as;

    iget-object v1, v0, Lcom/alensw/ui/c/as;->C:Lcom/alensw/ui/c/cx;

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alensw/ui/c/cx;->a(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
