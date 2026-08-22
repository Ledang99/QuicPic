.class final Lcom/alensw/ui/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/a/g;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/alensw/ui/a/g;->b:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/a/g;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/alensw/ui/a/g;->b:Landroid/app/AlertDialog;

    invoke-static {v0, v1}, Lcom/alensw/ui/a/u;->a(Landroid/content/Context;Landroid/app/Dialog;)V

    return-void
.end method
