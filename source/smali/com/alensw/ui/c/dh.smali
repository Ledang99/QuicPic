.class Lcom/alensw/ui/c/dh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/b/d/g;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/alensw/ui/c/df;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/df;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/dh;->b:Lcom/alensw/ui/c/df;

    iput-object p2, p0, Lcom/alensw/ui/c/dh;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alensw/b/d/c;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alensw/ui/c/dh;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alensw/ui/c/dh;->b:Lcom/alensw/ui/c/df;

    invoke-static {v1}, Lcom/alensw/ui/c/df;->a(Lcom/alensw/ui/c/df;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alensw/b/d/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
