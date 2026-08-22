.class Landroid/support/v4/a/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v4/a/p;


# direct methods
.method constructor <init>(Landroid/support/v4/a/p;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/a/s;->a:Landroid/support/v4/a/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/a/s;->a:Landroid/support/v4/a/p;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/a/p;->a(Landroid/support/v4/a/p;I)V

    iget-object v0, p0, Landroid/support/v4/a/s;->a:Landroid/support/v4/a/p;

    invoke-virtual {v0}, Landroid/support/v4/a/p;->c()V

    return-void
.end method
