.class Lcom/alensw/cloud/oauth/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alensw/cloud/oauth/BasicAuthActivity;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/oauth/BasicAuthActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/oauth/r;->b:Lcom/alensw/cloud/oauth/BasicAuthActivity;

    iput-object p2, p0, Lcom/alensw/cloud/oauth/r;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/cloud/oauth/r;->b:Lcom/alensw/cloud/oauth/BasicAuthActivity;

    invoke-static {v0}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->f(Lcom/alensw/cloud/oauth/BasicAuthActivity;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/cloud/oauth/r;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alensw/cloud/oauth/r;->b:Lcom/alensw/cloud/oauth/BasicAuthActivity;

    invoke-static {v0}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->c(Lcom/alensw/cloud/oauth/BasicAuthActivity;)V

    return-void
.end method
