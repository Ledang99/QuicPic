.class Lcom/alensw/ui/activity/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences;

.field final synthetic b:Lcom/alensw/ui/activity/MainPreference;


# direct methods
.method constructor <init>(Lcom/alensw/ui/activity/MainPreference;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/activity/ab;->b:Lcom/alensw/ui/activity/MainPreference;

    iput-object p2, p0, Lcom/alensw/ui/activity/ab;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alensw/ui/activity/ab;->a:Landroid/content/SharedPreferences;

    const-string v3, "default_sort"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const v2, 0x7f090073

    :goto_0
    iget-object v3, p0, Lcom/alensw/ui/activity/ab;->b:Lcom/alensw/ui/activity/MainPreference;

    const/4 v4, 0x0

    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5, v2, v0}, Lcom/alensw/ui/activity/a;->a(Landroid/content/Context;Landroid/view/View;[IIZ)V

    return v1

    :pswitch_0
    move v0, v1

    :pswitch_1
    const v2, 0x7f090074

    goto :goto_0

    :pswitch_2
    move v0, v1

    :pswitch_3
    const v2, 0x7f090075

    goto :goto_0

    :pswitch_4
    move v0, v1

    :pswitch_5
    const v2, 0x7f090076

    goto :goto_0

    :pswitch_6
    move v0, v1

    :pswitch_7
    const v2, 0x7f090077

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :array_0
    .array-data 4
        0x7f090073
        0x7f090074
        0x7f090075
        0x7f090076
        0x7f090077
    .end array-data
.end method
