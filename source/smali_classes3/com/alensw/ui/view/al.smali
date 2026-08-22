.class Lcom/alensw/ui/view/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/view/ap;

.field final synthetic b:Lcom/alensw/ui/view/LockPatternView;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/LockPatternView;Lcom/alensw/ui/view/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/al;->b:Lcom/alensw/ui/view/LockPatternView;

    iput-object p2, p0, Lcom/alensw/ui/view/al;->a:Lcom/alensw/ui/view/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v1, p0, Lcom/alensw/ui/view/al;->b:Lcom/alensw/ui/view/LockPatternView;

    iget-object v0, p0, Lcom/alensw/ui/view/al;->b:Lcom/alensw/ui/view/LockPatternView;

    invoke-static {v0}, Lcom/alensw/ui/view/LockPatternView;->a(Lcom/alensw/ui/view/LockPatternView;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, 0xc0

    iget-object v0, p0, Lcom/alensw/ui/view/al;->b:Lcom/alensw/ui/view/LockPatternView;

    invoke-static {v0}, Lcom/alensw/ui/view/LockPatternView;->b(Lcom/alensw/ui/view/LockPatternView;)Landroid/view/animation/Interpolator;

    move-result-object v6

    iget-object v7, p0, Lcom/alensw/ui/view/al;->a:Lcom/alensw/ui/view/ap;

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/alensw/ui/view/LockPatternView;->a(Lcom/alensw/ui/view/LockPatternView;FFJLandroid/view/animation/Interpolator;Lcom/alensw/ui/view/ap;Ljava/lang/Runnable;)V

    return-void
.end method
