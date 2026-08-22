.class Lcom/alensw/cloud/oauth/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/cloud/oauth/w;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/oauth/w;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/oauth/x;->a:Lcom/alensw/cloud/oauth/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/cloud/oauth/x;->a:Lcom/alensw/cloud/oauth/w;

    iget-object v0, v0, Lcom/alensw/cloud/oauth/w;->b:Lcom/alensw/cloud/oauth/GmsAuthActivity;

    iget-object v1, p0, Lcom/alensw/cloud/oauth/x;->a:Lcom/alensw/cloud/oauth/w;

    iget-object v1, v1, Lcom/alensw/cloud/oauth/w;->a:Lcom/alensw/cloud/oauth/a;

    invoke-virtual {v0, v1}, Lcom/alensw/cloud/oauth/GmsAuthActivity;->a(Lcom/alensw/cloud/oauth/a;)V

    return-void
.end method
