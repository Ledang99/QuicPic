.class La/a/a/c;
.super La/d/bl;


# instance fields
.field final synthetic a:La/a/a/b;


# direct methods
.method constructor <init>(La/a/a/b;La/a/a/p;)V
    .locals 1

    iput-object p1, p0, La/a/a/c;->a:La/a/a/b;

    invoke-direct {p0}, La/d/bl;-><init>()V

    iget-object v0, p2, La/a/a/p;->a:Ljava/lang/String;

    iput-object v0, p0, La/a/a/c;->b:Ljava/lang/String;

    iget v0, p2, La/a/a/p;->b:I

    iput v0, p0, La/a/a/c;->c:I

    iget-object v0, p2, La/a/a/p;->c:Ljava/lang/String;

    iput-object v0, p0, La/a/a/c;->d:Ljava/lang/String;

    return-void
.end method
