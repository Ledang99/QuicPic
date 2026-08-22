.class Lcom/alensw/transfer/ar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/a/s;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alensw/transfer/ac;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/ac;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/ar;->b:Lcom/alensw/transfer/ac;

    iput-object p2, p0, Lcom/alensw/transfer/ar;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alensw/transfer/ar;->b:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->d(Lcom/alensw/transfer/ac;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/transfer/ar;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/alensw/transfer/ar;->b:Lcom/alensw/transfer/ac;

    invoke-static {v1, p1}, Lcom/alensw/transfer/ac;->a(Lcom/alensw/transfer/ac;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "transfer_name"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-static {v0}, Lcom/alensw/b/l/b;->a(Landroid/content/SharedPreferences$Editor;)V

    iget-object v0, p0, Lcom/alensw/transfer/ar;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alensw/transfer/TransferActivity;

    iget-object v1, p0, Lcom/alensw/transfer/ar;->b:Lcom/alensw/transfer/ac;

    invoke-static {v1}, Lcom/alensw/transfer/ac;->d(Lcom/alensw/transfer/ac;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/transfer/TransferActivity;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alensw/transfer/ar;->b:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->e(Lcom/alensw/transfer/ac;)Lcom/alensw/transfer/a/t;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/transfer/ar;->b:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->e(Lcom/alensw/transfer/ac;)Lcom/alensw/transfer/a/t;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/transfer/ar;->b:Lcom/alensw/transfer/ac;

    invoke-static {v1}, Lcom/alensw/transfer/ac;->d(Lcom/alensw/transfer/ac;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/transfer/a/t;->a(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/alensw/transfer/ar;->b:Lcom/alensw/transfer/ac;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alensw/transfer/ac;->a(Lcom/alensw/transfer/ac;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "transfer_name"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
