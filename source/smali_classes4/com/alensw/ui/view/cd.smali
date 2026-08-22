.class public abstract Lcom/alensw/ui/view/cd;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/hardware/SensorManager;

.field private b:Lcom/alensw/ui/view/ce;

.field private c:Z

.field private final d:I

.field private final e:Landroid/hardware/Sensor;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/alensw/ui/view/cd;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alensw/ui/view/cd;->f:I

    iput p2, p0, Lcom/alensw/ui/view/cd;->d:I

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/alensw/ui/view/cd;->a:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/alensw/ui/view/cd;->a:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/view/cd;->e:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/alensw/ui/view/cd;->e:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alensw/ui/view/ce;

    invoke-direct {v0, p0}, Lcom/alensw/ui/view/ce;-><init>(Lcom/alensw/ui/view/cd;)V

    iput-object v0, p0, Lcom/alensw/ui/view/cd;->b:Lcom/alensw/ui/view/ce;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alensw/ui/view/cd;)I
    .locals 1

    iget v0, p0, Lcom/alensw/ui/view/cd;->f:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/view/cd;->e:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alensw/ui/view/cd;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/cd;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/alensw/ui/view/cd;->b:Lcom/alensw/ui/view/ce;

    iget-object v2, p0, Lcom/alensw/ui/view/cd;->e:Landroid/hardware/Sensor;

    iget v3, p0, Lcom/alensw/ui/view/cd;->d:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alensw/ui/view/cd;->c:Z

    :cond_0
    return-void
.end method

.method public abstract a(I)V
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/view/cd;->e:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alensw/ui/view/cd;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/cd;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/alensw/ui/view/cd;->b:Lcom/alensw/ui/view/ce;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alensw/ui/view/cd;->c:Z

    :cond_0
    return-void
.end method
