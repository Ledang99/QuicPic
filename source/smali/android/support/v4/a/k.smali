.class public Landroid/support/v4/a/k;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/a/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/a/m;

    invoke-direct {v0}, Landroid/support/v4/a/m;-><init>()V

    sput-object v0, Landroid/support/v4/a/k;->a:Landroid/support/v4/a/n;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/a/l;

    invoke-direct {v0}, Landroid/support/v4/a/l;-><init>()V

    sput-object v0, Landroid/support/v4/a/k;->a:Landroid/support/v4/a/n;

    goto :goto_0
.end method

.method public static a(Landroid/view/VelocityTracker;I)F
    .locals 1

    sget-object v0, Landroid/support/v4/a/k;->a:Landroid/support/v4/a/n;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/a/n;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/VelocityTracker;I)F
    .locals 1

    sget-object v0, Landroid/support/v4/a/k;->a:Landroid/support/v4/a/n;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/a/n;->b(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method
