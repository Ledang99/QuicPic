.class Lcom/alensw/ui/view/bg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/view/bf;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/bf;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/bg;->a:Lcom/alensw/ui/view/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/bg;->a:Lcom/alensw/ui/view/bf;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bf;->d()V

    return-void
.end method
