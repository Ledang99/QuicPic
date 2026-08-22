.class La/d/be;
.super Ljava/lang/Object;

# interfaces
.implements La/d/i;


# instance fields
.field final synthetic a:La/d/bd;


# direct methods
.method constructor <init>(La/d/bd;)V
    .locals 0

    iput-object p1, p0, La/d/be;->a:La/d/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/d/be;->a:La/d/bd;

    invoke-virtual {v0}, La/d/bd;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, La/d/be;->a:La/d/bd;

    iget v0, v0, La/d/bd;->j:I

    return v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, La/d/be;->a:La/d/bd;

    invoke-static {v0}, La/d/bd;->b(La/d/bd;)I

    move-result v0

    return v0
.end method

.method public d()J
    .locals 2

    iget-object v0, p0, La/d/be;->a:La/d/bd;

    invoke-static {v0}, La/d/bd;->c(La/d/bd;)J

    move-result-wide v0

    return-wide v0
.end method

.method public e()J
    .locals 2

    iget-object v0, p0, La/d/be;->a:La/d/bd;

    invoke-static {v0}, La/d/bd;->d(La/d/bd;)J

    move-result-wide v0

    return-wide v0
.end method

.method public f()J
    .locals 2

    iget-object v0, p0, La/d/be;->a:La/d/bd;

    invoke-static {v0}, La/d/bd;->e(La/d/bd;)J

    move-result-wide v0

    return-wide v0
.end method
