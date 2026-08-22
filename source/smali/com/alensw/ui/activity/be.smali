.class Lcom/alensw/ui/activity/be;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Landroid/preference/PreferenceScreen;

.field final synthetic b:Lcom/alensw/ui/activity/ba;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/ba;Landroid/preference/PreferenceScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/be;->b:Lcom/alensw/ui/activity/ba;

    iput-object p2, p0, Lcom/alensw/ui/activity/be;->a:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/activity/be;->b:Lcom/alensw/ui/activity/ba;

    invoke-static {v0}, Lcom/alensw/ui/activity/ba;->a(Lcom/alensw/ui/activity/ba;)Ljava/util/Stack;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/activity/be;->b:Lcom/alensw/ui/activity/ba;

    invoke-virtual {v1}, Lcom/alensw/ui/activity/ba;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alensw/ui/activity/be;->b:Lcom/alensw/ui/activity/ba;

    iget-object v1, p0, Lcom/alensw/ui/activity/be;->a:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Lcom/alensw/ui/activity/ba;->a(Landroid/preference/PreferenceScreen;)V

    const/4 v0, 0x1

    return v0
.end method
