.class Lcom/alensw/ui/activity/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/activity/p;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/p;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/s;->a:Lcom/alensw/ui/activity/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/activity/s;->a:Lcom/alensw/ui/activity/p;

    const/4 v1, 0x0

    const-string v2, "http://www.google.com/search?q=Android+4.4+External+SD+Card"

    invoke-static {v0, v1, v2}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
