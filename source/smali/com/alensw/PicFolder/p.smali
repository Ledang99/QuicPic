.class Lcom/alensw/PicFolder/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/a/t;


# instance fields
.field final synthetic a:Lcom/alensw/PicFolder/n;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/n;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/p;->a:Lcom/alensw/PicFolder/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 7

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alensw/PicFolder/p;->a:Lcom/alensw/PicFolder/n;

    iget-object v0, v0, Lcom/alensw/PicFolder/n;->c:Lcom/alensw/PicFolder/CropActivity;

    move v2, p1

    move v3, p2

    move v5, v4

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alensw/PicFolder/CropActivity;->a(ZIIIIZ)V

    return-void
.end method
