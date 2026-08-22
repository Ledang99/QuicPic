.class Landroid/support/a/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/a/a/c;


# instance fields
.field final a:Landroid/app/Activity;

.field b:Landroid/support/a/a/l;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/a/a/h;->a:Landroid/app/Activity;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Landroid/support/a/a/b;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/a/a/h;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/h;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/a/a/h;->b:Landroid/support/a/a/l;

    iget-object v1, p0, Landroid/support/a/a/h;->a:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Landroid/support/a/a/k;->a(Landroid/support/a/a/l;Landroid/app/Activity;I)Landroid/support/a/a/l;

    move-result-object v0

    iput-object v0, p0, Landroid/support/a/a/h;->b:Landroid/support/a/a/l;

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    iget-object v0, p0, Landroid/support/a/a/h;->b:Landroid/support/a/a/l;

    iget-object v1, p0, Landroid/support/a/a/h;->a:Landroid/app/Activity;

    invoke-static {v0, v1, p1, p2}, Landroid/support/a/a/k;->a(Landroid/support/a/a/l;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Landroid/support/a/a/l;

    move-result-object v0

    iput-object v0, p0, Landroid/support/a/a/h;->b:Landroid/support/a/a/l;

    return-void
.end method
