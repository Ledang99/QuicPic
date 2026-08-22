.class Lcom/alensw/b/d/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/b/d/c;

.field final synthetic b:Lcom/alensw/b/d/h;


# direct methods
.method constructor <init>(Lcom/alensw/b/d/h;Lcom/alensw/b/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/b/d/i;->b:Lcom/alensw/b/d/h;

    iput-object p2, p0, Lcom/alensw/b/d/i;->a:Lcom/alensw/b/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/b/d/i;->b:Lcom/alensw/b/d/h;

    iget-object v0, v0, Lcom/alensw/b/d/h;->d:Lcom/alensw/b/d/g;

    iget-object v1, p0, Lcom/alensw/b/d/i;->a:Lcom/alensw/b/d/c;

    invoke-interface {v0, v1}, Lcom/alensw/b/d/g;->a(Lcom/alensw/b/d/c;)V

    return-void
.end method
