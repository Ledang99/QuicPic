.class Lcom/alensw/cloud/sync/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/cloud/sync/o;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/sync/o;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/sync/p;->a:Lcom/alensw/cloud/sync/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alensw/cloud/sync/x;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
