.class final Lcom/alensw/ui/a/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Landroid/widget/ArrayAdapter;

.field final synthetic d:Lcom/alensw/ui/view/TitleView;


# direct methods
.method constructor <init>(Landroid/content/Context;ILandroid/widget/ArrayAdapter;Lcom/alensw/ui/view/TitleView;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/a/p;->a:Landroid/content/Context;

    iput p2, p0, Lcom/alensw/ui/a/p;->b:I

    iput-object p3, p0, Lcom/alensw/ui/a/p;->c:Landroid/widget/ArrayAdapter;

    iput-object p4, p0, Lcom/alensw/ui/a/p;->d:Lcom/alensw/ui/view/TitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/a/p;->a:Landroid/content/Context;

    iget v1, p0, Lcom/alensw/ui/a/p;->b:I

    iget-object v2, p0, Lcom/alensw/ui/a/p;->c:Landroid/widget/ArrayAdapter;

    new-instance v3, Lcom/alensw/ui/a/q;

    invoke-direct {v3, p0}, Lcom/alensw/ui/a/q;-><init>(Lcom/alensw/ui/a/p;)V

    invoke-static {v0, v1, v2, v3}, Lcom/alensw/ui/a/f;->a(Landroid/content/Context;ILjava/lang/Object;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/ui/a/f;->a(Landroid/app/Dialog;)Z

    return-void
.end method
