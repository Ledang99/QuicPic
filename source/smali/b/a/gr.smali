.class public Lb/a/gr;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/io/ByteArrayOutputStream;

.field private final b:Lb/a/hy;

.field private c:Lb/a/hn;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lb/a/hj;

    invoke-direct {v0}, Lb/a/hj;-><init>()V

    invoke-direct {p0, v0}, Lb/a/gr;-><init>(Lb/a/hp;)V

    return-void
.end method

.method public constructor <init>(Lb/a/hp;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lb/a/gr;->a:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Lb/a/hy;

    iget-object v1, p0, Lb/a/gr;->a:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Lb/a/hy;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lb/a/gr;->b:Lb/a/hy;

    iget-object v0, p0, Lb/a/gr;->b:Lb/a/hy;

    invoke-interface {p1, v0}, Lb/a/hp;->a(Lb/a/ia;)Lb/a/hn;

    move-result-object v0

    iput-object v0, p0, Lb/a/gr;->c:Lb/a/hn;

    return-void
.end method


# virtual methods
.method public a(Lb/a/gk;)[B
    .locals 1

    iget-object v0, p0, Lb/a/gr;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lb/a/gr;->c:Lb/a/hn;

    invoke-interface {p1, v0}, Lb/a/gk;->b(Lb/a/hn;)V

    iget-object v0, p0, Lb/a/gr;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
