.class Lcom/alensw/ui/view/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/view/MultiListPreference;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/MultiListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/at;->a:Lcom/alensw/ui/view/MultiListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/at;->a:Lcom/alensw/ui/view/MultiListPreference;

    invoke-static {v0}, Lcom/alensw/ui/view/MultiListPreference;->a(Lcom/alensw/ui/view/MultiListPreference;)[Z

    move-result-object v0

    aput-boolean p3, v0, p2

    return-void
.end method
