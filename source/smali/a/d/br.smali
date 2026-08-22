.class La/d/br;
.super Ljava/lang/Object;

# interfaces
.implements La/d/i;


# instance fields
.field a:I

.field b:I

.field c:J

.field d:J

.field e:J

.field f:I

.field g:I

.field h:Ljava/lang/String;

.field final synthetic i:La/d/bq;


# direct methods
.method constructor <init>(La/d/bq;)V
    .locals 0

    iput-object p1, p0, La/d/br;->i:La/d/bq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/d/br;->h:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, La/d/br;->f:I

    return v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, La/d/br;->c:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, La/d/br;->d:J

    return-wide v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, La/d/br;->e:J

    return-wide v0
.end method
