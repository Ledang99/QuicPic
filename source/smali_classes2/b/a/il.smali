.class public final Lb/a/il;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/ir;


# static fields
.field private static c:Lb/a/il;


# instance fields
.field private a:Lb/a/ir;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lb/a/il;->b:Landroid/content/Context;

    new-instance v0, Lb/a/ii;

    iget-object v1, p0, Lb/a/il;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lb/a/ii;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lb/a/il;->a:Lb/a/ir;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lb/a/il;
    .locals 2

    const-class v1, Lb/a/il;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lb/a/il;->c:Lb/a/il;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lb/a/il;

    invoke-direct {v0, p0}, Lb/a/il;-><init>(Landroid/content/Context;)V

    sput-object v0, Lb/a/il;->c:Lb/a/il;

    :cond_0
    sget-object v0, Lb/a/il;->c:Lb/a/il;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lb/a/il;)Lb/a/ir;
    .locals 1

    iget-object v0, p0, Lb/a/il;->a:Lb/a/ir;

    return-object v0
.end method


# virtual methods
.method public a(Lb/a/is;)V
    .locals 1

    new-instance v0, Lb/a/im;

    invoke-direct {v0, p0, p1}, Lb/a/im;-><init>(Lb/a/il;Lb/a/is;)V

    invoke-static {v0}, Lcom/c/a/r;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 1

    new-instance v0, Lb/a/in;

    invoke-direct {v0, p0}, Lb/a/in;-><init>(Lb/a/il;)V

    invoke-static {v0}, Lcom/c/a/r;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lb/a/is;)V
    .locals 1

    iget-object v0, p0, Lb/a/il;->a:Lb/a/ir;

    invoke-interface {v0, p1}, Lb/a/ir;->b(Lb/a/is;)V

    return-void
.end method
