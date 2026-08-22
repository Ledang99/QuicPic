.class La/d/by;
.super Ljava/lang/Object;

# interfaces
.implements La/d/a;


# instance fields
.field a:J

.field b:J

.field c:I

.field d:I

.field final synthetic e:La/d/bx;


# direct methods
.method constructor <init>(La/d/bx;)V
    .locals 0

    iput-object p1, p0, La/d/by;->e:La/d/bx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    iget-wide v0, p0, La/d/by;->a:J

    iget v2, p0, La/d/by;->c:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, La/d/by;->d:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method
