.class public Lcom/alensw/ui/c/h;
.super Ljava/lang/Object;
.source "h.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/a/e;

.field final synthetic b:Lcom/alensw/a/e;

.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Lcom/alensw/ui/c/a;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/a;Lcom/alensw/a/e;Lcom/alensw/a/e;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/h;->d:Lcom/alensw/ui/c/a;

    iput-object p2, p0, Lcom/alensw/ui/c/h;->a:Lcom/alensw/a/e;

    iput-object p3, p0, Lcom/alensw/ui/c/h;->b:Lcom/alensw/a/e;

    iput-object p4, p0, Lcom/alensw/ui/c/h;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/h;->a:Lcom/alensw/a/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alensw/a/e;->b(Z)I

    iget-object v0, p0, Lcom/alensw/ui/c/h;->d:Lcom/alensw/ui/c/a;

    iget-object v0, v0, Lcom/alensw/ui/c/a;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alensw/ui/c/i;

    invoke-direct {v1, p0}, Lcom/alensw/ui/c/i;-><init>(Lcom/alensw/ui/c/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
