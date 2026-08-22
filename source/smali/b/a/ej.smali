.class public Lb/a/ej;
.super Lb/a/gs;


# static fields
.field public static final a:Ljava/util/Map;

.field private static final d:Lb/a/hs;

.field private static final e:Lb/a/hk;

.field private static final f:Lb/a/hk;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0xb

    const/16 v6, 0xa

    const/4 v5, 0x3

    new-instance v0, Lb/a/hs;

    const-string v1, "PropertyValue"

    invoke-direct {v0, v1}, Lb/a/hs;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb/a/ej;->d:Lb/a/hs;

    new-instance v0, Lb/a/hk;

    const-string v1, "string_value"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v7, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/ej;->e:Lb/a/hk;

    new-instance v0, Lb/a/hk;

    const-string v1, "long_value"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v6, v2}, Lb/a/hk;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lb/a/ej;->f:Lb/a/hk;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lb/a/el;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lb/a/el;->a:Lb/a/el;

    new-instance v2, Lb/a/gz;

    const-string v3, "string_value"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v7}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lb/a/el;->b:Lb/a/el;

    new-instance v2, Lb/a/gz;

    const-string v3, "long_value"

    new-instance v4, Lb/a/ha;

    invoke-direct {v4, v6}, Lb/a/ha;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lb/a/gz;-><init>(Ljava/lang/String;BLb/a/ha;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lb/a/ej;->a:Ljava/util/Map;

    const-class v0, Lb/a/ej;

    sget-object v1, Lb/a/ej;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lb/a/gz;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/gs;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(S)Lb/a/el;
    .locals 1

    invoke-static {p1}, Lb/a/el;->b(I)Lb/a/el;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lb/a/el;)Lb/a/hk;
    .locals 3

    sget-object v0, Lb/a/ek;->a:[I

    invoke-virtual {p1}, Lb/a/el;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown field id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lb/a/ej;->e:Lb/a/hk;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lb/a/ej;->f:Lb/a/hk;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic a(Lb/a/gq;)Lb/a/hk;
    .locals 1

    check-cast p1, Lb/a/el;

    invoke-virtual {p0, p1}, Lb/a/ej;->a(Lb/a/el;)Lb/a/hk;

    move-result-object v0

    return-object v0
.end method

.method protected a()Lb/a/hs;
    .locals 1

    sget-object v0, Lb/a/ej;->d:Lb/a/hs;

    return-object v0
.end method

.method protected a(Lb/a/hn;Lb/a/hk;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    iget-short v1, p2, Lb/a/hk;->c:S

    invoke-static {v1}, Lb/a/el;->a(I)Lb/a/el;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lb/a/ek;->a:[I

    invoke-virtual {v1}, Lb/a/el;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setField wasn\'t null, but didn\'t match any of the case statements!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-byte v1, p2, Lb/a/hk;->b:B

    sget-object v2, Lb/a/ej;->e:Lb/a/hk;

    iget-byte v2, v2, Lb/a/hk;->b:B

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lb/a/hn;->v()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-byte v1, p2, Lb/a/hk;->b:B

    invoke-static {p1, v1}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_0

    :pswitch_1
    iget-byte v1, p2, Lb/a/hk;->b:B

    sget-object v2, Lb/a/ej;->f:Lb/a/hk;

    iget-byte v2, v2, Lb/a/hk;->b:B

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lb/a/hn;->t()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-byte v1, p2, Lb/a/hk;->b:B

    invoke-static {p1, v1}, Lb/a/hq;->a(Lb/a/hn;B)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Lb/a/hn;S)Ljava/lang/Object;
    .locals 3

    invoke-static {p2}, Lb/a/el;->a(I)Lb/a/el;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lb/a/ek;->a:[I

    invoke-virtual {v0}, Lb/a/el;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setField wasn\'t null, but didn\'t match any of the case statements!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p1}, Lb/a/hn;->v()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p1}, Lb/a/hn;->t()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lb/a/ho;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find a field with field id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/ho;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(J)V
    .locals 1

    sget-object v0, Lb/a/el;->b:Lb/a/el;

    iput-object v0, p0, Lb/a/ej;->c:Lb/a/gq;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lb/a/ej;->b:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Lb/a/el;->a:Lb/a/el;

    iput-object v0, p0, Lb/a/ej;->c:Lb/a/gq;

    iput-object p1, p0, Lb/a/ej;->b:Ljava/lang/Object;

    return-void
.end method

.method public a(Lb/a/ej;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lb/a/ej;->b()Lb/a/gq;

    move-result-object v0

    invoke-virtual {p1}, Lb/a/ej;->b()Lb/a/gq;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lb/a/ej;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lb/a/ej;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic b(S)Lb/a/gq;
    .locals 1

    invoke-virtual {p0, p1}, Lb/a/ej;->a(S)Lb/a/el;

    move-result-object v0

    return-object v0
.end method

.method protected c(Lb/a/hn;)V
    .locals 3

    sget-object v1, Lb/a/ek;->a:[I

    iget-object v0, p0, Lb/a/ej;->c:Lb/a/gq;

    check-cast v0, Lb/a/el;

    invoke-virtual {v0}, Lb/a/el;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot write union with unknown field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lb/a/ej;->c:Lb/a/gq;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lb/a/ej;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lb/a/ej;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lb/a/hn;->a(J)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected d(Lb/a/hn;)V
    .locals 3

    sget-object v1, Lb/a/ek;->a:[I

    iget-object v0, p0, Lb/a/ej;->c:Lb/a/gq;

    check-cast v0, Lb/a/el;

    invoke-virtual {v0}, Lb/a/el;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot write union with unknown field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lb/a/ej;->c:Lb/a/gq;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lb/a/ej;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/hn;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lb/a/ej;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lb/a/hn;->a(J)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lb/a/ej;

    if-eqz v0, :cond_0

    check-cast p1, Lb/a/ej;

    invoke-virtual {p0, p1}, Lb/a/ej;->a(Lb/a/ej;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
