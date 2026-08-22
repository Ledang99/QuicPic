.class Lcom/alensw/PicFolder/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/b/e/f;


# instance fields
.field final synthetic a:Lcom/alensw/PicFolder/CloudProvider;

.field private volatile b:Z


# direct methods
.method private constructor <init>(Lcom/alensw/PicFolder/CloudProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/b;->a:Lcom/alensw/PicFolder/CloudProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alensw/PicFolder/CloudProvider;Lcom/alensw/PicFolder/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alensw/PicFolder/b;-><init>(Lcom/alensw/PicFolder/CloudProvider;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alensw/PicFolder/b;->b:Z

    return-void
.end method

.method public b_()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/PicFolder/b;->b:Z

    return v0
.end method
