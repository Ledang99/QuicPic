.class public Lcom/alensw/cloud/UrlTaskService;
.super Landroid/app/Service;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private final b:Landroid/os/IBinder;

.field private final c:Landroid/os/Handler;

.field private final d:Lcom/alensw/cloud/al;

.field private final e:Lcom/alensw/cloud/al;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/alensw/cloud/ap;

    invoke-direct {v0, p0}, Lcom/alensw/cloud/ap;-><init>(Lcom/alensw/cloud/UrlTaskService;)V

    iput-object v0, p0, Lcom/alensw/cloud/UrlTaskService;->b:Landroid/os/IBinder;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/alensw/cloud/UrlTaskService;->c:Landroid/os/Handler;

    new-instance v0, Lcom/alensw/cloud/al;

    invoke-direct {v0}, Lcom/alensw/cloud/al;-><init>()V

    iput-object v0, p0, Lcom/alensw/cloud/UrlTaskService;->d:Lcom/alensw/cloud/al;

    new-instance v0, Lcom/alensw/cloud/al;

    invoke-direct {v0}, Lcom/alensw/cloud/al;-><init>()V

    iput-object v0, p0, Lcom/alensw/cloud/UrlTaskService;->e:Lcom/alensw/cloud/al;

    return-void
.end method

.method private a(IZ)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    const v0, 0x1080082

    :goto_0
    return v0

    :cond_0
    const v0, 0x1080081

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const v0, 0x1080089

    goto :goto_0

    :cond_2
    const v0, 0x1080088

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 3

    invoke-static {p1}, Lcom/alensw/cloud/UrlTaskService;->c(I)I

    move-result v0

    invoke-static {p0, p1}, Lcom/alensw/cloud/UrlTaskActivity;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x8000000

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;ILandroid/net/Uri;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alensw/cloud/UrlTaskService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url_task_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "url_task_local"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "url_task_remote"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method private a(II)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/alensw/cloud/UrlTaskService;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;II)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const v0, 0x7f0a00c2

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-lez p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0a00c6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const v0, 0x7f0a00c4

    goto :goto_0
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/UrlTaskService;->d:Lcom/alensw/cloud/al;

    invoke-virtual {v0}, Lcom/alensw/cloud/al;->e()V

    iget-object v0, p0, Lcom/alensw/cloud/UrlTaskService;->e:Lcom/alensw/cloud/al;

    invoke-virtual {v0}, Lcom/alensw/cloud/al;->e()V

    return-void
.end method

