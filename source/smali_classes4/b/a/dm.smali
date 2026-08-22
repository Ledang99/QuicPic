.class Lb/a/dm;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/hv;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/di;)V
    .locals 0

    invoke-direct {p0}, Lb/a/dm;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lb/a/dl;
    .locals 2

    new-instance v0, Lb/a/dl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/a/dl;-><init>(Lb/a/di;)V

    return-object v0
.end method

.method public synthetic b()Lb/a/hu;
    .locals 1

    invoke-virtual {p0}, Lb/a/dm;->a()Lb/a/dl;

    move-result-object v0

    return-object v0
.end method
