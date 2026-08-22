.class public La/d/f;
.super La/d/bc;


# instance fields
.field public a:I

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:J

.field i:La/d/f;

.field j:Ljava/util/Map;

.field k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, La/d/bc;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/d/f;->k:Ljava/lang/String;

    iput-object p0, p0, La/d/f;->i:La/d/f;

    return-void
.end method


# virtual methods
.method a(La/d/f;)V
    .locals 1

    iget-object v0, p0, La/d/f;->i:La/d/f;

    iput-object v0, p1, La/d/f;->i:La/d/f;

    iput-object p1, p0, La/d/f;->i:La/d/f;

    return-void
.end method
