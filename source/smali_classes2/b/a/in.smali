.class Lb/a/in;
.super Lcom/c/a/s;


# instance fields
.field final synthetic a:Lb/a/il;


# direct methods
.method constructor <init>(Lb/a/il;)V
    .locals 0

    iput-object p1, p0, Lb/a/in;->a:Lb/a/il;

    invoke-direct {p0}, Lcom/c/a/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lb/a/in;->a:Lb/a/il;

    invoke-static {v0}, Lb/a/il;->a(Lb/a/il;)Lb/a/ir;

    move-result-object v0

    invoke-interface {v0}, Lb/a/ir;->b()V

    return-void
.end method
