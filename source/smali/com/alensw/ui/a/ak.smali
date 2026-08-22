.class Lcom/alensw/ui/a/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alensw/ui/a/an;

.field final synthetic c:Lcom/alensw/ui/a/ae;


# direct methods
.method constructor <init>(Lcom/alensw/ui/a/ae;Landroid/content/Context;Lcom/alensw/ui/a/an;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/a/ak;->c:Lcom/alensw/ui/a/ae;

    iput-object p2, p0, Lcom/alensw/ui/a/ak;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alensw/ui/a/ak;->b:Lcom/alensw/ui/a/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/alensw/ui/a/ak;->a:Landroid/content/Context;

    const v1, 0x7f0a004c

    const-string v2, ""

    const/4 v3, 0x0

    new-instance v4, Lcom/alensw/ui/a/al;

    invoke-direct {v4, p0}, Lcom/alensw/ui/a/al;-><init>(Lcom/alensw/ui/a/ak;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alensw/ui/a/f;->a(Landroid/content/Context;ILjava/lang/Object;Ljava/lang/CharSequence;Lcom/alensw/ui/a/s;)V

    return-void
.end method
