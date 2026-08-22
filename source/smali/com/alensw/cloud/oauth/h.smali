.class Lcom/alensw/cloud/oauth/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/cloud/oauth/g;


# direct methods
.method constructor <init>(Lcom/alensw/cloud/oauth/g;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/oauth/h;->a:Lcom/alensw/cloud/oauth/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/cloud/oauth/h;->a:Lcom/alensw/cloud/oauth/g;

    iget-object v0, v0, Lcom/alensw/cloud/oauth/g;->c:Lcom/alensw/cloud/oauth/e;

    iget-object v1, p0, Lcom/alensw/cloud/oauth/h;->a:Lcom/alensw/cloud/oauth/g;

    iget-object v1, v1, Lcom/alensw/cloud/oauth/g;->a:Lcom/alensw/cloud/oauth/a;

    invoke-virtual {v0, v1}, Lcom/alensw/cloud/oauth/e;->a(Lcom/alensw/cloud/oauth/a;)V

    return-void
.end method
