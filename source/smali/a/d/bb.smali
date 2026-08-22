.class interface abstract La/d/bb;
.super Ljava/lang/Object;


# static fields
.field public static final W:Ljava/net/InetAddress;

.field public static final X:Ljava/lang/String;

.field public static final Y:I

.field public static final Z:Ljava/util/TimeZone;

.field public static final aa:Ljava/lang/String;

.field public static final ab:Ljava/util/LinkedList;

.field public static final ac:Ljava/lang/String;

.field public static final ad:La/d/bm;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    sput-object v4, La/d/bb;->W:Ljava/net/InetAddress;

    sput-object v4, La/d/bb;->X:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x40f0000000000000L    # 65536.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, La/d/bb;->Y:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, La/d/bb;->Z:Ljava/util/TimeZone;

    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/d/bb;->aa:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, La/d/bb;->ab:Ljava/util/LinkedList;

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/d/bb;->ac:Ljava/lang/String;

    new-instance v0, La/d/bm;

    invoke-direct {v0, v4, v5, v4, v5}, La/d/bm;-><init>(La/a;ILjava/net/InetAddress;I)V

    sput-object v0, La/d/bb;->ad:La/d/bm;

    return-void
.end method
