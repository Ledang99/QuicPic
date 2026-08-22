.class Lcom/alensw/transfer/aw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/ac;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/aw;->a:Lcom/alensw/transfer/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/transfer/aw;->a:Lcom/alensw/transfer/ac;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alensw/transfer/ac;->a(Lcom/alensw/transfer/ac;Z)Z

    return-void
.end method
