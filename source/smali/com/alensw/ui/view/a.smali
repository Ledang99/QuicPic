.class Lcom/alensw/ui/view/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/view/View;

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:Ljava/lang/Runnable;

.field private f:Z

.field private g:Lcom/alensw/ui/view/bt;

.field private h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/alensw/ui/view/a;->b:I

    const/16 v0, 0xf0

    iput v0, p0, Lcom/alensw/ui/view/a;->c:I

    iput v1, p0, Lcom/alensw/ui/view/a;->d:I

    new-instance v0, Lcom/alensw/ui/view/b;

    invoke-direct {v0, p0}, Lcom/alensw/ui/view/b;-><init>(Lcom/alensw/ui/view/a;)V

    iput-object v0, p0, Lcom/alensw/ui/view/a;->e:Ljava/lang/Runnable;

    new-instance v0, Lcom/alensw/ui/view/c;

    invoke-direct {v0, p0}, Lcom/alensw/ui/view/c;-><init>(Lcom/alensw/ui/view/a;)V

    iput-object v0, p0, Lcom/alensw/ui/view/a;->h:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/alensw/ui/view/a;->a:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/alensw/ui/view/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/ui/view/a;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/alensw/ui/view/a;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/a;->h:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    iput p1, p0, Lcom/alensw/ui/view/a;->b:I

    return-void

    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/a;->b(I)V

    invoke-virtual {p0}, Lcom/alensw/ui/view/a;->b()V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/a;->b(Z)V

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/alensw/ui/view/a;->c:I

    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/a;->b(I)V

    invoke-virtual {p0}, Lcom/alensw/ui/view/a;->b()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/alensw/ui/view/a;->b(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Z)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/alensw/ui/view/a;->b:I

    if-gt v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/alensw/ui/view/a;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget v0, p0, Lcom/alensw/ui/view/a;->b:I

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/alensw/ui/view/a;->a(I)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    iget v0, p0, Lcom/alensw/ui/view/a;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 1

    iget v0, p0, Lcom/alensw/ui/view/a;->d:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/alensw/ui/view/a;->d:I

    invoke-virtual {p0}, Lcom/alensw/ui/view/a;->b()V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/view/a;->g:Lcom/alensw/ui/view/bt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/a;->g:Lcom/alensw/ui/view/bt;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bt;->c()V

    :cond_0
    iput-boolean p1, p0, Lcom/alensw/ui/view/a;->f:Z

    iget-object v0, p0, Lcom/alensw/ui/view/a;->g:Lcom/alensw/ui/view/bt;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alensw/ui/view/d;

    iget-object v1, p0, Lcom/alensw/ui/view/a;->a:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/alensw/ui/view/d;-><init>(Lcom/alensw/ui/view/a;Landroid/view/View;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/alensw/ui/view/a;->g:Lcom/alensw/ui/view/bt;

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/view/a;->g:Lcom/alensw/ui/view/bt;

    const-wide/16 v2, 0x12c

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/alensw/ui/view/bt;->a(JZ)V

    return-void
.end method
