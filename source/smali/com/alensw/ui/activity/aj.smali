.class Lcom/alensw/ui/activity/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/SharedPreferences;

.field final synthetic c:Ljava/lang/Integer;

.field final synthetic d:Landroid/preference/ListPreference;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/alensw/ui/activity/MainPreference;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/MainPreference;Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/lang/Integer;Landroid/preference/ListPreference;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/aj;->f:Lcom/alensw/ui/activity/MainPreference;

    iput-object p2, p0, Lcom/alensw/ui/activity/aj;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alensw/ui/activity/aj;->b:Landroid/content/SharedPreferences;

    iput-object p4, p0, Lcom/alensw/ui/activity/aj;->c:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/alensw/ui/activity/aj;->d:Landroid/preference/ListPreference;

    iput-object p6, p0, Lcom/alensw/ui/activity/aj;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    iget-object v0, p0, Lcom/alensw/ui/activity/aj;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/aj;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "slideshow_interval"

    iget-object v2, p0, Lcom/alensw/ui/activity/aj;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/alensw/ui/activity/aj;->f:Lcom/alensw/ui/activity/MainPreference;

    const v1, 0x7f0a007b

    iget-object v2, p0, Lcom/alensw/ui/activity/aj;->c:Ljava/lang/Integer;

    const/4 v3, 0x0

    new-instance v4, Lcom/alensw/ui/activity/ak;

    invoke-direct {v4, p0}, Lcom/alensw/ui/activity/ak;-><init>(Lcom/alensw/ui/activity/aj;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alensw/ui/a/f;->a(Landroid/content/Context;ILjava/lang/Object;Ljava/lang/CharSequence;Lcom/alensw/ui/a/s;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/activity/aj;->d:Landroid/preference/ListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/ui/activity/aj;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
