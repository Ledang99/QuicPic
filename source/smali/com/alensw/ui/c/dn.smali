.class Lcom/alensw/ui/c/dn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/activity/o;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/df;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/df;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/dn;->a:Lcom/alensw/ui/c/df;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/dn;->a:Lcom/alensw/ui/c/df;

    invoke-static {v0}, Lcom/alensw/ui/c/df;->a(Lcom/alensw/ui/c/df;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    return-void
.end method
