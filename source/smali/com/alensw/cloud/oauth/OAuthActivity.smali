.class public Lcom/alensw/cloud/oauth/OAuthActivity;
.super Lcom/alensw/cloud/oauth/e;


# instance fields
.field private d:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/cloud/oauth/e;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alensw/cloud/oauth/OAuthActivity;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/oauth/OAuthActivity;->d:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic a(Lcom/alensw/cloud/oauth/OAuthActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alensw/cloud/oauth/OAuthActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/alensw/cloud/oauth/a;

    invoke-direct {v0}, Lcom/alensw/cloud/oauth/a;-><init>()V

    iget-object v1, p0, Lcom/alensw/cloud/oauth/OAuthActivity;->a:Lcom/alensw/cloud/oauth/ah;

    invoke-virtual {v1, p1}, Lcom/alensw/cloud/oauth/ah;->a(Ljava/lang/String;)Z

    const/4 v1, 0x1

    invoke-super {p0, v1}, Lcom/alensw/cloud/oauth/e;->i(Z)V

    iget-object v1, p0, Lcom/alensw/cloud/oauth/OAuthActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setEnabled(Z)V

    invoke-virtual {p0, v0, v2}, Lcom/alensw/cloud/oauth/OAuthActivity;->a(Lcom/alensw/cloud/oauth/a;Z)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    invoke-super {p0}, Lcom/alensw/cloud/oauth/e;->onBackPressed()V

    iget-object v0, p0, Lcom/alensw/cloud/oauth/OAuthActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/oauth/OAuthActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/alensw/cloud/oauth/OAuthActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/alensw/cloud/oauth/e;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alensw/cloud/oauth/OAuthActivity;->d:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/alensw/cloud/oauth/OAuthActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/alensw/cloud/oauth/OAuthActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alensw/cloud/oauth/OAuthActivity;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/alensw/cloud/oauth/ae;

    invoke-direct {v1, p0}, Lcom/alensw/cloud/oauth/ae;-><init>(Lcom/alensw/cloud/oauth/OAuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/alensw/cloud/oauth/OAuthActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_0
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    invoke-virtual {p0, v4}, Lcom/alensw/cloud/oauth/OAuthActivity;->i(Z)V

    sget-object v0, Lcom/alensw/ui/a/ao;->d:Lcom/alensw/b/k/a;

    new-instance v1, Lcom/alensw/cloud/oauth/af;

    invoke-direct {v1, p0}, Lcom/alensw/cloud/oauth/af;-><init>(Lcom/alensw/cloud/oauth/OAuthActivity;)V

    invoke-virtual {v0, v1}, Lcom/alensw/b/k/a;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/cloud/oauth/OAuthActivity;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/oauth/OAuthActivity;->d:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    :cond_0
    invoke-super {p0}, Lcom/alensw/cloud/oauth/e;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/alensw/cloud/oauth/e;->onPause()V

    invoke-virtual {p0}, Lcom/alensw/cloud/oauth/OAuthActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/oauth/OAuthActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    :cond_0
    return-void
.end method
