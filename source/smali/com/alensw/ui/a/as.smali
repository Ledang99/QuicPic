.class Lcom/alensw/ui/a/as;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alensw/ui/a/ao;


# direct methods
.method constructor <init>(Lcom/alensw/ui/a/ao;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/a/as;->b:Lcom/alensw/ui/a/ao;

    iput-object p2, p0, Lcom/alensw/ui/a/as;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/a/as;->b:Lcom/alensw/ui/a/ao;

    invoke-static {v0}, Lcom/alensw/ui/a/ao;->a(Lcom/alensw/ui/a/ao;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/a/as;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
