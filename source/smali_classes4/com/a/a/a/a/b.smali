.class public abstract Lcom/a/a/a/a/b;
.super Lcom/a/a/a/h;


# instance fields
.field protected K:Lcom/a/a/a/l;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/a/a/a/h;-><init>()V

    return-void
.end method

.method protected static final e(I)Ljava/lang/String;
    .locals 3

    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(CTRL-CHAR, code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v1, 0xff

    if-le p0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' (code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' (code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected B()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/a/b;->K:Lcom/a/a/a/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/a/a/b;->e(Ljava/lang/String;)V

    return-void
.end method

.method protected C()V
    .locals 1

    const-string v0, " in a value"

    invoke-virtual {p0, v0}, Lcom/a/a/a/a/b;->e(Ljava/lang/String;)V

    return-void
.end method

.method protected final D()V
    .locals 0

    invoke-static {}, Lcom/a/a/a/e/i;->a()V

    return-void
.end method

.method protected a(C)C
    .locals 2

    sget-object v0, Lcom/a/a/a/i;->g:Lcom/a/a/a/i;

    invoke-virtual {p0, v0}, Lcom/a/a/a/a/b;->a(Lcom/a/a/a/i;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return p1

    :cond_1
    const/16 v0, 0x27

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/a/a/a/i;->e:Lcom/a/a/a/i;

    invoke-virtual {p0, v0}, Lcom/a/a/a/a/b;->a(Lcom/a/a/a/i;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized character escape "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/a/a/a/a/b;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/a/a/b;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(D)D
    .locals 5

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/a/a/a/a/b;->K:Lcom/a/a/a/l;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/a/a/a/l;->a()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-wide p1

    :pswitch_0
    invoke-virtual {p0}, Lcom/a/a/a/a/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-wide p1, v0

    goto :goto_0

    :cond_1
    invoke-static {v2, p1, p2}, Lcom/a/a/a/b/f;->a(Ljava/lang/String;D)D

    move-result-wide p1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/a/a/a/a/b;->i()D

    move-result-wide p1

    goto :goto_0

    :pswitch_2
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :pswitch_3
    move-wide p1, v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/a/a/a/a/b;->k()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(I)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/a/a/a/a/b;->K:Lcom/a/a/a/l;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/a/a/a/l;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return p1

    :pswitch_0
    invoke-virtual {p0}, Lcom/a/a/a/a/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    invoke-static {v1, p1}, Lcom/a/a/a/b/f;->a(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/a/a/a/a/b;->g()I

    move-result p1

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x1

    goto :goto_0

    :pswitch_3
    move p1, v0

    goto :goto_0

    :pswitch_4
    move p1, v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/a/a/a/a/b;->k()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public a(J)J
    .locals 5

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/a/a/a/a/b;->K:Lcom/a/a/a/l;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/a/a/a/l;->a()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-wide p1

    :pswitch_0
    invoke-virtual {p0}, Lcom/a/a/a/a/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-wide p1, v0

    goto :goto_0

    :cond_1
    invoke-static {v2, p1, p2}, Lcom/a/a/a/b/f;->a(Ljava/lang/String;J)J

    move-result-wide p1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/a/a/a/a/b;->h()J

    move-result-wide p1

    goto :goto_0

    :pswitch_2
    const-wide/16 p1, 0x1

    goto :goto_0

    :pswitch_3
    move-wide p1, v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/a/a/a/a/b;->k()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public abstract a()Lcom/a/a/a/l;
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/a/b;->K:Lcom/a/a/a/l;

    sget-object v1, Lcom/a/a/a/l;->h:Lcom/a/a/a/l;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/a/a/a/a/b;->K:Lcom/a/a/a/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/a/a/b;->K:Lcom/a/a/a/l;

    sget-object v1, Lcom/a/a/a/l;->m:Lcom/a/a/a/l;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/a/a/a/a/b;->K:Lcom/a/a/a/l;

    invoke-virtual {v0}, Lcom/a/a/a/l;->e()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/a/a/a/a/b;->f()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/a/a/a/a/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/a/a/a/g;

    move-result-object v0

    throw v0
.end method

.method public a(Z)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/a/a/a/a/b;->K:Lcom/a/a/a/l;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/a/a/a/l;->a()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v0, p1

    :cond_1
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    invoke-virtual {p0}, Lcom/a/a/a/a/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v0, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/a/a/a/a/b;->g()I

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v1

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/a/a/a/a/b;->k()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected final b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/a/a/a/g;
    .locals 2

    new-instance v0, Lcom/a/a/a/g;

    invoke-virtual {p0}, Lcom/a/a/a/a/b;->e()Lcom/a/a/a/f;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lcom/a/a/a/g;-><init>(Ljava/lang/String;Lcom/a/a/a/f;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public b()Lcom/a/a/a/h;
    .locals 3

    iget-object v0, p0, Lcom/a/a/a/a/b;->K:Lcom/a/a/a/l;

    sget-object v1, Lcom/a/a/a/l;->b:Lcom/a/a/a/l;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/a/a/a/a/b;->K:Lcom/a/a/a/l;

    sget-object v1, Lcom/a/a/a/l;->d:Lcom/a/a/a/l;

    if-eq v0, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/a/a/a/a/b;->a()Lcom/a/a/a/l;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/a/a/a/a/b;->u()V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/a/a/a/l;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/a/a/a/l;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_1

    goto :goto_0
.end method

.method protected b(ILjava/lang/String;)V
    .locals 2

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lcom/a/a/a/a/b;->B()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected character ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/a/a/a/a/b;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/a/a/a/a/b;->f(Ljava/lang/String;)V

    return-void
.end method

.method public c()Lcom/a/a/a/l;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/a/b;->K:Lcom/a/a/a/l;

    return-object v0
.end method

.method protected c(I)V
    .locals 1

    const-string v0, "Expected space separating root-level values"

    invoke-virtual {p0, p1, v0}, Lcom/a/a/a/a/b;->b(ILjava/lang/String;)V

    return-void
.end method

.method protected c(ILjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/a/a/a/i;->f:Lcom/a/a/a/i;

    invoke-virtual {p0, v0}, Lcom/a/a/a/a/b;->a(Lcom/a/a/a/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    if-lt p1, v0, :cond_1

    :cond_0
    int-to-char v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal unquoted character ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/a/a/a/a/b;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): has to be escaped using backslash to be included in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/a/a/b;->f(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected d(I)V
    .locals 3

    int-to-char v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/a/a/a/a/b;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): only regular white space (\\r, \\n, \\t) is allowed between tokens"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/a/a/b;->f(Ljava/lang/String;)V

    return-void
.end method

.method protected d(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected e(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected end-of-input"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/a/a/b;->f(Ljava/lang/String;)V

    return-void
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method protected final f(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/a/a/a/a/b;->b(Ljava/lang/String;)Lcom/a/a/a/g;

    move-result-object v0

    throw v0
.end method

.method protected abstract u()V
.end method
