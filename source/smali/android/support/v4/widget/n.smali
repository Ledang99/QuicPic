.class Landroid/support/v4/widget/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v4/widget/l;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/l;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/n;->a:Landroid/support/v4/widget/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/n;->a:Landroid/support/v4/widget/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/l;->c(I)V

    return-void
.end method
