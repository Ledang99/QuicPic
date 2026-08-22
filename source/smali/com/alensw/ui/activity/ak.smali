.class Lcom/alensw/ui/activity/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/a/s;


# instance fields
.field final synthetic a:Lcom/alensw/ui/activity/aj;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/ak;->a:Lcom/alensw/ui/activity/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/activity/ak;->a:Lcom/alensw/ui/activity/aj;

    iget-object v0, v0, Lcom/alensw/ui/activity/aj;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "slideshow_interval"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/alensw/ui/activity/ak;->a:Lcom/alensw/ui/activity/aj;

    iget-object v0, v0, Lcom/alensw/ui/activity/aj;->d:Landroid/preference/ListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/ui/activity/ak;->a:Lcom/alensw/ui/activity/aj;

    iget-object v2, v2, Lcom/alensw/ui/activity/aj;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
