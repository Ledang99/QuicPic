.class Lcom/alensw/cloud/oauth/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alensw/cloud/oauth/af;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/oauth/af;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/oauth/ag;->b:Lcom/alensw/cloud/oauth/af;

    iput-object p2, p0, Lcom/alensw/cloud/oauth/ag;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/cloud/oauth/ag;->b:Lcom/alensw/cloud/oauth/af;

    iget-object v0, v0, Lcom/alensw/cloud/oauth/af;->a:Lcom/alensw/cloud/oauth/OAuthActivity;

    invoke-static {v0}, Lcom/alensw/cloud/oauth/OAuthActivity;->a(Lcom/alensw/cloud/oauth/OAuthActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/cloud/oauth/ag;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
