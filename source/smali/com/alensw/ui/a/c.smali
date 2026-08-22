.class Lcom/alensw/ui/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alensw/ui/a/b;


# direct methods
.method constructor <init>(Lcom/alensw/ui/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/a/c;->d:Lcom/alensw/ui/a/b;

    iput-object p2, p0, Lcom/alensw/ui/a/c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alensw/ui/a/c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alensw/ui/a/c;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/a/c;->d:Lcom/alensw/ui/a/b;

    iget-object v0, v0, Lcom/alensw/ui/a/b;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/a/c;->d:Lcom/alensw/ui/a/b;

    iget-object v0, v0, Lcom/alensw/ui/a/b;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alensw/ui/a/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alensw/ui/a/c;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alensw/ui/a/c;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/alensw/ui/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
