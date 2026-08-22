.class final Lcom/alensw/b/g/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/PopupWindow;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/widget/PopupWindow;I)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/b/g/i;->a:Landroid/widget/PopupWindow;

    iput p2, p0, Lcom/alensw/b/g/i;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alensw/b/g/i;->a:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/alensw/b/g/i;->b:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/PopupWindow;->update(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
