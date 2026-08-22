.class Lcom/alensw/PicFolder/ap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/PicFolder/ao;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/ap;->a:Lcom/alensw/PicFolder/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/ap;->a:Lcom/alensw/PicFolder/ao;

    iget-object v0, v0, Lcom/alensw/PicFolder/ao;->b:Lcom/alensw/PicFolder/PlayerActivity;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/PlayerActivity;->d()V

    return-void
.end method
