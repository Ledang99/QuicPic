.class Lcom/alensw/updater/UpdateView$1;
.super Ljava/lang/Object;
.source "UpdateView.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alensw/updater/UpdateView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alensw/updater/UpdateView;


# direct methods
.method constructor <init>(Lcom/alensw/updater/UpdateView;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/updater/UpdateView$1;->this$0:Lcom/alensw/updater/UpdateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    new-instance v0, Lcom/alensw/updater/UpdaterAssistant;

    iget-object v1, p0, Lcom/alensw/updater/UpdateView$1;->this$0:Lcom/alensw/updater/UpdateView;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/alensw/updater/UpdaterAssistant;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/alensw/updater/UpdaterAssistant;->checkForUpdates()V

    return v2
.end method
