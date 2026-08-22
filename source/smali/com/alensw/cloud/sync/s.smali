.class Lcom/alensw/cloud/sync/s;
.super Lcom/alensw/cloud/sync/v;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/cloud/sync/v;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alensw/cloud/sync/v;)V
    .locals 1

    invoke-direct {p0}, Lcom/alensw/cloud/sync/v;-><init>()V

    iget-object v0, p1, Lcom/alensw/cloud/sync/v;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/alensw/cloud/sync/s;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/alensw/cloud/sync/v;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/alensw/cloud/sync/s;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/alensw/cloud/sync/v;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/alensw/cloud/sync/s;->e:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/alensw/cloud/sync/v;->f:Z

    iput-boolean v0, p0, Lcom/alensw/cloud/sync/s;->f:Z

    return-void
.end method
