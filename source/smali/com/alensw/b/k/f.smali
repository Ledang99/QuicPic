.class public Lcom/alensw/b/k/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alensw/b/k/e;

.field private b:Lcom/alensw/b/k/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs a(III[Ljava/lang/Object;)Lcom/alensw/b/k/e;
    .locals 2

    iget-object v0, p0, Lcom/alensw/b/k/f;->a:Lcom/alensw/b/k/e;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alensw/b/k/e;->a(III[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/alensw/b/k/e;->g:Lcom/alensw/b/k/e;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/k/f;->a:Lcom/alensw/b/k/e;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alensw/b/k/e;->a()V

    iget-object v0, v0, Lcom/alensw/b/k/e;->g:Lcom/alensw/b/k/e;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/b/k/f;->b:Lcom/alensw/b/k/e;

    iput-object v0, p0, Lcom/alensw/b/k/f;->a:Lcom/alensw/b/k/e;

    return-void
.end method

.method public a(Lcom/alensw/b/k/e;)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/k/f;->a:Lcom/alensw/b/k/e;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/alensw/b/k/f;->b:Lcom/alensw/b/k/e;

    iput-object p1, p0, Lcom/alensw/b/k/f;->a:Lcom/alensw/b/k/e;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alensw/b/k/f;->b:Lcom/alensw/b/k/e;

    iput-object p1, v0, Lcom/alensw/b/k/e;->g:Lcom/alensw/b/k/e;

    iput-object p1, p0, Lcom/alensw/b/k/f;->b:Lcom/alensw/b/k/e;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/alensw/b/k/e;->g:Lcom/alensw/b/k/e;

    goto :goto_0
.end method

.method public b()Lcom/alensw/b/k/e;
    .locals 2

    iget-object v0, p0, Lcom/alensw/b/k/f;->a:Lcom/alensw/b/k/e;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alensw/b/k/e;->g:Lcom/alensw/b/k/e;

    iput-object v1, p0, Lcom/alensw/b/k/f;->a:Lcom/alensw/b/k/e;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alensw/b/k/e;->g:Lcom/alensw/b/k/e;

    :cond_0
    return-object v0
.end method
