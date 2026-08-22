.class Lcom/alensw/ui/c/cn;
.super Lcom/alensw/ui/a/ao;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/cm;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/cm;Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/cn;->a:Lcom/alensw/ui/c/cm;

    invoke-direct {p0, p2, p3, p4}, Lcom/alensw/ui/a/ao;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    iget-object v1, p0, Lcom/alensw/ui/c/cn;->a:Lcom/alensw/ui/c/cm;

    iget-object v1, v1, Lcom/alensw/ui/c/cm;->a:Lcom/alensw/a/e;

    invoke-virtual {v1}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/a/bc;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected b()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alensw/PicFolder/QuickApp;->b(Z)Z

    return-void
.end method
