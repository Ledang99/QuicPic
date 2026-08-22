.class Lcom/b/a/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/g;->a:Ljava/util/ArrayList;

    iput p2, p0, Lcom/b/a/g;->b:I

    return-void
.end method

.method static synthetic a(Lcom/b/a/g;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/b/a/g;->a:Ljava/util/ArrayList;

    return-object v0
.end method
