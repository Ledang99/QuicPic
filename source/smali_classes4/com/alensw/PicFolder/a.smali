.class Lcom/alensw/PicFolder/a;
.super Lcom/alensw/cloud/ac;


# instance fields
.field final synthetic a:Lcom/alensw/PicFolder/CloudProvider;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/CloudProvider;I)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/a;->a:Lcom/alensw/PicFolder/CloudProvider;

    invoke-direct {p0, p2}, Lcom/alensw/cloud/ac;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/i;)J
    .locals 6

    iget-object v0, p0, Lcom/alensw/PicFolder/a;->a:Lcom/alensw/PicFolder/CloudProvider;

    invoke-static {v0, p1}, Lcom/alensw/PicFolder/CloudProvider;->a(Lcom/alensw/PicFolder/CloudProvider;Ljava/lang/String;)Lcom/alensw/PicFolder/c;

    move-result-object v0

    invoke-static {p1}, Lcom/alensw/PicFolder/CloudProvider;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/PicFolder/a;->a:Lcom/alensw/PicFolder/CloudProvider;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/alensw/PicFolder/CloudProvider;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alensw/b/e/i;Lcom/alensw/b/e/e;)V

    iget-object v0, v0, Lcom/alensw/PicFolder/c;->d:Lcom/alensw/cloud/a/ay;

    const-string v2, "_size"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/alensw/cloud/a/ay;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
