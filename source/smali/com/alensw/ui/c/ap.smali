.class Lcom/alensw/ui/c/ap;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/c/m;


# instance fields
.field final synthetic a:Ljava/util/HashSet;

.field final synthetic b:Lcom/alensw/ui/c/z;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/z;Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/ap;->b:Lcom/alensw/ui/c/z;

    iput-object p2, p0, Lcom/alensw/ui/c/ap;->a:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/c/ap;->b:Lcom/alensw/ui/c/z;

    iget-object v1, p0, Lcom/alensw/ui/c/ap;->a:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alensw/ui/c/z;->a(Ljava/util/HashSet;Landroid/net/Uri;)V

    return-void
.end method
