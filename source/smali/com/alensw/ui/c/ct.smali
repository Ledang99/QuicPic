.class Lcom/alensw/ui/c/ct;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/a/aj;
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/bz;

.field private final b:Ljava/util/concurrent/atomic/AtomicReference;

.field private final c:Lcom/alensw/a/p;

.field private final d:Lcom/alensw/a/e;

.field private final e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/alensw/ui/c/bz;Lcom/alensw/a/e;Lcom/alensw/a/p;II)V
    .locals 1

    iput-object p1, p0, Lcom/alensw/ui/c/ct;->a:Lcom/alensw/ui/c/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/c/ct;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/alensw/ui/c/ct;->c:Lcom/alensw/a/p;

    iput-object p2, p0, Lcom/alensw/ui/c/ct;->d:Lcom/alensw/a/e;

    iput p4, p0, Lcom/alensw/ui/c/ct;->e:I

    iput p5, p0, Lcom/alensw/ui/c/ct;->f:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/alensw/b/h/h;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/ct;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Lcom/alensw/b/h/h;->l()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alensw/ui/c/ct;->a:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0, p0}, Lcom/alensw/ui/view/ImageGridView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/c/ct;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/h/h;

    iget-object v1, p0, Lcom/alensw/ui/c/ct;->a:Lcom/alensw/ui/c/bz;

    iget v1, v1, Lcom/alensw/ui/c/bz;->H:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/ct;->c:Lcom/alensw/a/p;

    invoke-virtual {v1}, Lcom/alensw/a/p;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/ct;->c:Lcom/alensw/a/p;

    iget v2, p0, Lcom/alensw/ui/c/ct;->f:I

    invoke-virtual {v1, v2, v0}, Lcom/alensw/a/p;->a(ILcom/alensw/b/h/h;)V

    iget-object v1, p0, Lcom/alensw/ui/c/ct;->a:Lcom/alensw/ui/c/bz;

    iget-object v1, v1, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    iget-object v2, p0, Lcom/alensw/ui/c/ct;->a:Lcom/alensw/ui/c/bz;

    iget-object v2, v2, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    iget-object v3, p0, Lcom/alensw/ui/c/ct;->d:Lcom/alensw/a/e;

    invoke-virtual {v2, v3}, Lcom/alensw/a/x;->b(Lcom/alensw/a/e;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alensw/ui/view/ImageGridView;->d(I)Z

    iget v1, p0, Lcom/alensw/ui/c/ct;->f:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alensw/ui/c/ct;->e:I

    iget-object v3, p0, Lcom/alensw/ui/c/ct;->d:Lcom/alensw/a/e;

    invoke-virtual {v3}, Lcom/alensw/a/e;->j()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->t:Lcom/alensw/a/ah;

    iget-object v2, p0, Lcom/alensw/ui/c/ct;->d:Lcom/alensw/a/e;

    iget v3, p0, Lcom/alensw/ui/c/ct;->f:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alensw/ui/c/ct;->f:I

    invoke-virtual {v2, v3}, Lcom/alensw/a/e;->e(I)Lcom/alensw/a/d;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Lcom/alensw/a/ah;->a(Lcom/alensw/a/d;ZLcom/alensw/a/aj;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alensw/b/h/h;->m()I

    :cond_1
    return-void
.end method
