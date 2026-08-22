.class Lcom/alensw/ui/c/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/p;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/p;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/x;->a:Lcom/alensw/ui/c/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/c/x;->a:Lcom/alensw/ui/c/p;

    invoke-static {v0}, Lcom/alensw/ui/c/p;->g(Lcom/alensw/ui/c/p;)Lcom/alensw/bean/CommonFolder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/alensw/bean/CommonFolder;->a(I)Lcom/alensw/bean/CommonFile;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/ui/c/x;->a:Lcom/alensw/ui/c/p;

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/x;->a:Lcom/alensw/ui/c/p;

    invoke-static {v0}, Lcom/alensw/ui/c/p;->g(Lcom/alensw/ui/c/p;)Lcom/alensw/bean/CommonFolder;

    move-result-object v0

    iget-object v3, p0, Lcom/alensw/ui/c/x;->a:Lcom/alensw/ui/c/p;

    invoke-static {v3}, Lcom/alensw/ui/c/p;->c(Lcom/alensw/ui/c/p;)Lcom/alensw/bean/CommonFolder;

    move-result-object v3

    if-ne v0, v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v1, v0}, Lcom/alensw/ui/c/p;->a(Lcom/alensw/bean/CommonFile;Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
