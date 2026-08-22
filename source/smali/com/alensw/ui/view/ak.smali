.class public Lcom/alensw/ui/view/ak;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/alensw/b/h/h;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:[Ljava/lang/String;

.field final synthetic e:Lcom/alensw/ui/view/ImageGridView;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lcom/alensw/ui/view/ImageGridView;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/alensw/ui/view/ak;->e:Lcom/alensw/ui/view/ImageGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alensw/ui/view/ak;->f:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/alensw/ui/view/ak;->g:I

    iput-object v1, p0, Lcom/alensw/ui/view/ak;->a:Lcom/alensw/b/h/h;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/ui/view/ak;->b:I

    iput-object v1, p0, Lcom/alensw/ui/view/ak;->c:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alensw/ui/view/ak;->d:[Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alensw/ui/view/ak;)I
    .locals 1

    iget v0, p0, Lcom/alensw/ui/view/ak;->f:I

    return v0
.end method

.method static synthetic a(Lcom/alensw/ui/view/ak;I)I
    .locals 0

    iput p1, p0, Lcom/alensw/ui/view/ak;->f:I

    return p1
.end method

.method static synthetic b(Lcom/alensw/ui/view/ak;)I
    .locals 1

    iget v0, p0, Lcom/alensw/ui/view/ak;->g:I

    return v0
.end method

.method static synthetic b(Lcom/alensw/ui/view/ak;I)I
    .locals 0

    iput p1, p0, Lcom/alensw/ui/view/ak;->g:I

    return p1
.end method


# virtual methods
.method public a()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v0, -0x1

    iput v0, p0, Lcom/alensw/ui/view/ak;->f:I

    iget-object v0, p0, Lcom/alensw/ui/view/ak;->a:Lcom/alensw/b/h/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/ak;->a:Lcom/alensw/b/h/h;

    invoke-virtual {v0}, Lcom/alensw/b/h/h;->m()I

    :cond_0
    iput-object v5, p0, Lcom/alensw/ui/view/ak;->a:Lcom/alensw/b/h/h;

    iput-object v5, p0, Lcom/alensw/ui/view/ak;->c:Ljava/lang/String;

    iput v6, p0, Lcom/alensw/ui/view/ak;->b:I

    iget-object v0, p0, Lcom/alensw/ui/view/ak;->d:[Ljava/lang/String;

    iget-object v1, p0, Lcom/alensw/ui/view/ak;->d:[Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alensw/ui/view/ak;->d:[Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v5, v3, v4

    aput-object v5, v1, v2

    aput-object v5, v0, v6

    return-void
.end method
