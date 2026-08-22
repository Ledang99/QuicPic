.class Lb/a/aj;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/hv;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/ah;)V
    .locals 0

    invoke-direct {p0}, Lb/a/aj;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lb/a/ai;
    .locals 2

    new-instance v0, Lb/a/ai;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/a/ai;-><init>(Lb/a/ah;)V

    return-object v0
.end method

.method public synthetic b()Lb/a/hu;
    .locals 1

    invoke-virtual {p0}, Lb/a/aj;->a()Lb/a/ai;

    move-result-object v0

    return-object v0
.end method
