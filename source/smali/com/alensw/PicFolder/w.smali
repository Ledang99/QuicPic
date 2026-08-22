.class Lcom/alensw/PicFolder/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/PicFolder/q;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/q;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/w;->a:Lcom/alensw/PicFolder/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alensw/PicFolder/w;->a:Lcom/alensw/PicFolder/q;

    invoke-virtual {v0, v1, v1}, Lcom/alensw/PicFolder/q;->a(IZ)V

    iget-object v0, p0, Lcom/alensw/PicFolder/w;->a:Lcom/alensw/PicFolder/q;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alensw/PicFolder/q;->e:Z

    iget-object v0, p0, Lcom/alensw/PicFolder/w;->a:Lcom/alensw/PicFolder/q;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/q;->a()V

    return-void
.end method
