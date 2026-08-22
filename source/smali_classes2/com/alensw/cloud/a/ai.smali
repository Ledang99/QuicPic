.class public Lcom/alensw/cloud/a/ai;
.super Lcom/alensw/cloud/a/aj;


# instance fields
.field final synthetic a:Lcom/alensw/cloud/a/ae;


# direct methods
.method protected constructor <init>(Lcom/alensw/cloud/a/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/cloud/a/ai;->a:Lcom/alensw/cloud/a/ae;

    invoke-direct {p0, p1}, Lcom/alensw/cloud/a/aj;-><init>(Lcom/alensw/cloud/a/ae;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "flickr.interestingness.getList"

    return-object v0
.end method
