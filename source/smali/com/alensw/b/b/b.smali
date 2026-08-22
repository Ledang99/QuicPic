.class public Lcom/alensw/b/b/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/alensw/b/b/c;

.field private static b:Lcom/alensw/b/b/c;

.field private static c:Lcom/alensw/b/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alensw/b/b/c;

    invoke-direct {v0}, Lcom/alensw/b/b/c;-><init>()V

    sput-object v0, Lcom/alensw/b/b/b;->b:Lcom/alensw/b/b/c;

    new-instance v0, Lcom/alensw/b/b/a;

    invoke-direct {v0}, Lcom/alensw/b/b/a;-><init>()V

    sput-object v0, Lcom/alensw/b/b/b;->c:Lcom/alensw/b/b/c;

    sget-object v0, Lcom/alensw/b/b/b;->b:Lcom/alensw/b/b/c;

    sput-object v0, Lcom/alensw/b/b/b;->a:Lcom/alensw/b/b/c;

    return-void
.end method

.method public static a(Z)Z
    .locals 2

    if-eqz p0, :cond_0

    sget-object v0, Lcom/alensw/b/b/b;->c:Lcom/alensw/b/b/c;

    :goto_0
    sget-object v1, Lcom/alensw/b/b/b;->a:Lcom/alensw/b/b/c;

    if-eq v1, v0, :cond_1

    sput-object v0, Lcom/alensw/b/b/b;->a:Lcom/alensw/b/b/c;

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    sget-object v0, Lcom/alensw/b/b/b;->b:Lcom/alensw/b/b/c;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
