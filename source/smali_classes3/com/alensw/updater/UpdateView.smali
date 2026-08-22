.class public Lcom/alensw/updater/UpdateView;
.super Lcom/alensw/ui/activity/ba;
.source "UpdateView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/ui/activity/ba;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alensw/ui/activity/ba;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/alensw/updater/UpdateView;->setContentView(I)V

    const v0, 0x7f040004

    invoke-virtual {p0, v0}, Lcom/alensw/updater/UpdateView;->addPreferencesFromResource(I)V

    const-string v0, "checkForUpdates"

    invoke-virtual {p0, v0}, Lcom/alensw/updater/UpdateView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/alensw/updater/UpdateView$1;

    invoke-direct {v1, p0}, Lcom/alensw/updater/UpdateView$1;-><init>(Lcom/alensw/updater/UpdateView;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method
