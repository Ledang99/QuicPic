.class public Lcom/a/a/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final a:I

.field protected static final b:I

.field protected static final c:I

.field protected static final d:Ljava/lang/ThreadLocal;

.field private static final m:Lcom/a/a/a/n;


# instance fields
.field protected final transient e:Lcom/a/a/a/d/d;

.field protected final transient f:Lcom/a/a/a/d/a;

.field protected g:Lcom/a/a/a/m;

.field protected h:I

.field protected i:I

.field protected j:I

.field protected k:Lcom/a/a/a/b/d;

.field protected l:Lcom/a/a/a/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/a/a/a/c;->a()I

    move-result v0

    sput v0, Lcom/a/a/a/b;->a:I

    invoke-static {}, Lcom/a/a/a/i;->a()I

    move-result v0

    sput v0, Lcom/a/a/a/b;->b:I

    invoke-static {}, Lcom/a/a/a/e;->a()I

    move-result v0

    sput v0, Lcom/a/a/a/b;->c:I

    sget-object v0, Lcom/a/a/a/e/f;->a:Lcom/a/a/a/b/g;

    sput-object v0, Lcom/a/a/a/b;->m:Lcom/a/a/a/n;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/a/a/a/b;->d:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Lcom/a/a/a/m;

    invoke-direct {p0, v0}, Lcom/a/a/a/b;-><init>(Lcom/a/a/a/m;)V

    return-void
.end method

.method public constructor <init>(Lcom/a/a/a/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/a/a/a/d/d;->a()Lcom/a/a/a/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/b;->e:Lcom/a/a/a/d/d;

    invoke-static {}, Lcom/a/a/a/d/a;->a()Lcom/a/a/a/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/b;->f:Lcom/a/a/a/d/a;

    sget v0, Lcom/a/a/a/b;->a:I

    iput v0, p0, Lcom/a/a/a/b;->h:I

    sget v0, Lcom/a/a/a/b;->b:I

    iput v0, p0, Lcom/a/a/a/b;->i:I

    sget v0, Lcom/a/a/a/b;->c:I

    iput v0, p0, Lcom/a/a/a/b;->j:I

    sget-object v0, Lcom/a/a/a/b;->m:Lcom/a/a/a/n;

    iput-object v0, p0, Lcom/a/a/a/b;->l:Lcom/a/a/a/n;

    iput-object p1, p0, Lcom/a/a/a/b;->g:Lcom/a/a/a/m;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;Z)Lcom/a/a/a/b/c;
    .locals 2

    new-instance v0, Lcom/a/a/a/b/c;

    invoke-virtual {p0}, Lcom/a/a/a/b;->a()Lcom/a/a/a/e/b;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/a/a/a/b/c;-><init>(Lcom/a/a/a/e/b;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public a()Lcom/a/a/a/e/b;
    .locals 3

    sget-object v0, Lcom/a/a/a/b;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a/a/e/b;

    invoke-direct {v0}, Lcom/a/a/a/e/b;-><init>()V

    sget-object v1, Lcom/a/a/a/b;->d:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/e/b;

    goto :goto_0
.end method

.method public a(Ljava/io/InputStream;)Lcom/a/a/a/h;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/a/a/a/b;->a(Ljava/lang/Object;Z)Lcom/a/a/a/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/b;->k:Lcom/a/a/a/b/d;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/a/a/a/b;->k:Lcom/a/a/a/b/d;

    invoke-virtual {v1, v0, p1}, Lcom/a/a/a/b/d;->a(Lcom/a/a/a/b/c;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/a/a/a/b;->a(Ljava/io/InputStream;Lcom/a/a/a/b/c;)Lcom/a/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/io/InputStream;Lcom/a/a/a/b/c;)Lcom/a/a/a/h;
    .locals 7

    new-instance v0, Lcom/a/a/a/c/a;

    invoke-direct {v0, p2, p1}, Lcom/a/a/a/c/a;-><init>(Lcom/a/a/a/b/c;Ljava/io/InputStream;)V

    iget v1, p0, Lcom/a/a/a/b;->i:I

    iget-object v2, p0, Lcom/a/a/a/b;->g:Lcom/a/a/a/m;

    iget-object v3, p0, Lcom/a/a/a/b;->f:Lcom/a/a/a/d/a;

    iget-object v4, p0, Lcom/a/a/a/b;->e:Lcom/a/a/a/d/d;

    sget-object v5, Lcom/a/a/a/c;->b:Lcom/a/a/a/c;

    invoke-virtual {p0, v5}, Lcom/a/a/a/b;->a(Lcom/a/a/a/c;)Z

    move-result v5

    sget-object v6, Lcom/a/a/a/c;->a:Lcom/a/a/a/c;

    invoke-virtual {p0, v6}, Lcom/a/a/a/b;->a(Lcom/a/a/a/c;)Z

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/a/a/a/c/a;->a(ILcom/a/a/a/m;Lcom/a/a/a/d/a;Lcom/a/a/a/d/d;ZZ)Lcom/a/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/a/a/a/c;)Z
    .locals 2

    iget v0, p0, Lcom/a/a/a/b;->h:I

    invoke-virtual {p1}, Lcom/a/a/a/c;->c()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
