.class public Lcom/alensw/b/a/h;
.super Ljava/lang/Object;


# static fields
.field private static c:Ljava/lang/reflect/Method;


# instance fields
.field private a:I

.field private final b:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-class v0, Ljava/util/LinkedHashMap;

    const-string v1, "eldest"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alensw/b/a/h;->c:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/alensw/b/a/h;->a:I

    new-instance v0, Lcom/alensw/b/a/i;

    if-gtz p1, :cond_0

    const/16 p1, 0x100

    :cond_0
    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/alensw/b/a/i;-><init>(Lcom/alensw/b/a/h;IFZ)V

    iput-object v0, p0, Lcom/alensw/b/a/h;->b:Ljava/util/LinkedHashMap;

    return-void
.end method

.method static synthetic a(Lcom/alensw/b/a/h;)I
    .locals 1

    iget v0, p0, Lcom/alensw/b/a/h;->a:I

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/a/h;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/a/h;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p2, :cond_0

    invoke-virtual {p0, v0}, Lcom/alensw/b/a/h;->b(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
