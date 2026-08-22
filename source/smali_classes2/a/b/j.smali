.class La/b/j;
.super La/b/f;


# direct methods
.method constructor <init>(La/b/b;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, La/b/f;-><init>()V

    iput-object p1, p0, La/b/j;->q:La/b/b;

    const/16 v0, 0x21

    iput v0, p0, La/b/j;->s:I

    iput-boolean v1, p0, La/b/j;->n:Z

    iput-boolean v1, p0, La/b/j;->p:Z

    return-void
.end method


# virtual methods
.method a([BI)I
    .locals 3

    iget-object v0, p0, La/b/j;->q:La/b/b;

    iget v0, v0, La/b/b;->d:I

    iget-object v1, p0, La/b/j;->q:La/b/b;

    const/4 v2, 0x0

    iput v2, v1, La/b/b;->d:I

    invoke-virtual {p0, p1, p2}, La/b/j;->k([BI)I

    move-result v1

    iget-object v2, p0, La/b/j;->q:La/b/b;

    iput v0, v2, La/b/b;->d:I

    return v1
.end method

.method b([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method c([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
