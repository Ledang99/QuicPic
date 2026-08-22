.class Lcom/alensw/ui/c/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/r;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/r;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/s;->a:Lcom/alensw/ui/c/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/s;->a:Lcom/alensw/ui/c/r;

    iget-object v1, p0, Lcom/alensw/ui/c/s;->a:Lcom/alensw/ui/c/r;

    invoke-static {v1}, Lcom/alensw/ui/c/r;->a(Lcom/alensw/ui/c/r;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/r;->a(Ljava/util/ArrayList;)V

    return-void
.end method
