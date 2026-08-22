.class Lb/a/ad;
.super Lb/a/hx;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/hx;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/aa;)V
    .locals 0

    invoke-direct {p0}, Lb/a/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/z;

    invoke-virtual {p0, p1, p2}, Lb/a/ad;->a(Lb/a/hn;Lb/a/z;)V

    return-void
.end method

.method public a(Lb/a/hn;Lb/a/z;)V
    .locals 2

    check-cast p1, Lb/a/ht;

    iget-object v0, p2, Lb/a/z;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    iget-object v0, p2, Lb/a/z;->e:Lb/a/fa;

    invoke-virtual {v0}, Lb/a/fa;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/ht;->a(I)V

    iget-object v0, p2, Lb/a/z;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    iget-object v0, p2, Lb/a/z;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, Lb/a/z;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    invoke-virtual {p2}, Lb/a/z;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_1
    invoke-virtual {p2}, Lb/a/z;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_2
    invoke-virtual {p2}, Lb/a/z;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_3
    invoke-virtual {p2}, Lb/a/z;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_4
    invoke-virtual {p2}, Lb/a/z;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_5
    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lb/a/ht;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, Lb/a/z;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p2, Lb/a/z;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p2}, Lb/a/z;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p2, Lb/a/z;->c:I

    invoke-virtual {p1, v0}, Lb/a/ht;->a(I)V

    :cond_7
    invoke-virtual {p2}, Lb/a/z;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p2, Lb/a/z;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p2}, Lb/a/z;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p2, Lb/a/z;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p2}, Lb/a/z;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p2, Lb/a/z;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/ht;->a(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p2}, Lb/a/z;->f()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p2, Lb/a/z;->j:I

    invoke-virtual {p1, v0}, Lb/a/ht;->a(I)V

    :cond_b
    return-void
.end method

.method public bridge synthetic b(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/z;

    invoke-virtual {p0, p1, p2}, Lb/a/ad;->b(Lb/a/hn;Lb/a/z;)V

    return-void
.end method

.method public b(Lb/a/hn;Lb/a/z;)V
    .locals 3

    const/4 v2, 0x1

    check-cast p1, Lb/a/ht;

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/z;->a:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lb/a/z;->a(Z)V

    invoke-virtual {p1}, Lb/a/ht;->s()I

    move-result v0

    invoke-static {v0}, Lb/a/fa;->a(I)Lb/a/fa;

    move-result-object v0

    iput-object v0, p2, Lb/a/z;->e:Lb/a/fa;

    invoke-virtual {p2, v2}, Lb/a/z;->e(Z)V

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/z;->f:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lb/a/z;->f(Z)V

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/z;->g:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lb/a/z;->g(Z)V

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lb/a/ht;->b(I)Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lb/a/z;->b:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lb/a/z;->b(Z)V

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lb/a/ht;->s()I

    move-result v1

    iput v1, p2, Lb/a/z;->c:I

    invoke-virtual {p2, v2}, Lb/a/z;->c(Z)V

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lb/a/z;->d:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lb/a/z;->d(Z)V

    :cond_2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lb/a/z;->h:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lb/a/z;->h(Z)V

    :cond_3
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lb/a/ht;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lb/a/z;->i:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lb/a/z;->i(Z)V

    :cond_4
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lb/a/ht;->s()I

    move-result v0

    iput v0, p2, Lb/a/z;->j:I

    invoke-virtual {p2, v2}, Lb/a/z;->j(Z)V

    :cond_5
    return-void
.end method
