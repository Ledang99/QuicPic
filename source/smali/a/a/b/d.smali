.class public La/a/b/d;
.super La/a/b/e;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, La/a/b/e;-><init>()V

    iput p1, p0, La/a/b/d;->a:I

    return-void
.end method


# virtual methods
.method public e(La/a/b/a;)V
    .locals 1

    iget v0, p0, La/a/b/d;->a:I

    invoke-virtual {p1, v0}, La/a/b/a;->h(I)V

    return-void
.end method

.method public f(La/a/b/a;)V
    .locals 1

    invoke-virtual {p1}, La/a/b/a;->f()I

    move-result v0

    iput v0, p0, La/a/b/d;->a:I

    return-void
.end method
