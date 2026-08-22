.class Lcom/alensw/ui/c/aj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/a/az;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/z;

.field private final b:Lcom/alensw/bean/CommonFile;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/z;)V
    .locals 2

    iput-object p1, p0, Lcom/alensw/ui/c/aj;->a:Lcom/alensw/ui/c/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/alensw/ui/c/aj;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/aj;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    iget-object v1, p0, Lcom/alensw/ui/c/aj;->a:Lcom/alensw/ui/c/z;

    iget-object v1, v1, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    iget v1, v1, Lcom/alensw/bean/CommonFolder;->k:I

    invoke-virtual {v0, v1}, Lcom/alensw/bean/CommonFolder;->a(I)Lcom/alensw/bean/CommonFile;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/alensw/ui/c/aj;->b:Lcom/alensw/bean/CommonFile;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/alensw/bean/CommonFolder;Z)V
    .locals 4

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/aj;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alensw/ui/c/aj;->a:Lcom/alensw/ui/c/z;

    invoke-static {v1}, Lcom/alensw/ui/c/z;->c(Lcom/alensw/ui/c/z;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/alensw/ui/c/aj;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alensw/ui/c/aj;->a:Lcom/alensw/ui/c/z;

    invoke-static {v1}, Lcom/alensw/ui/c/z;->c(Lcom/alensw/ui/c/z;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alensw/ui/c/aj;->b(Lcom/alensw/bean/CommonFolder;Z)V

    goto :goto_0
.end method

.method public b(Lcom/alensw/bean/CommonFolder;Z)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/alensw/ui/c/aj;->a:Lcom/alensw/ui/c/z;

    invoke-static {v0, v1}, Lcom/alensw/ui/c/z;->a(Lcom/alensw/ui/c/z;Lcom/alensw/b/k/d;)Lcom/alensw/b/k/d;

    iget-object v0, p0, Lcom/alensw/ui/c/aj;->a:Lcom/alensw/ui/c/z;

    iget v0, v0, Lcom/alensw/ui/c/z;->H:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/aj;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0, p1, v6}, Lcom/alensw/bean/CommonFolder;->a(Lcom/alensw/bean/CommonFolder;Z)V

    :cond_2
    sget-object v0, Lcom/alensw/ui/c/z;->z:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/alensw/ui/c/aj;->a:Lcom/alensw/ui/c/z;

    iget-object v2, v2, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v2}, Lcom/alensw/bean/CommonFolder;->i()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/alensw/ui/c/aj;->a:Lcom/alensw/ui/c/z;

    iget-object v2, v2, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alensw/ui/view/ImageGridView;->setScrollPos(F)V

    :cond_3
    iget-object v0, p0, Lcom/alensw/ui/c/aj;->b:Lcom/alensw/bean/CommonFile;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alensw/ui/c/aj;->b:Lcom/alensw/bean/CommonFile;

    iget-object v2, p0, Lcom/alensw/ui/c/aj;->a:Lcom/alensw/ui/c/z;

    iget-object v2, v2, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    iget-object v3, p0, Lcom/alensw/ui/c/aj;->a:Lcom/alensw/ui/c/z;

    iget-object v3, v3, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    iget v3, v3, Lcom/alensw/bean/CommonFolder;->k:I

    invoke-virtual {v2, v3}, Lcom/alensw/bean/CommonFolder;->a(I)Lcom/alensw/bean/CommonFile;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alensw/bean/CommonFile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alensw/ui/c/aj;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    iget-object v2, p0, Lcom/alensw/ui/c/aj;->a:Lcom/alensw/ui/c/z;

    iget-object v2, v2, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    iget-object v3, p0, Lcom/alensw/ui/c/aj;->b:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v2, v3}, Lcom/alensw/bean/CommonFolder;->a(Lcom/alensw/bean/CommonFile;)I

    move-result v2

    iput v2, v0, Lcom/alensw/bean/CommonFolder;->k:I

    :cond_4
    iget-object v0, p0, Lcom/alensw/ui/c/aj;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    iget v0, v0, Lcom/alensw/bean/CommonFolder;->k:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lcom/alensw/ui/c/aj;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-object v2, p0, Lcom/alensw/ui/c/aj;->a:Lcom/alensw/ui/c/z;

    iget-object v2, v2, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    iget v2, v2, Lcom/alensw/bean/CommonFolder;->k:I

    invoke-virtual {v0, v2}, Lcom/alensw/ui/view/ImageGridView;->c(I)V

    :cond_5
    iget-object v0, p0, Lcom/alensw/ui/c/aj;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->requestLayout()V

    iget-object v0, p0, Lcom/alensw/ui/c/aj;->a:Lcom/alensw/ui/c/z;

    invoke-virtual {v0}, Lcom/alensw/ui/c/z;->m()I

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/aj;->a:Lcom/alensw/ui/c/z;

    invoke-virtual {v0, v5}, Lcom/alensw/ui/c/z;->c(Z)V

    iget-object v0, p0, Lcom/alensw/ui/c/aj;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->y:Lcom/alensw/bean/CommonFolder;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/aj;->a:Lcom/alensw/ui/c/z;

    iget-object v0, v0, Lcom/alensw/ui/c/z;->f:Lcom/alensw/ui/view/ImageGridView;

    iget-object v2, p0, Lcom/alensw/ui/c/aj;->a:Lcom/alensw/ui/c/z;

    const v3, 0x7f0a004e

    invoke-virtual {v2, v3}, Lcom/alensw/ui/c/z;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alensw/ui/view/ImageGridView;->setEmptyText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alensw/ui/c/aj;->a:Lcom/alensw/ui/c/z;

    iget-boolean v0, v0, Lcom/alensw/ui/c/z;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/aj;->a:Lcom/alensw/ui/c/z;

    invoke-static {v0}, Lcom/alensw/ui/c/z;->d(Lcom/alensw/ui/c/z;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/aj;->a:Lcom/alensw/ui/c/z;

    invoke-static {v0}, Lcom/alensw/ui/c/z;->d(Lcom/alensw/ui/c/z;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "@baidu"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alensw/ui/c/aj;->a:Lcom/alensw/ui/c/z;

    const v1, 0x7f0a00a3

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/z;->g(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "/\u6211\u7684\u5e94\u7528\u6570\u636e/quickpic"

    const-string v0, "pan.baidu.com"

    :goto_1
    if-eqz v2, :cond_0

    const-string v3, "%s\u9650\u5236\u53ea\u5141\u8bb8\u6d4f\u89c8\u201c%s\u201d\u5185\u7684\u6587\u4ef6\uff0c\u8bf7\u4e0a\u4f20\u56fe\u7247\u6216\u53bb %s \u5c06\u5176\u5b83\u76ee\u5f55\u7684\u56fe\u7247\u79fb\u52a8\u5230\u6b64\u5904\u3002"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    aput-object v1, v4, v6

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/aj;->a:Lcom/alensw/ui/c/z;

    invoke-virtual {v1, v0}, Lcom/alensw/ui/c/z;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/alensw/ui/c/aj;->a:Lcom/alensw/ui/c/z;

    invoke-static {v0}, Lcom/alensw/ui/c/z;->d(Lcom/alensw/ui/c/z;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "@yun360"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alensw/ui/c/aj;->a:Lcom/alensw/ui/c/z;

    const v1, 0x7f0a00b0

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/z;->g(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "/\u6211\u7684\u5e94\u7528\u6570\u636e/\u5feb\u56fe\u6d4f\u89c8"

    const-string v0, "yunpan.360.cn"

    goto :goto_1

    :cond_7
    move-object v0, v1

    move-object v2, v1

    goto :goto_1
.end method
