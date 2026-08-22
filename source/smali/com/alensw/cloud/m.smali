.class final Lcom/alensw/cloud/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/m;->a:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alensw/cloud/x;Lcom/alensw/cloud/x;)I
    .locals 4

    iget v0, p1, Lcom/alensw/cloud/x;->d:I

    iget v1, p2, Lcom/alensw/cloud/x;->d:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/alensw/b/b/b;->a:Lcom/alensw/b/b/c;

    iget-object v1, p0, Lcom/alensw/cloud/m;->a:Landroid/content/res/Resources;

    iget v2, p1, Lcom/alensw/cloud/x;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/cloud/m;->a:Landroid/content/res/Resources;

    iget v3, p2, Lcom/alensw/cloud/x;->c:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alensw/b/b/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/alensw/cloud/x;

    check-cast p2, Lcom/alensw/cloud/x;

    invoke-virtual {p0, p1, p2}, Lcom/alensw/cloud/m;->a(Lcom/alensw/cloud/x;Lcom/alensw/cloud/x;)I

    move-result v0

    return v0
.end method
