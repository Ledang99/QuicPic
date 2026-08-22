.class Lcom/alensw/ui/c/u;
.super Lcom/alensw/ui/a/ao;


# instance fields
.field final synthetic a:Landroid/content/ContentResolver;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Ljava/lang/String;

.field final synthetic e:Lcom/alensw/ui/c/p;

.field private f:Z


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/p;Landroid/app/Activity;Ljava/lang/String;ILandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/u;->e:Lcom/alensw/ui/c/p;

    iput-object p5, p0, Lcom/alensw/ui/c/u;->a:Landroid/content/ContentResolver;

    iput-object p6, p0, Lcom/alensw/ui/c/u;->b:Landroid/net/Uri;

    iput-object p7, p0, Lcom/alensw/ui/c/u;->c:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, Lcom/alensw/ui/a/ao;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/c/u;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/alensw/ui/c/u;->b:Landroid/net/Uri;

    const-string v2, "vnd.android.document/directory"

    iget-object v3, p0, Lcom/alensw/ui/c/u;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/alensw/b/j/a;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alensw/ui/c/u;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/ui/c/u;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/u;->e:Lcom/alensw/ui/c/p;

    iget v0, v0, Lcom/alensw/ui/c/p;->H:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/u;->e:Lcom/alensw/ui/c/p;

    invoke-virtual {v0}, Lcom/alensw/ui/c/p;->f_()V

    iget-object v0, p0, Lcom/alensw/ui/c/u;->e:Lcom/alensw/ui/c/p;

    invoke-virtual {v0}, Lcom/alensw/ui/c/p;->e_()V

    :cond_0
    return-void
.end method
