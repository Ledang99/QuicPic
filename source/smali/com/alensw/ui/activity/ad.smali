.class Lcom/alensw/ui/activity/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/activity/ac;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/ad;->a:Lcom/alensw/ui/activity/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/activity/ad;->a:Lcom/alensw/ui/activity/ac;

    iget-object v0, v0, Lcom/alensw/ui/activity/ac;->a:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method
