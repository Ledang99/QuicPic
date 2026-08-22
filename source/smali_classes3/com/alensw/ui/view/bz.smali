.class Lcom/alensw/ui/view/bz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/view/TitleBar;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/TitleBar;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/bz;->a:Lcom/alensw/ui/view/TitleBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/bz;->a:Lcom/alensw/ui/view/TitleBar;

    invoke-virtual {v0}, Lcom/alensw/ui/view/TitleBar;->e()V

    return-void
.end method
