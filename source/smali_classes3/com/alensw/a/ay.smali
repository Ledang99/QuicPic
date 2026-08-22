.class Lcom/alensw/a/ay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/database/Cursor;

.field final synthetic b:Z

.field final synthetic c:Lcom/alensw/a/av;


# direct methods
.method constructor <init>(Lcom/alensw/a/av;Landroid/database/Cursor;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/a/ay;->c:Lcom/alensw/a/av;

    iput-object p2, p0, Lcom/alensw/a/ay;->a:Landroid/database/Cursor;

    iput-boolean p3, p0, Lcom/alensw/a/ay;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alensw/a/ay;->a:Landroid/database/Cursor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/a/ay;->c:Lcom/alensw/a/av;

    invoke-static {v0}, Lcom/alensw/a/av;->c(Lcom/alensw/a/av;)Lcom/alensw/bean/CommonFolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->n()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/alensw/a/ay;->c:Lcom/alensw/a/av;

    invoke-static {v3}, Lcom/alensw/a/av;->e(Lcom/alensw/a/av;)Lcom/alensw/a/az;

    move-result-object v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/a/ay;->c:Lcom/alensw/a/av;

    invoke-static {v0}, Lcom/alensw/a/av;->c(Lcom/alensw/a/av;)Lcom/alensw/bean/CommonFolder;

    move-result-object v0

    :goto_1
    iget-boolean v4, p0, Lcom/alensw/a/ay;->b:Z

    if-nez v4, :cond_3

    :goto_2
    invoke-interface {v3, v0, v2}, Lcom/alensw/a/az;->b(Lcom/alensw/bean/CommonFolder;Z)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2
.end method
