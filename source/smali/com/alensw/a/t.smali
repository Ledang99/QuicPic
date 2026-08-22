.class Lcom/alensw/a/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alensw/a/s;


# direct methods
.method constructor <init>(Lcom/alensw/a/s;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/a/t;->c:Lcom/alensw/a/s;

    iput-boolean p2, p0, Lcom/alensw/a/t;->a:Z

    iput-object p3, p0, Lcom/alensw/a/t;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .locals 3

    iget-boolean v0, p0, Lcom/alensw/a/t;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alensw/a/ba;->m:[Ljava/lang/String;

    :goto_0
    sget-object v1, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    iget-object v2, p0, Lcom/alensw/a/t;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/alensw/a/ba;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/alensw/a/ba;->l:[Ljava/lang/String;

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/a/t;->a()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method
