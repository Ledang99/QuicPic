.class Lcom/alensw/cloud/oauth/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/cloud/oauth/w;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/oauth/w;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/oauth/y;->a:Lcom/alensw/cloud/oauth/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/oauth/y;->a:Lcom/alensw/cloud/oauth/w;

    iget-object v0, v0, Lcom/alensw/cloud/oauth/w;->b:Lcom/alensw/cloud/oauth/GmsAuthActivity;

    invoke-virtual {v0}, Lcom/alensw/cloud/oauth/GmsAuthActivity;->finish()V

    return-void
.end method
