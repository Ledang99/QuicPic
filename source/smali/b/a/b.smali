.class public Lb/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/it;


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field private final d:I

.field private e:I

.field private f:J

.field private g:J

.field private h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x36ee80

    iput v0, p0, Lb/a/b;->d:I

    iput-wide v2, p0, Lb/a/b;->f:J

    iput-wide v2, p0, Lb/a/b;->g:J

    invoke-direct {p0, p1}, Lb/a/b;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lb/a/ag;
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0}, Lb/a/iy;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lb/a/ag;

    invoke-direct {v1}, Lb/a/ag;-><init>()V

    const-string v2, "failed_requests "

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lb/a/ag;->b(I)Lb/a/ag;

    const-string v2, "last_request_spent_ms"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lb/a/ag;->c(I)Lb/a/ag;

    const-string v2, "successful_request"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lb/a/ag;->a(I)Lb/a/ag;

    return-object v1
.end method

.method private b(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lb/a/b;->h:Landroid/content/Context;

    invoke-static {p1}, Lb/a/iy;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "successful_request"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lb/a/b;->a:I

    const-string v1, "failed_requests "

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lb/a/b;->b:I

    const-string v1, "last_request_spent_ms"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lb/a/b;->e:I

    const-string v1, "last_request_time"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lb/a/b;->c:J

    const-string v1, "last_req"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lb/a/b;->f:J

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-wide v4, p0, Lb/a/b;->c:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lb/a/b;->h:Landroid/content/Context;

    invoke-static {v3}, Lcom/c/a/t;->a(Landroid/content/Context;)Lcom/c/a/t;

    move-result-object v3

    invoke-virtual {v3}, Lcom/c/a/t;->g()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public b()V
    .locals 2

    iget v0, p0, Lb/a/b;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/b;->a:I

    iget-wide v0, p0, Lb/a/b;->f:J

    iput-wide v0, p0, Lb/a/b;->c:J

    return-void
.end method

.method public c()V
    .locals 1

    iget v0, p0, Lb/a/b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/b;->b:I

    return-void
.end method

.method public d()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lb/a/b;->f:J

    return-void
.end method

.method public e()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lb/a/b;->f:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lb/a/b;->e:I

    return-void
.end method

.method public f()V
    .locals 4

    iget-object v0, p0, Lb/a/b;->h:Landroid/content/Context;

    invoke-static {v0}, Lb/a/iy;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "successful_request"

    iget v2, p0, Lb/a/b;->a:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "failed_requests "

    iget v2, p0, Lb/a/b;->b:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_request_spent_ms"

    iget v2, p0, Lb/a/b;->e:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_request_time"

    iget-wide v2, p0, Lb/a/b;->c:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_req"

    iget-wide v2, p0, Lb/a/b;->f:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public g()V
    .locals 4

    iget-object v0, p0, Lb/a/b;->h:Landroid/content/Context;

    invoke-static {v0}, Lb/a/iy;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first_activate_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public h()Z
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lb/a/b;->g:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/a/b;->h:Landroid/content/Context;

    invoke-static {v0}, Lb/a/iy;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "first_activate_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lb/a/b;->g:J

    :cond_0
    iget-wide v0, p0, Lb/a/b;->g:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()J
    .locals 2

    invoke-virtual {p0}, Lb/a/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lb/a/b;->g:J

    goto :goto_0
.end method

.method public j()J
    .locals 2

    iget-wide v0, p0, Lb/a/b;->f:J

    return-wide v0
.end method

.method public k()V
    .locals 0

    invoke-virtual {p0}, Lb/a/b;->d()V

    return-void
.end method

.method public l()V
    .locals 0

    invoke-virtual {p0}, Lb/a/b;->e()V

    return-void
.end method

.method public m()V
    .locals 0

    invoke-virtual {p0}, Lb/a/b;->b()V

    return-void
.end method

.method public n()V
    .locals 0

    invoke-virtual {p0}, Lb/a/b;->c()V

    return-void
.end method
