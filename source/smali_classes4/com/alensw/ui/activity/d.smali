.class final Lcom/alensw/ui/activity/d;
.super Lcom/alensw/b/g/b;


# instance fields
.field final synthetic f:I

.field final synthetic g:Z


# direct methods
.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    iput p2, p0, Lcom/alensw/ui/activity/d;->f:I

    iput-boolean p3, p0, Lcom/alensw/ui/activity/d;->g:Z

    invoke-direct {p0, p1}, Lcom/alensw/b/g/b;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public b()Lcom/alensw/b/g/a;
    .locals 3

    new-instance v0, Lcom/alensw/ui/activity/e;

    iget-object v1, p0, Lcom/alensw/ui/activity/d;->d:Landroid/content/Context;

    iget v2, p0, Lcom/alensw/ui/activity/d;->b:I

    invoke-direct {v0, p0, v1, v2}, Lcom/alensw/ui/activity/e;-><init>(Lcom/alensw/ui/activity/d;Landroid/content/Context;I)V

    invoke-virtual {v0, p0}, Lcom/alensw/b/g/a;->a(Lcom/alensw/b/g/b;)V

    return-object v0
.end method
