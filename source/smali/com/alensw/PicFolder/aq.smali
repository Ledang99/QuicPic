.class Lcom/alensw/PicFolder/aq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/PicFolder/ao;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/aq;->a:Lcom/alensw/PicFolder/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/PicFolder/aq;->a:Lcom/alensw/PicFolder/ao;

    iget-object v0, v0, Lcom/alensw/PicFolder/ao;->b:Lcom/alensw/PicFolder/PlayerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alensw/PicFolder/PlayerActivity;->a(Z)V

    iget-object v0, p0, Lcom/alensw/PicFolder/aq;->a:Lcom/alensw/PicFolder/ao;

    iget-object v0, v0, Lcom/alensw/PicFolder/ao;->b:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/PlayerActivity;->c()V

    return-void
.end method
