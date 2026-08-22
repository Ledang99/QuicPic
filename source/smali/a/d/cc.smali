.class La/d/cc;
.super Ljava/lang/Object;

# interfaces
.implements La/d/k;


# instance fields
.field a:J

.field b:J

.field c:I

.field d:Z

.field e:Z

.field final synthetic f:La/d/ca;


# direct methods
.method constructor <init>(La/d/ca;)V
    .locals 0

    iput-object p1, p0, La/d/cc;->f:La/d/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public c()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, La/d/cc;->b:J

    return-wide v0
.end method
