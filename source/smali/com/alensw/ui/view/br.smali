.class Lcom/alensw/ui/view/br;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/view/bp;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/bp;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/br;->a:Lcom/alensw/ui/view/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/view/br;->a:Lcom/alensw/ui/view/bp;

    iget-object v0, v0, Lcom/alensw/ui/view/bp;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/br;->a:Lcom/alensw/ui/view/bp;

    iget-object v0, v0, Lcom/alensw/ui/view/bp;->m:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/alensw/ui/view/bp;->f:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method
