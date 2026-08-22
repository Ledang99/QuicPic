.class public Lcom/alensw/cloud/sync/a;
.super Landroid/accounts/AbstractAccountAuthenticator;


# static fields
.field private static a:Landroid/accounts/Account;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/accounts/AbstractAccountAuthenticator;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/alensw/cloud/sync/a;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 3

    sget-object v0, Lcom/alensw/cloud/sync/a;->a:Landroid/accounts/Account;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/alensw/cloud/sync/x;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v0, "name"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x7f0a009c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "name"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v1}, Lcom/alensw/b/l/b;->a(Landroid/content/SharedPreferences$Editor;)V

    :cond_0
    new-instance v1, Landroid/accounts/Account;

    const-string v2, "com.alensw.PicFolder.cloud.sync"

    invoke-direct {v1, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/alensw/cloud/sync/a;->a:Landroid/accounts/Account;

    :cond_1
    sget-object v0, Lcom/alensw/cloud/sync/a;->a:Landroid/accounts/Account;

    return-object v0
.end method


# virtual methods
.method public addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/alensw/cloud/sync/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/alensw/cloud/sync/a;->a(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/cloud/sync/a;->b:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/alensw/cloud/sync/x;->a(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "authAccount"

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "accountType"

    const-string v2, "com.alensw.PicFolder.cloud.sync"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alensw/cloud/sync/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/alensw/cloud/sync/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/alensw/cloud/sync/w;->a(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/alensw/cloud/sync/x;->a(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/alensw/cloud/sync/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/alensw/cloud/sync/x;->a(Landroid/content/Context;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "errorCode"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public confirmCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public editProperties(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAuthToken(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasFeatures(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public updateCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
