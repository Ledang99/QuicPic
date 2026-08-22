.class public Lcom/alensw/b/j/d;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/alensw/b/j/c;

.field private final b:I

.field private final c:I

.field private d:I


# direct methods
.method constructor <init>(Lcom/alensw/b/j/c;I)V
    .locals 2

    iput-object p1, p0, Lcom/alensw/b/j/d;->a:Lcom/alensw/b/j/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/alensw/b/j/d;->b:I

    invoke-static {p1}, Lcom/alensw/b/j/c;->a(Lcom/alensw/b/j/c;)I

    move-result v0

    mul-int/2addr v0, p2

    iput v0, p0, Lcom/alensw/b/j/d;->d:I

    iget v0, p0, Lcom/alensw/b/j/d;->d:I

    invoke-static {p1}, Lcom/alensw/b/j/c;->a(Lcom/alensw/b/j/c;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alensw/b/j/d;->c:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/alensw/b/j/d;->a:Lcom/alensw/b/j/c;

    invoke-static {v1}, Lcom/alensw/b/j/c;->c(Lcom/alensw/b/j/c;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/alensw/b/j/d;->a:Lcom/alensw/b/j/c;

    invoke-static {v1}, Lcom/alensw/b/j/c;->c(Lcom/alensw/b/j/c;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alensw/b/j/d;->a:Lcom/alensw/b/j/c;

    invoke-static {v1}, Lcom/alensw/b/j/c;->b(Lcom/alensw/b/j/c;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/alensw/b/j/d;->b:I

    iget-object v3, p0, Lcom/alensw/b/j/d;->a:Lcom/alensw/b/j/c;

    invoke-static {v3}, Lcom/alensw/b/j/c;->a(Lcom/alensw/b/j/c;)I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v2, v0

    aput-object p2, v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
