.class Lcom/alensw/a/bf;
.super Lcom/alensw/b/a/c;


# instance fields
.field public a:I

.field public b:J

.field public c:[B

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IJ[B)V
    .locals 1

    invoke-direct {p0}, Lcom/alensw/b/a/c;-><init>()V

    iput p2, p0, Lcom/alensw/a/bf;->a:I

    iput-wide p3, p0, Lcom/alensw/a/bf;->b:J

    iput-object p5, p0, Lcom/alensw/a/bf;->c:[B

    iput-object p1, p0, Lcom/alensw/a/bf;->d:Ljava/lang/String;

    return-void
.end method
