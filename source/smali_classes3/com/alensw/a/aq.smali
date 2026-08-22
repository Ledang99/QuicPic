.class Lcom/alensw/a/aq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/a/ao;


# direct methods
.method constructor <init>(Lcom/alensw/a/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/a/aq;->a:Lcom/alensw/a/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/aq;->a:Lcom/alensw/a/ao;

    invoke-static {v0}, Lcom/alensw/a/ao;->a(Lcom/alensw/a/ao;)Lcom/alensw/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/b/a/f;->c()V

    return-void
.end method
