.class public Lb/a/go;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lb/a/hn;

.field private final b:Lb/a/hz;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lb/a/hj;

    invoke-direct {v0}, Lb/a/hj;-><init>()V

    invoke-direct {p0, v0}, Lb/a/go;-><init>(Lb/a/hp;)V

    return-void
.end method

.method public constructor <init>(Lb/a/hp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/a/hz;

    invoke-direct {v0}, Lb/a/hz;-><init>()V

    iput-object v0, p0, Lb/a/go;->b:Lb/a/hz;

    iget-object v0, p0, Lb/a/go;->b:Lb/a/hz;

    invoke-interface {p1, v0}, Lb/a/hp;->a(Lb/a/ia;)Lb/a/hn;

    move-result-object v0

    iput-object v0, p0, Lb/a/go;->a:Lb/a/hn;

    return-void
.end method


# virtual methods
.method public a(Lb/a/gk;[B)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lb/a/go;->b:Lb/a/hz;

    invoke-virtual {v0, p2}, Lb/a/hz;->a([B)V

    iget-object v0, p0, Lb/a/go;->a:Lb/a/hn;

    invoke-interface {p1, v0}, Lb/a/gk;->a(Lb/a/hn;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lb/a/go;->b:Lb/a/hz;

    invoke-virtual {v0}, Lb/a/hz;->a()V

    iget-object v0, p0, Lb/a/go;->a:Lb/a/hn;

    invoke-virtual {v0}, Lb/a/hn;->x()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/a/go;->b:Lb/a/hz;

    invoke-virtual {v1}, Lb/a/hz;->a()V

    iget-object v1, p0, Lb/a/go;->a:Lb/a/hn;

    invoke-virtual {v1}, Lb/a/hn;->x()V

    throw v0
.end method
