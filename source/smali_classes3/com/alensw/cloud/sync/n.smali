.class Lcom/alensw/cloud/sync/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alensw/cloud/sync/m;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/sync/m;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/sync/n;->b:Lcom/alensw/cloud/sync/m;

    iput-boolean p2, p0, Lcom/alensw/cloud/sync/n;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/cloud/sync/n;->b:Lcom/alensw/cloud/sync/m;

    iget-object v0, v0, Lcom/alensw/cloud/sync/m;->d:Lcom/alensw/cloud/sync/SyncSettings;

    invoke-static {v0}, Lcom/alensw/cloud/sync/SyncSettings;->e(Lcom/alensw/cloud/sync/SyncSettings;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/cloud/sync/n;->b:Lcom/alensw/cloud/sync/m;

    iget-object v1, v1, Lcom/alensw/cloud/sync/m;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alensw/cloud/sync/n;->a:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/alensw/b/l/b;->a(Landroid/content/SharedPreferences$Editor;)V

    iget-object v0, p0, Lcom/alensw/cloud/sync/n;->b:Lcom/alensw/cloud/sync/m;

    iget-object v0, v0, Lcom/alensw/cloud/sync/m;->a:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/alensw/cloud/sync/n;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
