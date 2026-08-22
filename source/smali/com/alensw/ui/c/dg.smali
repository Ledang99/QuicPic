.class Lcom/alensw/ui/c/dg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:[F

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lcom/alensw/ui/c/df;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/df;[FLandroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/dg;->c:Lcom/alensw/ui/c/df;

    iput-object p2, p0, Lcom/alensw/ui/c/dg;->a:[F

    iput-object p3, p0, Lcom/alensw/ui/c/dg;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/alensw/ui/c/dg;->c:Lcom/alensw/ui/c/df;

    invoke-static {v0}, Lcom/alensw/ui/c/df;->a(Lcom/alensw/ui/c/df;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/alensw/ui/c/dg;->a:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    float-to-double v2, v0

    iget-object v0, p0, Lcom/alensw/ui/c/dg;->a:[F

    const/4 v4, 0x1

    aget v0, v0, v4

    float-to-double v4, v0

    iget-object v6, p0, Lcom/alensw/ui/c/dg;->b:Landroid/widget/TextView;

    invoke-static/range {v1 .. v6}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;DDLandroid/view/View;)V

    return-void
.end method
