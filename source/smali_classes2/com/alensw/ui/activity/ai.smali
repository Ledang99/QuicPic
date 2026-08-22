.class Lcom/alensw/ui/activity/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/preference/SwitchPreference;

.field final synthetic b:Lcom/alensw/ui/activity/ah;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/ah;Landroid/preference/SwitchPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/ai;->b:Lcom/alensw/ui/activity/ah;

    iput-object p2, p0, Lcom/alensw/ui/activity/ai;->a:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/activity/ai;->a:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method
