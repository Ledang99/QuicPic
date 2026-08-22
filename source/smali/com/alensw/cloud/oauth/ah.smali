.class public abstract Lcom/alensw/cloud/oauth/ah;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/alensw/cloud/z;

.field protected final b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/alensw/cloud/z;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alensw/cloud/oauth/ah;->a:Lcom/alensw/cloud/z;

    iput-object p2, p0, Lcom/alensw/cloud/oauth/ah;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/alensw/cloud/z;)Lcom/alensw/cloud/oauth/ah;
    .locals 2

    sget-object v0, Lcom/alensw/cloud/oauth/ai;->a:[I

    invoke-virtual {p0}, Lcom/alensw/cloud/z;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/alensw/cloud/oauth/j;

    invoke-direct {v0, p0}, Lcom/alensw/cloud/oauth/j;-><init>(Lcom/alensw/cloud/z;)V

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/alensw/cloud/oauth/al;

    invoke-direct {v0}, Lcom/alensw/cloud/oauth/al;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/alensw/cloud/oauth/d;

    invoke-direct {v0}, Lcom/alensw/cloud/oauth/d;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/alensw/cloud/oauth/t;

    invoke-direct {v0}, Lcom/alensw/cloud/oauth/t;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/alensw/cloud/oauth/ak;

    invoke-direct {v0}, Lcom/alensw/cloud/oauth/ak;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/alensw/cloud/oauth/v;

    invoke-direct {v0}, Lcom/alensw/cloud/oauth/v;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/alensw/cloud/oauth/u;

    invoke-direct {v0}, Lcom/alensw/cloud/oauth/u;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/alensw/cloud/oauth/aa;

    invoke-direct {v0}, Lcom/alensw/cloud/oauth/aa;-><init>()V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/alensw/cloud/oauth/am;

    invoke-direct {v0}, Lcom/alensw/cloud/oauth/am;-><init>()V

    goto :goto_0

    :pswitch_8
    new-instance v0, Lcom/alensw/cloud/oauth/s;

    invoke-direct {v0}, Lcom/alensw/cloud/oauth/s;-><init>()V

    goto :goto_0

    :pswitch_9
    new-instance v0, Lcom/alensw/cloud/oauth/c;

    invoke-direct {v0}, Lcom/alensw/cloud/oauth/c;-><init>()V

    goto :goto_0

    :pswitch_a
    new-instance v0, Lcom/alensw/cloud/oauth/an;

    invoke-direct {v0}, Lcom/alensw/cloud/oauth/an;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static d(Ljava/lang/String;)Lcom/alensw/cloud/oauth/ah;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/alensw/cloud/z;->valueOf(Ljava/lang/String;)Lcom/alensw/cloud/z;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/cloud/oauth/ah;->a(Lcom/alensw/cloud/z;)Lcom/alensw/cloud/oauth/ah;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Lcom/alensw/b/e/f;)Ljava/lang/String;
.end method

.method public abstract a(Lcom/alensw/cloud/oauth/a;Lcom/alensw/b/e/f;)V
.end method

.method public abstract a(Lcom/alensw/cloud/oauth/aj;Lcom/alensw/b/e/f;)V
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract a(Ljava/lang/String;)Z
.end method

.method public final d()Lcom/alensw/cloud/z;
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/oauth/ah;->a:Lcom/alensw/cloud/z;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/oauth/ah;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
