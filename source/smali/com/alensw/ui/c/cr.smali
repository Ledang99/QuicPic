.class Lcom/alensw/ui/c/cr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alensw/ui/c/bz;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/bz;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/cr;->b:Lcom/alensw/ui/c/bz;

    iput-boolean p2, p0, Lcom/alensw/ui/c/cr;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->q:Lcom/alensw/a/s;

    iget-boolean v1, p0, Lcom/alensw/ui/c/cr;->a:Z

    iput-boolean v1, v0, Lcom/alensw/a/s;->b:Z

    iget-object v0, p0, Lcom/alensw/ui/c/cr;->b:Lcom/alensw/ui/c/bz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/bz;->a(Z)V

    return-void
.end method
