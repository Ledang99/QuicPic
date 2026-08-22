.class Lcom/alensw/b/a/d;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/alensw/b/a/a;

.field private final b:Lcom/alensw/b/a/c;


# direct methods
.method private constructor <init>(Lcom/alensw/b/a/a;)V
    .locals 1

    iput-object p1, p0, Lcom/alensw/b/a/d;->a:Lcom/alensw/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alensw/b/a/e;

    invoke-direct {v0, p0}, Lcom/alensw/b/a/e;-><init>(Lcom/alensw/b/a/d;)V

    iput-object v0, p0, Lcom/alensw/b/a/d;->b:Lcom/alensw/b/a/c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alensw/b/a/a;Lcom/alensw/b/a/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alensw/b/a/d;-><init>(Lcom/alensw/b/a/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/alensw/b/a/d;->b:Lcom/alensw/b/a/c;

    iget-object v0, v2, Lcom/alensw/b/a/c;->g:Lcom/alensw/b/a/c;

    :goto_0
    if-eq v0, v2, :cond_1

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alensw/b/a/c;->g:Lcom/alensw/b/a/c;

    iput-object v4, v0, Lcom/alensw/b/a/c;->f:Lcom/alensw/b/a/c;

    iput-object v4, v0, Lcom/alensw/b/a/c;->g:Lcom/alensw/b/a/c;

    iput-object v4, v0, Lcom/alensw/b/a/c;->e:Ljava/lang/Object;

    iget-object v3, p0, Lcom/alensw/b/a/d;->a:Lcom/alensw/b/a/a;

    invoke-virtual {v3, v0}, Lcom/alensw/b/a/a;->a(Lcom/alensw/b/a/c;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v0, "ConcurrentLruHashMap"

    const-string v1, "entry is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object v2, v2, Lcom/alensw/b/a/c;->f:Lcom/alensw/b/a/c;

    iput-object v2, v2, Lcom/alensw/b/a/c;->g:Lcom/alensw/b/a/c;

    return-void
.end method

.method public a(Lcom/alensw/b/a/c;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/b/a/d;->b:Lcom/alensw/b/a/c;

    iget-object v1, v0, Lcom/alensw/b/a/c;->f:Lcom/alensw/b/a/c;

    iput-object v0, p1, Lcom/alensw/b/a/c;->g:Lcom/alensw/b/a/c;

    iput-object v1, p1, Lcom/alensw/b/a/c;->f:Lcom/alensw/b/a/c;

    iput-object p1, v0, Lcom/alensw/b/a/c;->f:Lcom/alensw/b/a/c;

    iput-object p1, v1, Lcom/alensw/b/a/c;->g:Lcom/alensw/b/a/c;

    return-void
.end method

.method public b()Lcom/alensw/b/a/c;
    .locals 2

    iget-object v0, p0, Lcom/alensw/b/a/d;->b:Lcom/alensw/b/a/c;

    iget-object v0, v0, Lcom/alensw/b/a/c;->g:Lcom/alensw/b/a/c;

    iget-object v1, p0, Lcom/alensw/b/a/d;->b:Lcom/alensw/b/a/c;

    if-eq v0, v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/alensw/b/a/c;)Z
    .locals 3

    iget-object v0, p1, Lcom/alensw/b/a/c;->f:Lcom/alensw/b/a/c;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alensw/b/a/c;->g:Lcom/alensw/b/a/c;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/alensw/b/a/c;->f:Lcom/alensw/b/a/c;

    iget-object v2, p1, Lcom/alensw/b/a/c;->g:Lcom/alensw/b/a/c;

    iput-object v2, v1, Lcom/alensw/b/a/c;->g:Lcom/alensw/b/a/c;

    iget-object v1, p1, Lcom/alensw/b/a/c;->g:Lcom/alensw/b/a/c;

    iget-object v2, p1, Lcom/alensw/b/a/c;->f:Lcom/alensw/b/a/c;

    iput-object v2, v1, Lcom/alensw/b/a/c;->f:Lcom/alensw/b/a/c;

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/alensw/b/a/c;->f:Lcom/alensw/b/a/c;

    iput-object v1, p1, Lcom/alensw/b/a/c;->g:Lcom/alensw/b/a/c;

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
