.class Lcom/alensw/ui/c/az;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/c/do;


# instance fields
.field final synthetic a:Lcom/alensw/bean/CommonFile;

.field final synthetic b:Lcom/alensw/ui/c/as;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/as;Lcom/alensw/bean/CommonFile;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/az;->b:Lcom/alensw/ui/c/as;

    iput-object p2, p0, Lcom/alensw/ui/c/az;->a:Lcom/alensw/bean/CommonFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 7

    const-wide/16 v4, 0x3e8

    iget-object v0, p0, Lcom/alensw/ui/c/az;->a:Lcom/alensw/bean/CommonFile;

    div-long v2, p1, v4

    div-long v4, p3, v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/alensw/bean/CommonFile;->a(JJ)V

    iget-object v0, p0, Lcom/alensw/ui/c/az;->b:Lcom/alensw/ui/c/as;

    invoke-static {v0}, Lcom/alensw/ui/c/as;->b(Lcom/alensw/ui/c/as;)Lcom/alensw/bean/CommonFolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/az;->b:Lcom/alensw/ui/c/as;

    invoke-static {v0}, Lcom/alensw/ui/c/as;->b(Lcom/alensw/ui/c/as;)Lcom/alensw/bean/CommonFolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFolder;->s()V

    :cond_0
    return-void
.end method
