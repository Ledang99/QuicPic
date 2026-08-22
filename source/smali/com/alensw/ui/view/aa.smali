.class Lcom/alensw/ui/view/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/a/aj;
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/view/z;

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/net/Uri;

.field private d:Lcom/alensw/b/h/h;


# direct methods
.method public constructor <init>(Lcom/alensw/ui/view/z;Landroid/widget/ImageView;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/aa;->a:Lcom/alensw/ui/view/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alensw/ui/view/aa;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/alensw/ui/view/aa;->c:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/alensw/b/h/h;)V
    .locals 2

    invoke-virtual {p2}, Lcom/alensw/b/h/h;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/h/h;

    iput-object v0, p0, Lcom/alensw/ui/view/aa;->d:Lcom/alensw/b/h/h;

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->w:Lcom/alensw/b/a/a;

    invoke-virtual {p2}, Lcom/alensw/b/h/h;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/a/c;

    invoke-virtual {v1, p1, v0}, Lcom/alensw/b/a/a;->a(Ljava/lang/Object;Lcom/alensw/b/a/c;)Lcom/alensw/b/a/c;

    iget-object v0, p0, Lcom/alensw/ui/view/aa;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/view/aa;->a:Lcom/alensw/ui/view/z;

    iget-object v1, p0, Lcom/alensw/ui/view/aa;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/z;->a(Landroid/net/Uri;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/view/aa;->b:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/aa;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alensw/ui/view/aa;->d:Lcom/alensw/b/h/h;

    invoke-static {v0, v1}, Lcom/alensw/ui/view/z;->a(Landroid/widget/ImageView;Lcom/alensw/b/h/h;)V

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/view/aa;->d:Lcom/alensw/b/h/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/aa;->d:Lcom/alensw/b/h/h;

    invoke-virtual {v0}, Lcom/alensw/b/h/h;->m()I

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/ui/view/aa;->d:Lcom/alensw/b/h/h;

    return-void
.end method
