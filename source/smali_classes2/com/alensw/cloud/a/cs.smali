.class Lcom/alensw/cloud/a/cs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/b/e/f;


# instance fields
.field final synthetic a:Lcom/alensw/b/e/e;

.field final synthetic b:Lcom/alensw/cloud/a/cm;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/a/cm;Lcom/alensw/b/e/e;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a/cs;->b:Lcom/alensw/cloud/a/cm;

    iput-object p2, p0, Lcom/alensw/cloud/a/cs;->a:Lcom/alensw/b/e/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b_()Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/a/cs;->a:Lcom/alensw/b/e/e;

    invoke-interface {v0}, Lcom/alensw/b/e/e;->b_()Z

    move-result v0

    return v0
.end method
