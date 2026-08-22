.class public Lcom/alensw/ui/view/ap;
.super Ljava/lang/Object;


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:Lcom/alensw/ui/view/bt;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/alensw/ui/view/ap;->a:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/ui/view/ap;->b:F

    iput v2, p0, Lcom/alensw/ui/view/ap;->c:F

    iput v1, p0, Lcom/alensw/ui/view/ap;->d:F

    iput v1, p0, Lcom/alensw/ui/view/ap;->e:F

    return-void
.end method
