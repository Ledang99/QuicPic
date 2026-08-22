.class public Lb/a/j;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private final b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb/a/j;->a:I

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lb/a/j;->b:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget v0, p0, Lb/a/j;->a:I

    packed-switch v0, :pswitch_data_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :pswitch_0
    const-wide/32 v0, 0xdbba00

    goto :goto_0

    :pswitch_1
    const-wide/32 v0, 0x1b77400

    goto :goto_0

    :pswitch_2
    const-wide/32 v0, 0x5265c00

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Landroid/content/Context;)Lb/a/fb;
    .locals 6

    const-wide/32 v4, 0xea60

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lb/a/fb;

    invoke-direct {v2}, Lb/a/fb;-><init>()V

    invoke-static {p1}, Lb/a/jb;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lb/a/fb;->a(Ljava/lang/String;)Lb/a/fb;

    invoke-virtual {v2, v0, v1}, Lb/a/fb;->a(J)Lb/a/fb;

    add-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Lb/a/fb;->b(J)Lb/a/fb;

    invoke-virtual {v2, v4, v5}, Lb/a/fb;->c(J)Lb/a/fb;

    return-object v2
.end method

.method public a(Landroid/content/Context;Lb/a/fp;)Lb/a/fp;
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_1

    move-object p2, v0

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    iget v1, p0, Lb/a/j;->a:I

    if-ne v1, v3, :cond_2

    invoke-virtual {p2, v0}, Lb/a/fp;->a(Ljava/util/List;)Lb/a/fp;

    goto :goto_0

    :cond_2
    iget v1, p0, Lb/a/j;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    new-array v1, v3, [Lb/a/fb;

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lb/a/j;->a(Landroid/content/Context;)Lb/a/fb;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v1}, Lb/a/fp;->b(Ljava/util/List;)Lb/a/fp;

    invoke-virtual {p2, v0}, Lb/a/fp;->a(Ljava/util/List;)Lb/a/fp;

    goto :goto_0

    :cond_3
    iget v1, p0, Lb/a/j;->a:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {p2, v0}, Lb/a/fp;->b(Ljava/util/List;)Lb/a/fp;

    invoke-virtual {p2, v0}, Lb/a/fp;->a(Ljava/util/List;)Lb/a/fp;

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    iput p1, p0, Lb/a/j;->a:I

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    iget v0, p0, Lb/a/j;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
