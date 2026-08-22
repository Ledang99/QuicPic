.class public final enum Lb/a/bi;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lb/a/bi;

.field public static final enum b:Lb/a/bi;

.field private static final synthetic d:[Lb/a/bi;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lb/a/bi;

    const-string v1, "LEGIT"

    invoke-direct {v0, v1, v3, v2}, Lb/a/bi;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/bi;->a:Lb/a/bi;

    new-instance v0, Lb/a/bi;

    const-string v1, "ALIEN"

    invoke-direct {v0, v1, v2, v4}, Lb/a/bi;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/bi;->b:Lb/a/bi;

    new-array v0, v4, [Lb/a/bi;

    sget-object v1, Lb/a/bi;->a:Lb/a/bi;

    aput-object v1, v0, v3

    sget-object v1, Lb/a/bi;->b:Lb/a/bi;

    aput-object v1, v0, v2

    sput-object v0, Lb/a/bi;->d:[Lb/a/bi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lb/a/bi;->c:I

    return-void
.end method

.method public static a(I)Lb/a/bi;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lb/a/bi;->a:Lb/a/bi;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lb/a/bi;->b:Lb/a/bi;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/bi;
    .locals 1

    const-class v0, Lb/a/bi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/a/bi;

    return-object v0
.end method

.method public static values()[Lb/a/bi;
    .locals 1

    sget-object v0, Lb/a/bi;->d:[Lb/a/bi;

    invoke-virtual {v0}, [Lb/a/bi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/bi;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lb/a/bi;->c:I

    return v0
.end method
