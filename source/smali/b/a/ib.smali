.class public Lb/a/ib;
.super Lb/a/gp;


# instance fields
.field protected a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb/a/gp;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb/a/ib;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lb/a/gp;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb/a/ib;->a:I

    iput p1, p0, Lb/a/ib;->a:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, Lb/a/gp;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lb/a/ib;->a:I

    iput p1, p0, Lb/a/ib;->a:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p2}, Lb/a/gp;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput v0, p0, Lb/a/ib;->a:I

    iput p1, p0, Lb/a/ib;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lb/a/gp;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lb/a/ib;->a:I

    return-void
.end method
