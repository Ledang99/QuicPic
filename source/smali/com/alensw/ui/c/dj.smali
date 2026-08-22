.class Lcom/alensw/ui/c/dj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/do;

.field final synthetic b:Lcom/alensw/ui/c/df;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/df;Lcom/alensw/ui/c/do;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/dj;->b:Lcom/alensw/ui/c/df;

    iput-object p2, p0, Lcom/alensw/ui/c/dj;->a:Lcom/alensw/ui/c/do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/alensw/ui/c/dj;->b:Lcom/alensw/ui/c/df;

    invoke-static {v0}, Lcom/alensw/ui/c/df;->a(Lcom/alensw/ui/c/df;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0036

    iget-object v2, p0, Lcom/alensw/ui/c/dj;->b:Lcom/alensw/ui/c/df;

    invoke-static {v2}, Lcom/alensw/ui/c/df;->a(Lcom/alensw/ui/c/df;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0037

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alensw/ui/c/dk;

    invoke-direct {v3, p0}, Lcom/alensw/ui/c/dk;-><init>(Lcom/alensw/ui/c/dj;)V

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alensw/ui/a/f;->a(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method