.method private b(II)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const v0, 0x7f0a00c3

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/alensw/cloud/UrlTaskService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f0a00c5

    goto :goto_0
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/UrlTaskService;->d:Lcom/alensw/cloud/al;

    invoke-virtual {v0}, Lcom/alensw/cloud/al;->c()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/UrlTaskService;->e:Lcom/alensw/cloud/al;

    invoke-virtual {v0}, Lcom/alensw/cloud/al;->c()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/cloud/UrlTaskService;->stopSelf()V

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;II)V
    .locals 8

    invoke-static {p1}, Lcom/alensw/cloud/UrlTaskService;->c(I)I

    move-result v1

    const/4 v2, 0x0

    const v3, 0x108008a

    const v4, 0x7f020001

    const/high16 v5, 0x7f0a0000

    invoke-static {p0, p1, p2}, Lcom/alensw/cloud/UrlTaskService;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, p1}, Lcom/alensw/cloud/UrlTaskService;->a(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v7

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/alensw/b/l/a;->a(Landroid/content/Context;IZIIILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static c(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/16 v0, 0x65

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x66

    goto :goto_0
.end method

.method private d(I)Lcom/alensw/cloud/al;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/UrlTaskService;->d:Lcom/alensw/cloud/al;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alensw/cloud/UrlTaskService;->e:Lcom/alensw/cloud/al;

    goto :goto_0
.end method

.method private e(I)Landroid/app/PendingIntent;
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/cloud/UrlTaskService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alensw/cloud/UrlTaskService;->a(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alensw/cloud/UrlTaskService;->d(I)Lcom/alensw/cloud/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/cloud/al;->a()V

    return-void
.end method

.method public a(ILcom/alensw/cloud/ad;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alensw/cloud/UrlTaskService;->d(I)Lcom/alensw/cloud/al;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alensw/cloud/al;->a(Lcom/alensw/cloud/ad;)V

    return-void
.end method

.method public a(ILcom/alensw/cloud/am;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alensw/cloud/UrlTaskService;->d(I)Lcom/alensw/cloud/al;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alensw/cloud/al;->a(Lcom/alensw/cloud/am;)V

    return-void
.end method

.method public b(ILcom/alensw/cloud/ad;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alensw/cloud/UrlTaskService;->d(I)Lcom/alensw/cloud/al;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alensw/cloud/al;->b(Lcom/alensw/cloud/ad;)V

    return-void
.end method

.method public b(ILcom/alensw/cloud/am;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alensw/cloud/UrlTaskService;->d(I)Lcom/alensw/cloud/al;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alensw/cloud/al;->b(Lcom/alensw/cloud/am;)V

    return-void
.end method

.method public b(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/alensw/cloud/UrlTaskService;->d(I)Lcom/alensw/cloud/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/cloud/al;->c()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 11

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x1

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v9}, Lcom/alensw/cloud/UrlTaskService;->d(I)Lcom/alensw/cloud/al;

    move-result-object v10

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/alensw/cloud/ad;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alensw/cloud/ad;

    :goto_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    return v8

    :cond_1
    move-object v0, v7

    goto :goto_0

    :pswitch_0
    invoke-virtual {v10, v0}, Lcom/alensw/cloud/al;->c(Lcom/alensw/cloud/ad;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v10}, Lcom/alensw/cloud/al;->d()V

    invoke-virtual {v10}, Lcom/alensw/cloud/al;->b()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v9}, Lcom/alensw/cloud/UrlTaskService;->c(I)I

    move-result v1

    invoke-direct {p0, v9, v2}, Lcom/alensw/cloud/UrlTaskService;->a(IZ)I

    move-result v3

    iget-object v4, p0, Lcom/alensw/cloud/UrlTaskService;->a:Landroid/graphics/Bitmap;

    if-ne v9, v8, :cond_2

    const v0, 0x7f0a00be

    :goto_2
    invoke-virtual {p0, v0}, Lcom/alensw/cloud/UrlTaskService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v9, v6}, Lcom/alensw/cloud/UrlTaskService;->b(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v9}, Lcom/alensw/cloud/UrlTaskService;->e(I)Landroid/app/PendingIntent;

    move-result-object v7

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/alensw/b/l/a;->a(Landroid/content/Context;IZILandroid/graphics/Bitmap;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_1

    :cond_2
    const v0, 0x7f0a00c0

    goto :goto_2

    :cond_3
    invoke-virtual {v10}, Lcom/alensw/cloud/al;->c()I

    move-result v0

    invoke-static {v9}, Lcom/alensw/cloud/UrlTaskService;->c(I)I

    move-result v1

    if-nez v0, :cond_4

    move v2, v8

    :cond_4
    if-eqz v0, :cond_6

    const v3, 0x108008a

    :goto_3
    iget-object v4, p0, Lcom/alensw/cloud/UrlTaskService;->a:Landroid/graphics/Bitmap;

    const/high16 v5, 0x7f0a0000

    invoke-virtual {p0, v5}, Lcom/alensw/cloud/UrlTaskService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v9, v0}, Lcom/alensw/cloud/UrlTaskService;->a(II)Ljava/lang/String;

    move-result-object v6

    if-eqz v0, :cond_5

    invoke-direct {p0, v9}, Lcom/alensw/cloud/UrlTaskService;->e(I)Landroid/app/PendingIntent;

    move-result-object v7

    :cond_5
    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/alensw/b/l/a;->a(Landroid/content/Context;IZILandroid/graphics/Bitmap;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {v10}, Lcom/alensw/cloud/al;->e()V

    invoke-direct {p0}, Lcom/alensw/cloud/UrlTaskService;->b()V

    goto :goto_1

    :cond_6
    invoke-direct {p0, v9, v8}, Lcom/alensw/cloud/UrlTaskService;->a(IZ)I

    move-result v3

    goto :goto_3

    :pswitch_2
    invoke-virtual {v10}, Lcom/alensw/cloud/al;->d()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/alensw/cloud/UrlTaskService;->b:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/alensw/cloud/ao;

    invoke-direct {v0, p0}, Lcom/alensw/cloud/ao;-><init>(Lcom/alensw/cloud/UrlTaskService;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/alensw/cloud/UrlTaskService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/cloud/UrlTaskService;->a:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alensw/cloud/UrlTaskService;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/cloud/UrlTaskService;->d:Lcom/alensw/cloud/al;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alensw/cloud/UrlTaskService;->c:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3}, Lcom/alensw/cloud/al;->a(ILandroid/content/Context;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/alensw/cloud/UrlTaskService;->e:Lcom/alensw/cloud/al;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alensw/cloud/UrlTaskService;->c:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3}, Lcom/alensw/cloud/al;->a(ILandroid/content/Context;Landroid/os/Handler;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-direct {p0}, Lcom/alensw/cloud/UrlTaskService;->a()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    const/4 v4, 0x2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "url_task_mode"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "url_task_local"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const-string v3, "url_task_remote"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/alensw/cloud/UrlTaskService;->d:Lcom/alensw/cloud/al;

    new-instance v3, Lcom/alensw/cloud/ad;

    invoke-direct {v3, v0, v1}, Lcom/alensw/cloud/ad;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/alensw/cloud/al;->a(Lcom/alensw/cloud/ad;)V

    :cond_0
    :goto_0
    return v4

    :cond_1
    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/alensw/cloud/UrlTaskService;->e:Lcom/alensw/cloud/al;

    new-instance v3, Lcom/alensw/cloud/ad;

    invoke-direct {v3, v0, v1}, Lcom/alensw/cloud/ad;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/alensw/cloud/al;->a(Lcom/alensw/cloud/ad;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/alensw/cloud/UrlTaskService;->a()V

    invoke-virtual {p0}, Lcom/alensw/cloud/UrlTaskService;->getApplication()Landroid/app/Application;

    move-result-object v0

    const/16 v1, 0x65

    invoke-static {v0, v1}, Lcom/alensw/b/l/a;->a(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/alensw/cloud/UrlTaskService;->getApplication()Landroid/app/Application;

    move-result-object v0

    const/16 v1, 0x66

    invoke-static {v0, v1}, Lcom/alensw/b/l/a;->a(Landroid/content/Context;I)V

    return-void
.end method
