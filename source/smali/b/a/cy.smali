.class Lb/a/cy;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/hv;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/cu;)V
    .locals 0

    invoke-direct {p0}, Lb/a/cy;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lb/a/cx;
    .locals 2

    new-instance v0, Lb/a/cx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/a/cx;-><init>(Lb/a/cu;)V

    return-object v0
.end method

.method public synthetic b()Lb/a/hu;
    .locals 1

    invoke-virtual {p0}, Lb/a/cy;->a()Lb/a/cx;

    move-result-object v0

    return-object v0
.end method
