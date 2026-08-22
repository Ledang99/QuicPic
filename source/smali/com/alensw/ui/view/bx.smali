.class Lcom/alensw/ui/view/bx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/view/TitleBar;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/TitleBar;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/bx;->a:Lcom/alensw/ui/view/TitleBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/bx;->a:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/view/TitleBar;->a(Landroid/view/View;)V

    return-void
.end method
