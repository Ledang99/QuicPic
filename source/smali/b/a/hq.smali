.class public Lb/a/hq;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7fffffff

    sput v0, Lb/a/hq;->a:I

    return-void
.end method

.method public static a(Lb/a/hn;B)V
    .locals 1

    sget v0, Lb/a/hq;->a:I

    invoke-static {p0, p1, v0}, Lb/a/hq;->a(Lb/a/hn;BI)V

    return-void
.end method

.method public static a(Lb/a/hn;BI)V
    .locals 4

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    new-instance v0, Lb/a/gp;

    const-string v1, "Maximum skip depth exceeded"

    invoke-direct {v0, v1}, Lb/a/gp;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lb/a/hn;->p()Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lb/a/hn;->q()B

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lb/a/hn;->r()S

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lb/a/hn;->s()I

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lb/a/hn;->t()J

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lb/a/hn;->u()D

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lb/a/hn;->w()Ljava/nio/ByteBuffer;

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lb/a/hn;->f()Lb/a/hs;

    :goto_1
    invoke-virtual {p0}, Lb/a/hn;->h()Lb/a/hk;

    move-result-object v0

    iget-byte v1, v0, Lb/a/hk;->b:B

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lb/a/hn;->g()V

    goto :goto_0

    :cond_1
    iget-byte v0, v0, Lb/a/hk;->b:B

    add-int/lit8 v1, p2, -0x1

    invoke-static {p0, v0, v1}, Lb/a/hq;->a(Lb/a/hn;BI)V

    invoke-virtual {p0}, Lb/a/hn;->i()V

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0}, Lb/a/hn;->j()Lb/a/hm;

    move-result-object v1

    :goto_2
    iget v2, v1, Lb/a/hm;->c:I

    if-ge v0, v2, :cond_2

    iget-byte v2, v1, Lb/a/hm;->a:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lb/a/hq;->a(Lb/a/hn;BI)V

    iget-byte v2, v1, Lb/a/hm;->b:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lb/a/hq;->a(Lb/a/hn;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lb/a/hn;->k()V

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0}, Lb/a/hn;->n()Lb/a/hr;

    move-result-object v1

    :goto_3
    iget v2, v1, Lb/a/hr;->b:I

    if-ge v0, v2, :cond_3

    iget-byte v2, v1, Lb/a/hr;->a:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lb/a/hq;->a(Lb/a/hn;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lb/a/hn;->o()V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0}, Lb/a/hn;->l()Lb/a/hl;

    move-result-object v1

    :goto_4
    iget v2, v1, Lb/a/hl;->b:I

    if-ge v0, v2, :cond_4

    iget-byte v2, v1, Lb/a/hl;->a:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lb/a/hq;->a(Lb/a/hn;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lb/a/hn;->m()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
