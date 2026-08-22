.class final Lcom/alensw/ui/view/ce;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final b:[[I


# instance fields
.field private final a:Lcom/alensw/ui/view/cd;

.field private c:J

.field private d:F

.field private e:F

.field private f:F

.field private g:I

.field private h:I

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:[F

.field private n:[J

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    sput-object v0, Lcom/alensw/ui/view/ce;->b:[[I

    return-void

    :array_0
    .array-data 4
        -0x19
        0x46
    .end array-data

    :array_1
    .array-data 4
        -0x19
        0x41
    .end array-data

    :array_2
    .array-data 4
        -0x19
        0x3c
    .end array-data

    :array_3
    .array-data 4
        -0x19
        0x41
    .end array-data
.end method

.method public constructor <init>(Lcom/alensw/ui/view/cd;)V
    .locals 2

    const/16 v1, 0x28

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/alensw/ui/view/ce;->m:[F

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/alensw/ui/view/ce;->n:[J

    iput-object p1, p0, Lcom/alensw/ui/view/ce;->a:Lcom/alensw/ui/view/cd;

    invoke-direct {p0}, Lcom/alensw/ui/view/ce;->a()V

    return-void
.end method

.method private a(I)I
    .locals 6

    if-nez p1, :cond_0

    const/16 p1, 0x28

    :cond_0
    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/alensw/ui/view/ce;->n:[J

    aget-wide v2, v1, v0

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private a()V
    .locals 4

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/alensw/ui/view/ce;->c:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/alensw/ui/view/ce;->g:I

    iput-wide v2, p0, Lcom/alensw/ui/view/ce;->j:J

    iput-wide v2, p0, Lcom/alensw/ui/view/ce;->k:J

    iput-wide v2, p0, Lcom/alensw/ui/view/ce;->l:J

    invoke-direct {p0}, Lcom/alensw/ui/view/ce;->b()V

    invoke-direct {p0}, Lcom/alensw/ui/view/ce;->c()V

    return-void
.end method

.method private a(JF)V
    .locals 5

    iget-object v0, p0, Lcom/alensw/ui/view/ce;->m:[F

    iget v1, p0, Lcom/alensw/ui/view/ce;->o:I

    aput p3, v0, v1

    iget-object v0, p0, Lcom/alensw/ui/view/ce;->n:[J

    iget v1, p0, Lcom/alensw/ui/view/ce;->o:I

    aput-wide p1, v0, v1

    iget v0, p0, Lcom/alensw/ui/view/ce;->o:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x28

    iput v0, p0, Lcom/alensw/ui/view/ce;->o:I

    iget-object v0, p0, Lcom/alensw/ui/view/ce;->n:[J

    iget v1, p0, Lcom/alensw/ui/view/ce;->o:I

    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v1

    return-void
.end method

.method private a(JI)V
    .locals 1

    iget v0, p0, Lcom/alensw/ui/view/ce;->h:I

    if-eq v0, p3, :cond_0

    iput p3, p0, Lcom/alensw/ui/view/ce;->h:I

    iput-wide p1, p0, Lcom/alensw/ui/view/ce;->i:J

    :cond_0
    return-void
.end method

.method private a(F)Z
    .locals 1

    const v0, 0x40b9d014

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x415ce80a

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(II)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/alensw/ui/view/ce;->b:[[I

    aget-object v2, v2, p1

    aget v2, v2, v1

    if-lt p2, v2, :cond_0

    sget-object v2, Lcom/alensw/ui/view/ce;->b:[[I

    aget-object v2, v2, p1

    aget v2, v2, v0

    if-gt p2, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private a(J)Z
    .locals 9

    const-wide/32 v6, 0x1dcd6500

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/alensw/ui/view/ce;->i:J

    const-wide/32 v4, 0x2625a00

    add-long/2addr v2, v4

    cmp-long v1, p1, v2

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcom/alensw/ui/view/ce;->j:J

    add-long/2addr v2, v6

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    iget-wide v2, p0, Lcom/alensw/ui/view/ce;->k:J

    const-wide/32 v4, 0x11e1a300

    add-long/2addr v2, v4

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    iget-wide v2, p0, Lcom/alensw/ui/view/ce;->l:J

    add-long/2addr v2, v6

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/alensw/ui/view/ce;->h:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/alensw/ui/view/ce;->i:J

    return-void
.end method

.method private b(II)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alensw/ui/view/ce;->a:Lcom/alensw/ui/view/cd;

    invoke-static {v1}, Lcom/alensw/ui/view/cd;->a(Lcom/alensw/ui/view/cd;)I

    move-result v1

    if-ltz v1, :cond_5

    if-eq p1, v1, :cond_0

    add-int/lit8 v2, v1, 0x1

    rem-int/lit8 v2, v2, 0x4

    if-ne p1, v2, :cond_3

    :cond_0
    mul-int/lit8 v2, p1, 0x5a

    add-int/lit8 v2, v2, -0x2d

    add-int/lit8 v2, v2, 0x16

    if-nez p1, :cond_2

    const/16 v3, 0x13b

    if-lt p2, v3, :cond_3

    add-int/lit16 v2, v2, 0x168

    if-ge p2, v2, :cond_3

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-lt p2, v2, :cond_1

    :cond_3
    if-eq p1, v1, :cond_4

    add-int/lit8 v1, v1, 0x3

    rem-int/lit8 v1, v1, 0x4

    if-ne p1, v1, :cond_5

    :cond_4
    mul-int/lit8 v1, p1, 0x5a

    add-int/lit8 v1, v1, 0x2d

    add-int/lit8 v1, v1, -0x16

    if-nez p1, :cond_6

    const/16 v2, 0x2d

    if-gt p2, v2, :cond_5

    if-gt p2, v1, :cond_1

    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    if-le p2, v1, :cond_5

    goto :goto_0
.end method

.method private b(J)Z
    .locals 7

    iget v0, p0, Lcom/alensw/ui/view/ce;->o:I

    :cond_0
    invoke-direct {p0, v0}, Lcom/alensw/ui/view/ce;->a(I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/alensw/ui/view/ce;->m:[F

    aget v1, v1, v0

    const/high16 v2, 0x42960000    # 75.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/alensw/ui/view/ce;->n:[J

    aget-wide v2, v1, v0

    const-wide/32 v4, 0x3b9aca00

    add-long/2addr v2, v4

    cmp-long v1, v2, p1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(JF)Z
    .locals 7

    iget v0, p0, Lcom/alensw/ui/view/ce;->o:I

    :cond_0
    invoke-direct {p0, v0}, Lcom/alensw/ui/view/ce;->a(I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/alensw/ui/view/ce;->n:[J

    aget-wide v2, v1, v0

    const-wide/32 v4, 0x11e1a300

    add-long/2addr v2, v4

    cmp-long v1, v2, p1

    if-gez v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/alensw/ui/view/ce;->m:[F

    aget v1, v1, v0

    const/high16 v2, 0x41a00000    # 20.0f

    add-float/2addr v1, v2

    cmpg-float v1, v1, p3

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/view/ce;->n:[J

    const/4 v1, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v1

    const/4 v0, 0x1

    iput v0, p0, Lcom/alensw/ui/view/ce;->o:I

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v3, v0, v1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x1

    aget v2, v0, v1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x2

    aget v1, v0, v1

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v6, p0, Lcom/alensw/ui/view/ce;->c:J

    sub-long v8, v4, v6

    long-to-float v0, v8

    const v8, 0x358637bd    # 1.0E-6f

    mul-float/2addr v0, v8

    cmp-long v8, v4, v6

    if-ltz v8, :cond_0

    const-wide/32 v8, 0x3b9aca00

    add-long/2addr v6, v8

    cmp-long v6, v4, v6

    if-gtz v6, :cond_0

    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-nez v6, :cond_5

    const/4 v6, 0x0

    cmpl-float v6, v2, v6

    if-nez v6, :cond_5

    const/4 v6, 0x0

    cmpl-float v6, v1, v6

    if-nez v6, :cond_5

    :cond_0
    invoke-direct {p0}, Lcom/alensw/ui/view/ce;->a()V

    const/4 v0, 0x1

    :goto_0
    iput-wide v4, p0, Lcom/alensw/ui/view/ce;->c:J

    iput v3, p0, Lcom/alensw/ui/view/ce;->d:F

    iput v2, p0, Lcom/alensw/ui/view/ce;->e:F

    iput v1, p0, Lcom/alensw/ui/view/ce;->f:F

    if-nez v0, :cond_1

    mul-float v0, v3, v3

    mul-float v6, v2, v2

    add-float/2addr v0, v6

    mul-float v6, v1, v1

    add-float/2addr v0, v6

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v0, v6

    if-gez v6, :cond_6

    invoke-direct {p0}, Lcom/alensw/ui/view/ce;->b()V

    :cond_1
    :goto_1
    iget v0, p0, Lcom/alensw/ui/view/ce;->g:I

    iget v1, p0, Lcom/alensw/ui/view/ce;->h:I

    if-ltz v1, :cond_2

    invoke-direct {p0, v4, v5}, Lcom/alensw/ui/view/ce;->a(J)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget v1, p0, Lcom/alensw/ui/view/ce;->h:I

    iput v1, p0, Lcom/alensw/ui/view/ce;->g:I

    :cond_3
    iget v1, p0, Lcom/alensw/ui/view/ce;->g:I

    if-eq v1, v0, :cond_4

    iget v0, p0, Lcom/alensw/ui/view/ce;->g:I

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/alensw/ui/view/ce;->a:Lcom/alensw/ui/view/cd;

    iget v1, p0, Lcom/alensw/ui/view/ce;->g:I

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/cd;->a(I)V

    :cond_4
    return-void

    :cond_5
    const/high16 v6, 0x43480000    # 200.0f

    add-float/2addr v6, v0

    div-float/2addr v0, v6

    iget v6, p0, Lcom/alensw/ui/view/ce;->d:F

    sub-float/2addr v3, v6

    mul-float/2addr v3, v0

    iget v6, p0, Lcom/alensw/ui/view/ce;->d:F

    add-float/2addr v3, v6

    iget v6, p0, Lcom/alensw/ui/view/ce;->e:F

    sub-float/2addr v2, v6

    mul-float/2addr v2, v0

    iget v6, p0, Lcom/alensw/ui/view/ce;->e:F

    add-float/2addr v2, v6

    iget v6, p0, Lcom/alensw/ui/view/ce;->f:F

    sub-float/2addr v1, v6

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/alensw/ui/view/ce;->f:F

    add-float/2addr v1, v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    invoke-direct {p0, v0}, Lcom/alensw/ui/view/ce;->a(F)Z

    move-result v6

    if-eqz v6, :cond_7

    iput-wide v4, p0, Lcom/alensw/ui/view/ce;->l:J

    :cond_7
    div-float v0, v1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    const-wide v6, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v6, v0

    int-to-float v0, v6

    invoke-direct {p0, v4, v5, v0}, Lcom/alensw/ui/view/ce;->a(JF)V

    invoke-direct {p0, v4, v5}, Lcom/alensw/ui/view/ce;->b(J)Z

    move-result v0

    if-eqz v0, :cond_8

    iput-wide v4, p0, Lcom/alensw/ui/view/ce;->j:J

    :cond_8
    int-to-float v0, v6

    invoke-direct {p0, v4, v5, v0}, Lcom/alensw/ui/view/ce;->b(JF)Z

    move-result v0

    if-eqz v0, :cond_9

    iput-wide v4, p0, Lcom/alensw/ui/view/ce;->k:J

    :cond_9
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x4b

    if-le v0, v1, :cond_a

    invoke-direct {p0}, Lcom/alensw/ui/view/ce;->b()V

    goto :goto_1

    :cond_a
    neg-float v0, v3

    float-to-double v0, v0

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    neg-double v0, v0

    const-wide v2, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    if-gez v0, :cond_b

    add-int/lit16 v0, v0, 0x168

    :cond_b
    add-int/lit8 v1, v0, 0x2d

    div-int/lit8 v1, v1, 0x5a

    const/4 v2, 0x4

    if-ne v1, v2, :cond_c

    const/4 v1, 0x0

    :cond_c
    invoke-direct {p0, v1, v6}, Lcom/alensw/ui/view/ce;->a(II)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-direct {p0, v1, v0}, Lcom/alensw/ui/view/ce;->b(II)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0, v4, v5, v1}, Lcom/alensw/ui/view/ce;->a(JI)V

    goto/16 :goto_1

    :cond_d
    invoke-direct {p0}, Lcom/alensw/ui/view/ce;->b()V

    goto/16 :goto_1
.end method
