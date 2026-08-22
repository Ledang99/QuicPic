.class Lcom/alensw/ui/view/bq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field final synthetic a:Lcom/alensw/ui/view/bp;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/bp;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/bq;->a:Lcom/alensw/ui/view/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/bq;->a:Lcom/alensw/ui/view/bp;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bp;->invalidate()V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method
