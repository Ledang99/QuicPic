.class Lcom/alensw/b/k/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/alensw/b/k/i;->a:I

    return-void
.end method

.method static synthetic a(Lcom/alensw/b/k/i;)I
    .locals 1

    iget v0, p0, Lcom/alensw/b/k/i;->a:I

    return v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    new-instance v0, Lcom/alensw/b/k/j;

    invoke-direct {v0, p0, p1}, Lcom/alensw/b/k/j;-><init>(Lcom/alensw/b/k/i;Ljava/lang/Runnable;)V

    return-object v0
.end method
