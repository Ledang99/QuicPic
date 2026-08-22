.class Lcom/alensw/cloud/oauth/ae;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/alensw/cloud/oauth/OAuthActivity;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/oauth/OAuthActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/oauth/ae;->a:Lcom/alensw/cloud/oauth/OAuthActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alensw/cloud/oauth/ae;->a:Lcom/alensw/cloud/oauth/OAuthActivity;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/cloud/oauth/OAuthActivity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alensw/cloud/oauth/ae;->a:Lcom/alensw/cloud/oauth/OAuthActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alensw/cloud/oauth/OAuthActivity;->i(Z)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/oauth/ae;->a:Lcom/alensw/cloud/oauth/OAuthActivity;

    iget-object v0, v0, Lcom/alensw/cloud/oauth/OAuthActivity;->a:Lcom/alensw/cloud/oauth/ah;

    invoke-virtual {v0, p2}, Lcom/alensw/cloud/oauth/ah;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/oauth/ae;->a:Lcom/alensw/cloud/oauth/OAuthActivity;

    invoke-static {v0, p2}, Lcom/alensw/cloud/oauth/OAuthActivity;->a(Lcom/alensw/cloud/oauth/OAuthActivity;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
