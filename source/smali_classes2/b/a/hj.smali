.class public Lb/a/hj;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/hp;


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lb/a/hj;->a:J

    return-void
.end method


# virtual methods
.method public a(Lb/a/ia;)Lb/a/hn;
    .locals 4

    new-instance v0, Lb/a/hi;

    iget-wide v2, p0, Lb/a/hj;->a:J

    invoke-direct {v0, p1, v2, v3}, Lb/a/hi;-><init>(Lb/a/ia;J)V

    return-object v0
.end method
