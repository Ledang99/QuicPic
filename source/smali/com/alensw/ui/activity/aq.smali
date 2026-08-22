.class Lcom/alensw/ui/activity/aq;
.super Lcom/alensw/ui/view/r;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alensw/ui/activity/ao;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/ao;Landroid/view/View;Landroid/view/animation/Interpolator;III)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/aq;->b:Lcom/alensw/ui/activity/ao;

    iput p6, p0, Lcom/alensw/ui/activity/aq;->a:I

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/alensw/ui/view/r;-><init>(Landroid/view/View;Landroid/view/animation/Interpolator;II)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/activity/aq;->b:Lcom/alensw/ui/activity/ao;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/activity/ao;->g(I)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/activity/aq;->b:Lcom/alensw/ui/activity/ao;

    iget v1, p0, Lcom/alensw/ui/activity/aq;->a:I

    invoke-virtual {v0, v1}, Lcom/alensw/ui/activity/ao;->g(I)V

    return-void
.end method
