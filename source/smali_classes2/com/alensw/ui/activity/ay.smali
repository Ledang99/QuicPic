.class Lcom/alensw/ui/activity/ay;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/activity/ao;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/ay;->a:Lcom/alensw/ui/activity/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/activity/ay;->a:Lcom/alensw/ui/activity/ao;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/activity/ao;->d(I)V

    return-void
.end method
