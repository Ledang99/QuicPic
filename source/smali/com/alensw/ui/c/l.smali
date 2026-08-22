.class Lcom/alensw/ui/c/l;
.super Lcom/alensw/ui/a/ao;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alensw/ui/c/a;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/a;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/l;->b:Lcom/alensw/ui/c/a;

    iput-object p5, p0, Lcom/alensw/ui/c/l;->a:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, Lcom/alensw/ui/a/ao;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    iget-object v1, p0, Lcom/alensw/ui/c/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alensw/a/ba;->e(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alensw/PicFolder/QuickApp;->b(Z)Z

    :cond_0
    return-void
.end method
