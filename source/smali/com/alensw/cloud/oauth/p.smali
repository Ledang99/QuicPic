.class Lcom/alensw/cloud/oauth/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljavax/net/ssl/SSLException;

.field final synthetic c:Lcom/alensw/cloud/oauth/BasicAuthActivity;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/oauth/BasicAuthActivity;Ljava/lang/String;Ljavax/net/ssl/SSLException;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/oauth/p;->c:Lcom/alensw/cloud/oauth/BasicAuthActivity;

    iput-object p2, p0, Lcom/alensw/cloud/oauth/p;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alensw/cloud/oauth/p;->b:Ljavax/net/ssl/SSLException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/cloud/oauth/p;->c:Lcom/alensw/cloud/oauth/BasicAuthActivity;

    iget-object v1, p0, Lcom/alensw/cloud/oauth/p;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alensw/cloud/oauth/p;->b:Ljavax/net/ssl/SSLException;

    invoke-static {v0, v1, v2}, Lcom/alensw/cloud/oauth/BasicAuthActivity;->a(Lcom/alensw/cloud/oauth/BasicAuthActivity;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
