.class Lcom/alensw/ui/c/cl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/bz;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/bz;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/cl;->a:Lcom/alensw/ui/c/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/cl;->a:Lcom/alensw/ui/c/bz;

    invoke-virtual {v0}, Lcom/alensw/ui/c/bz;->y()V

    return-void
.end method
