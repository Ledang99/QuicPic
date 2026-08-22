.class public Lcom/a/a/a/c/b;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Ljava/lang/Object;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/util/HashSet;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/a/c/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/a/a/a/h;)Lcom/a/a/a/c/b;
    .locals 1

    new-instance v0, Lcom/a/a/a/c/b;

    invoke-direct {v0, p0}, Lcom/a/a/a/c/b;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/a/a/a/c/b;
    .locals 2

    new-instance v0, Lcom/a/a/a/c/b;

    iget-object v1, p0, Lcom/a/a/a/c/b;->a:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/a/a/a/c/b;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/a/a/a/c/b;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    iput-object p1, p0, Lcom/a/a/a/c/b;->b:Ljava/lang/String;

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/a/a/a/c/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/a/a/a/c/b;->c:Ljava/lang/String;

    if-nez v2, :cond_2

    iput-object p1, p0, Lcom/a/a/a/c/b;->c:Ljava/lang/String;

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/a/a/a/c/b;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/a/a/a/c/b;->d:Ljava/util/HashSet;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v2, p0, Lcom/a/a/a/c/b;->d:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/a/a/a/c/b;->d:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/a/a/a/c/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/a/a/a/c/b;->d:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/a/a/a/c/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v2, p0, Lcom/a/a/a/c/b;->d:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/c/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/a/c/b;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/a/c/b;->d:Ljava/util/HashSet;

    return-void
.end method

.method public c()Lcom/a/a/a/f;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/c/b;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/a/a/a/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/c/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/a/a/a/h;

    invoke-virtual {v0}, Lcom/a/a/a/h;->e()Lcom/a/a/a/f;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
