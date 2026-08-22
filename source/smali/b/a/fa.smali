.class public final enum Lb/a/fa;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lb/a/fa;

.field public static final enum b:Lb/a/fa;

.field public static final enum c:Lb/a/fa;

.field public static final enum d:Lb/a/fa;

.field private static final synthetic f:[Lb/a/fa;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lb/a/fa;

    const-string v1, "ANDROID"

    invoke-direct {v0, v1, v2, v2}, Lb/a/fa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/fa;->a:Lb/a/fa;

    new-instance v0, Lb/a/fa;

    const-string v1, "IOS"

    invoke-direct {v0, v1, v3, v3}, Lb/a/fa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/fa;->b:Lb/a/fa;

    new-instance v0, Lb/a/fa;

    const-string v1, "WINDOWS_PHONE"

    invoke-direct {v0, v1, v4, v4}, Lb/a/fa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/fa;->c:Lb/a/fa;

    new-instance v0, Lb/a/fa;

    const-string v1, "WINDOWS_RT"

    invoke-direct {v0, v1, v5, v5}, Lb/a/fa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/fa;->d:Lb/a/fa;

    const/4 v0, 0x4

    new-array v0, v0, [Lb/a/fa;

    sget-object v1, Lb/a/fa;->a:Lb/a/fa;

    aput-object v1, v0, v2

    sget-object v1, Lb/a/fa;->b:Lb/a/fa;

    aput-object v1, v0, v3

    sget-object v1, Lb/a/fa;->c:Lb/a/fa;

    aput-object v1, v0, v4

    sget-object v1, Lb/a/fa;->d:Lb/a/fa;

    aput-object v1, v0, v5

    sput-object v0, Lb/a/fa;->f:[Lb/a/fa;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lb/a/fa;->e:I

    return-void
.end method

.method public static a(I)Lb/a/fa;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lb/a/fa;->a:Lb/a/fa;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lb/a/fa;->b:Lb/a/fa;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lb/a/fa;->c:Lb/a/fa;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lb/a/fa;->d:Lb/a/fa;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/fa;
    .locals 1

    const-class v0, Lb/a/fa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/a/fa;

    return-object v0
.end method

.method public static values()[Lb/a/fa;
    .locals 1

    sget-object v0, Lb/a/fa;->f:[Lb/a/fa;

    invoke-virtual {v0}, [Lb/a/fa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/fa;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lb/a/fa;->e:I

    return v0
.end method
