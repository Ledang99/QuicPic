.class Lcom/alensw/ui/a/ar;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/a/aq;


# direct methods
.method constructor <init>(Lcom/alensw/ui/a/aq;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/a/ar;->a:Lcom/alensw/ui/a/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/a/ar;->a:Lcom/alensw/ui/a/aq;

    iget-object v0, v0, Lcom/alensw/ui/a/aq;->a:Lcom/alensw/ui/a/ao;

    invoke-static {v0}, Lcom/alensw/ui/a/f;->b(Landroid/app/Dialog;)Z

    iget-object v0, p0, Lcom/alensw/ui/a/ar;->a:Lcom/alensw/ui/a/aq;

    iget-object v0, v0, Lcom/alensw/ui/a/aq;->a:Lcom/alensw/ui/a/ao;

    invoke-virtual {v0}, Lcom/alensw/ui/a/ao;->b()V

    return-void
.end method
