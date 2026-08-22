.class Lcom/alensw/ui/c/br;
.super Ljava/lang/Object;
.source "br.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/bf;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/bf;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/br;->a:Lcom/alensw/ui/c/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/alensw/ui/c/br;->a:Lcom/alensw/ui/c/bf;

    iget-object v1, p0, Lcom/alensw/ui/c/br;->a:Lcom/alensw/ui/c/bf;

    iget-object v1, v1, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/alensw/ui/c/bf;->a(Lcom/alensw/a/e;ZLjava/lang/Runnable;)Z

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->q:Lcom/alensw/a/s;

    iget-boolean v0, v0, Lcom/alensw/a/s;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->o:Lcom/alensw/a/x;

    iget-object v1, p0, Lcom/alensw/ui/c/br;->a:Lcom/alensw/ui/c/bf;

    iget-object v1, v1, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v0, v1}, Lcom/alensw/a/x;->f(Lcom/alensw/a/e;)Lcom/alensw/a/e;

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->o:Lcom/alensw/a/x;

    invoke-virtual {v0, v3}, Lcom/alensw/a/x;->a(Z)Z

    :cond_0
    return-void
.end method
