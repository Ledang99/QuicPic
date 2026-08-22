.class La/d/n;
.super Ljava/lang/Object;

# interfaces
.implements La/d/i;


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:I

.field d:I

.field e:Ljava/lang/String;

.field final synthetic f:La/d/m;


# direct methods
.method constructor <init>(La/d/m;)V
    .locals 0

    iput-object p1, p0, La/d/n;->f:La/d/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/d/n;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 2

    iget v0, p0, La/d/n;->d:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public c()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public d()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public e()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public f()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
