.class Lb/a/im;
.super Lcom/c/a/s;


# instance fields
.field final synthetic a:Lb/a/is;

.field final synthetic b:Lb/a/il;


# direct methods
.method constructor <init>(Lb/a/il;Lb/a/is;)V
    .locals 0

    iput-object p1, p0, Lb/a/im;->b:Lb/a/il;

    iput-object p2, p0, Lb/a/im;->a:Lb/a/is;

    invoke-direct {p0}, Lcom/c/a/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lb/a/im;->b:Lb/a/il;

    invoke-static {v0}, Lb/a/il;->a(Lb/a/il;)Lb/a/ir;

    move-result-object v0

    iget-object v1, p0, Lb/a/im;->a:Lb/a/is;

    invoke-interface {v0, v1}, Lb/a/ir;->a(Lb/a/is;)V

    return-void
.end method
