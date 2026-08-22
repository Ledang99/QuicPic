.class Lcom/alensw/transfer/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/activity/o;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/TransferActivity;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/TransferActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/i;->a:Lcom/alensw/transfer/TransferActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/transfer/i;->a:Lcom/alensw/transfer/TransferActivity;

    invoke-static {v0, p1, p2}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    return-void
.end method
