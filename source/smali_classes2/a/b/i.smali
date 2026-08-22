.class public La/b/i;
.super Ljava/io/IOException;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    iput p1, p0, La/b/i;->a:I

    iput p2, p0, La/b/i;->b:I

    return-void
.end method
