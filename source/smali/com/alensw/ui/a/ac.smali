.class final Lcom/alensw/ui/a/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/a/ad;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/a/ac;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/alensw/ui/a/ac;->b:Z

    iput-object p3, p0, Lcom/alensw/ui/a/ac;->c:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/alensw/ui/a/ac;->d:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alensw/ui/view/PasswordView;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/a/ac;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alensw/ui/a/ac;->b:Z

    if-eqz v0, :cond_0

    sput-object p2, Lcom/alensw/PicFolder/QuickApp;->y:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/a/ac;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/a/ac;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-static {p1}, Lcom/alensw/ui/a/x;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alensw/ui/a/ac;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/a/ac;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
