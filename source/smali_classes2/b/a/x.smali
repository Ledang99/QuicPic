.class Lb/a/x;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/hv;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/t;)V
    .locals 0

    invoke-direct {p0}, Lb/a/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lb/a/w;
    .locals 2

    new-instance v0, Lb/a/w;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/a/w;-><init>(Lb/a/t;)V

    return-object v0
.end method

.method public synthetic b()Lb/a/hu;
    .locals 1

    invoke-virtual {p0}, Lb/a/x;->a()Lb/a/w;

    move-result-object v0

    return-object v0
.end method
