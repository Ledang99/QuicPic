.class Lcom/alensw/ui/a/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/a/ao;


# direct methods
.method constructor <init>(Lcom/alensw/ui/a/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/a/ap;->a:Lcom/alensw/ui/a/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
