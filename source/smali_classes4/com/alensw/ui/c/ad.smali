.class Lcom/alensw/ui/c/ad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/a/aj;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/z;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/z;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/ad;->a:Lcom/alensw/ui/c/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/alensw/b/h/h;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/ad;->a:Lcom/alensw/ui/c/z;

    iget v0, v0, Lcom/alensw/ui/c/z;->H:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->w:Lcom/alensw/b/a/a;

    invoke-virtual {p2}, Lcom/alensw/b/h/h;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/a/c;

    invoke-virtual {v1, p1, v0}, Lcom/alensw/b/a/a;->a(Ljava/lang/Object;Lcom/alensw/b/a/c;)Lcom/alensw/b/a/c;

    iget-object v0, p0, Lcom/alensw/ui/c/ad;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->h()V

    :cond_0
    return-void
.end method
