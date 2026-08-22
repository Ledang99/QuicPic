.class Lcom/alensw/ui/c/cd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/a/aj;


# instance fields
.field final synthetic a:Lcom/alensw/a/e;

.field final synthetic b:Lcom/alensw/ui/c/bz;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/bz;Lcom/alensw/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/cd;->b:Lcom/alensw/ui/c/bz;

    iput-object p2, p0, Lcom/alensw/ui/c/cd;->a:Lcom/alensw/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/alensw/b/h/h;)V
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/c/cd;->b:Lcom/alensw/ui/c/bz;

    iget v0, v0, Lcom/alensw/ui/c/bz;->H:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->v:Lcom/alensw/b/a/a;

    iget-object v2, p0, Lcom/alensw/ui/c/cd;->a:Lcom/alensw/a/e;

    invoke-virtual {p2}, Lcom/alensw/b/h/h;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/a/c;

    invoke-virtual {v1, v2, v0}, Lcom/alensw/b/a/a;->a(Ljava/lang/Object;Lcom/alensw/b/a/c;)Lcom/alensw/b/a/c;

    iget-object v0, p0, Lcom/alensw/ui/c/cd;->b:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->h()V

    :cond_0
    return-void
.end method
