.class Landroid/support/a/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/a/a/c;


# instance fields
.field final a:Landroid/app/Activity;

.field private b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/a/a/g;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/g;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    iget-object v0, p0, Landroid/support/a/a/g;->b:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/a/a/g;->a:Landroid/app/Activity;

    const v1, 0x102002c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/a/a/g;->b:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/g;->b:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/a/a/g;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method
