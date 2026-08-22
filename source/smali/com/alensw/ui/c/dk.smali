.class Lcom/alensw/ui/c/dk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/dj;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/dj;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/dk;->a:Lcom/alensw/ui/c/dj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/alensw/ui/c/dk;->a:Lcom/alensw/ui/c/dj;

    iget-object v0, v0, Lcom/alensw/ui/c/dj;->b:Lcom/alensw/ui/c/df;

    invoke-static {v0}, Lcom/alensw/ui/c/df;->b(Lcom/alensw/ui/c/df;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/alensw/ui/c/dk;->a:Lcom/alensw/ui/c/dj;

    iget-object v2, v2, Lcom/alensw/ui/c/dj;->a:Lcom/alensw/ui/c/do;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alensw/ui/c/dk;->a:Lcom/alensw/ui/c/dj;

    iget-object v2, v2, Lcom/alensw/ui/c/dj;->a:Lcom/alensw/ui/c/do;

    iget-object v3, p0, Lcom/alensw/ui/c/dk;->a:Lcom/alensw/ui/c/dj;

    iget-object v3, v3, Lcom/alensw/ui/c/dj;->b:Lcom/alensw/ui/c/df;

    invoke-static {v3}, Lcom/alensw/ui/c/df;->c(Lcom/alensw/ui/c/df;)Lcom/alensw/b/h/k;

    move-result-object v3

    iget-wide v4, v3, Lcom/alensw/b/h/k;->j:J

    invoke-interface {v2, v0, v1, v4, v5}, Lcom/alensw/ui/c/do;->a(JJ)V

    :cond_0
    return-void
.end method
