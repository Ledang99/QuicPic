.class final Lcom/a/a/a/d/c;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:[I

.field public final d:[Lcom/a/a/a/d/f;

.field public final e:[Lcom/a/a/a/d/b;

.field public final f:I

.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>(II[I[Lcom/a/a/a/d/f;[Lcom/a/a/a/d/b;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/a/a/a/d/c;->a:I

    iput p2, p0, Lcom/a/a/a/d/c;->b:I

    iput-object p3, p0, Lcom/a/a/a/d/c;->c:[I

    iput-object p4, p0, Lcom/a/a/a/d/c;->d:[Lcom/a/a/a/d/f;

    iput-object p5, p0, Lcom/a/a/a/d/c;->e:[Lcom/a/a/a/d/b;

    iput p6, p0, Lcom/a/a/a/d/c;->f:I

    iput p7, p0, Lcom/a/a/a/d/c;->g:I

    iput p8, p0, Lcom/a/a/a/d/c;->h:I

    return-void
.end method

.method public constructor <init>(Lcom/a/a/a/d/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/a/a/a/d/a;->d:I

    iput v0, p0, Lcom/a/a/a/d/c;->a:I

    iget v0, p1, Lcom/a/a/a/d/a;->f:I

    iput v0, p0, Lcom/a/a/a/d/c;->b:I

    iget-object v0, p1, Lcom/a/a/a/d/a;->g:[I

    iput-object v0, p0, Lcom/a/a/a/d/c;->c:[I

    iget-object v0, p1, Lcom/a/a/a/d/a;->h:[Lcom/a/a/a/d/f;

    iput-object v0, p0, Lcom/a/a/a/d/c;->d:[Lcom/a/a/a/d/f;

    iget-object v0, p1, Lcom/a/a/a/d/a;->i:[Lcom/a/a/a/d/b;

    iput-object v0, p0, Lcom/a/a/a/d/c;->e:[Lcom/a/a/a/d/b;

    iget v0, p1, Lcom/a/a/a/d/a;->j:I

    iput v0, p0, Lcom/a/a/a/d/c;->f:I

    iget v0, p1, Lcom/a/a/a/d/a;->k:I

    iput v0, p0, Lcom/a/a/a/d/c;->g:I

    iget v0, p1, Lcom/a/a/a/d/a;->e:I

    iput v0, p0, Lcom/a/a/a/d/c;->h:I

    return-void
.end method
