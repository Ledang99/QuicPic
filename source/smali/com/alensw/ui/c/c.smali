.class Lcom/alensw/ui/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/c/m;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/n;

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:Ljava/util/HashSet;

.field final synthetic e:Landroid/content/ContentResolver;

.field final synthetic f:Lcom/alensw/ui/c/a;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/a;Lcom/alensw/ui/c/n;ZILjava/util/HashSet;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/c;->f:Lcom/alensw/ui/c/a;

    iput-object p2, p0, Lcom/alensw/ui/c/c;->a:Lcom/alensw/ui/c/n;

    iput-boolean p3, p0, Lcom/alensw/ui/c/c;->b:Z

    iput p4, p0, Lcom/alensw/ui/c/c;->c:I

    iput-object p5, p0, Lcom/alensw/ui/c/c;->d:Ljava/util/HashSet;

    iput-object p6, p0, Lcom/alensw/ui/c/c;->e:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 11

    iget-object v0, p0, Lcom/alensw/ui/c/c;->a:Lcom/alensw/ui/c/n;

    iget-boolean v1, p0, Lcom/alensw/ui/c/c;->b:Z

    invoke-interface {v0, v1}, Lcom/alensw/ui/c/n;->a(Z)V

    new-instance v5, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/alensw/PicFolder/QuickApp;->r:Lcom/alensw/a/bc;

    sget-object v6, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    new-instance v8, Ljava/util/HashSet;

    iget v0, p0, Lcom/alensw/ui/c/c;->c:I

    invoke-direct {v8, v0}, Ljava/util/HashSet;-><init>(I)V

    new-instance v9, Ljava/util/ArrayList;

    iget v0, p0, Lcom/alensw/ui/c/c;->c:I

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v10, Ljava/util/ArrayList;

    iget v0, p0, Lcom/alensw/ui/c/c;->c:I

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alensw/ui/c/c;->f:Lcom/alensw/ui/c/a;

    iget-boolean v0, p0, Lcom/alensw/ui/c/c;->b:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a0024

    :goto_0
    invoke-virtual {v2, v0}, Lcom/alensw/ui/c/a;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/alensw/ui/c/d;

    iget-object v1, p0, Lcom/alensw/ui/c/c;->f:Lcom/alensw/ui/c/a;

    iget-object v2, v1, Lcom/alensw/ui/c/a;->C:Lcom/alensw/ui/c/cx;

    iget v4, p0, Lcom/alensw/ui/c/c;->c:I

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/alensw/ui/c/d;-><init>(Lcom/alensw/ui/c/c;Landroid/app/Activity;Ljava/lang/String;ILjava/io/File;Lcom/alensw/a/ba;Lcom/alensw/a/bc;Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/alensw/ui/c/d;->c()V

    return-void

    :cond_0
    const v0, 0x7f0a004b

    goto :goto_0
.end method
