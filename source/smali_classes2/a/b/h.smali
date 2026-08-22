.class final La/b/h;
.super Ljava/lang/Object;


# instance fields
.field a:La/b/b;

.field b:La/b/g;

.field c:J


# direct methods
.method constructor <init>(La/b/b;La/b/g;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/h;->a:La/b/b;

    iput-object p2, p0, La/b/h;->b:La/b/g;

    iput-wide p3, p0, La/b/h;->c:J

    return-void
.end method
