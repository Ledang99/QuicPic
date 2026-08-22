.class public Lcom/alensw/ui/activity/p;
.super Lcom/alensw/ui/activity/ao;
.source "p.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static D:Landroid/net/Uri;

.field public static E:Landroid/net/Uri;


# instance fields
.field protected A:Landroid/os/Handler;

.field protected B:I

.field protected C:Lcom/alensw/ui/view/cd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/ui/activity/ao;-><init>()V

    return-void
.end method

.method public static b(Landroid/content/Intent;)I
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.PICK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "video/*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "vnd.android.cursor.dir/video"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const/4 v0, 0x2

    :cond_2
    :goto_0
    return v0

    :cond_3
    const-string v2, "vnd.android.document/directory"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const-string v2, "*/*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "com.alensw.PicFolder.action.PICK_MULTIPLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onActivityResult__$prependPatch(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const v0, 0x3228c

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/activity/p;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    const-string v1, "image/jpeg"

    const-string v2, "!qpicfake.jpg"

    invoke-virtual {v0, v1, v2}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    :cond_0
    return-void
.end method

.method private onActivityResult__$prependSource(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/alensw/ui/activity/ao;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    if-ne p2, v3, :cond_1

    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x3a

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alensw/a/c;->a:Ljava/lang/String;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "external_sd_uuid"

    sget-object v3, Lcom/alensw/a/c;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    invoke-virtual {p0}, Lcom/alensw/ui/activity/p;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {p0, v0}, Lcom/alensw/b/l/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(IJJLjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8

    :try_start_0
    invoke-virtual {p0}, Lcom/alensw/ui/activity/p;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x1000

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v2, 0x1000

    new-array v2, v2, [B

    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alensw/ui/activity/p;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/b/a/b;->a(Landroid/content/res/Resources;I)Lcom/b/a/l;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    const-string v0, "com.android.documentsui"

    const-string v0, "com.android.documentsui"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/alensw/ui/activity/p;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v0, "title_open"

    const-string v3, "string"

    const-string v4, "com.android.documentsui"

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "Open from"

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v0, "root_recent"

    const-string v3, "string"

    const-string v4, "com.android.documentsui"

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "Recent"

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string v0, "menu_select"

    const-string v3, "string"

    const-string v4, "com.android.documentsui"

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "SELECT \'SD card\'"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    if-eqz p6, :cond_6

    move-object v0, p6

    :goto_2
    aput-object v0, v5, v6

    invoke-static {v3, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-eqz p6, :cond_4

    const-string v0, "SD card"

    invoke-virtual {v1, v0, p6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    const-wide/16 v4, 0x0

    cmp-long v0, p2, v4

    if-lez v0, :cond_7

    const-string v0, "root_available_bytes"

    const-string v3, "string"

    const-string v4, "com.android.documentsui"

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0, p2, p3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v3, "00GB"

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    move-object v0, v1

    :goto_3
    const-wide/16 v4, 0x0

    cmp-long v1, p4, v4

    if-lez v1, :cond_5

    :try_start_3
    const-string v1, "root_available_bytes"

    const-string v3, "string"

    const-string v4, "com.android.documentsui"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0, p4, p5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "??GB"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    :cond_5
    :goto_4
    :try_start_4
    invoke-static {v0}, Lcom/b/a/d;->a(Ljava/lang/String;)Lcom/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/b;->a()Lcom/b/a/l;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    :try_start_5
    const-string v0, "SD card"
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_5
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    move-object v0, v1

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_5

    :cond_7
    move-object v0, v1

    goto :goto_3
.end method

.method public a(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/activity/p;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/alensw/ui/activity/p;->C:Lcom/alensw/ui/view/cd;

    if-nez v1, :cond_2

    new-instance v0, Lcom/alensw/ui/activity/u;

    invoke-direct {v0, p0, p0}, Lcom/alensw/ui/activity/u;-><init>(Lcom/alensw/ui/activity/p;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alensw/ui/activity/p;->C:Lcom/alensw/ui/view/cd;

    iget-object v0, p0, Lcom/alensw/ui/activity/p;->C:Lcom/alensw/ui/view/cd;

    invoke-virtual {v0}, Lcom/alensw/ui/view/cd;->a()V

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alensw/ui/activity/p;->setRequestedOrientation(I)V

    return-void

    :cond_2
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/activity/p;->C:Lcom/alensw/ui/view/cd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/activity/p;->C:Lcom/alensw/ui/view/cd;

    invoke-virtual {v0}, Lcom/alensw/ui/view/cd;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/ui/activity/p;->C:Lcom/alensw/ui/view/cd;

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 9

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_1

    const-string v1, "file"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "video/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x56

    :goto_0
    invoke-virtual {v4, v1, v0}, Lcom/alensw/a/ba;->b(Ljava/lang/String;C)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/alensw/PicFolder/FileProvider;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    :goto_1
    return v3

    :cond_2
    const/16 v0, 0x49

    goto :goto_0

    :cond_3
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "multiple_files"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v0, "multiple_files"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v0, "multiple_types"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v2, v3

    :goto_2
    if-ge v2, v8, :cond_4

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v4, v0, v1}, Lcom/alensw/a/ba;->b(Ljava/lang/String;C)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {v0}, Lcom/alensw/PicFolder/FileProvider;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_3
    invoke-virtual {v5, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_4
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_3
.end method

.method public a(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/alensw/a/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_4

    invoke-static {p1}, Lcom/alensw/a/c;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/alensw/ui/activity/p;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/alensw/ui/activity/p;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_5

    const v1, 0x1040014

    const v2, 0x7f0a004f

    invoke-virtual {p0, v2}, Lcom/alensw/ui/activity/p;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/alensw/ui/a/f;->a(Landroid/content/Context;ILjava/lang/Object;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x1

    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/alensw/ui/activity/p;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alensw/ui/activity/r;

    invoke-direct {v4, p0}, Lcom/alensw/ui/activity/r;-><init>(Lcom/alensw/ui/activity/p;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v2, -0x2

    const v3, 0x7f0a0030

    invoke-virtual {p0, v3}, Lcom/alensw/ui/activity/p;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alensw/ui/activity/s;

    invoke-direct {v4, p0}, Lcom/alensw/ui/activity/s;-><init>(Lcom/alensw/ui/activity/p;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-static {v1}, Lcom/alensw/ui/a/f;->a(Landroid/app/Dialog;)Z

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const v0, 0x1040014

    const v1, 0x7f030011

    invoke-static {p0, v0, v1}, Lcom/alensw/ui/a/u;->a(Landroid/content/Context;II)Lcom/alensw/ui/a/u;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f09002c

    invoke-virtual {v8, v0}, Lcom/alensw/ui/a/u;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    const v1, 0x7f05002e

    sget-object v0, Lcom/alensw/a/e;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alensw/jni/JniUtils;->fuGetAvailBytes(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p1}, Lcom/alensw/jni/JniUtils;->fuGetAvailBytes(Ljava/lang/String;)J

    move-result-wide v4

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->p:Lcom/alensw/a/bh;

    invoke-virtual {v0, p1}, Lcom/alensw/a/bh;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alensw/ui/activity/p;->a(IJJLjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, -0x1

    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/alensw/ui/activity/p;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alensw/ui/activity/t;

    invoke-direct {v2, p0}, Lcom/alensw/ui/activity/t;-><init>(Lcom/alensw/ui/activity/p;)V

    invoke-virtual {v8, v0, v1, v2}, Lcom/alensw/ui/a/u;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-static {v8}, Lcom/alensw/ui/a/f;->a(Landroid/app/Dialog;)Z

    goto :goto_0
.end method

.method public g()I
    .locals 2

    iget v0, p0, Lcom/alensw/ui/activity/p;->U:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    const/high16 v1, -0x30000000

    or-int/2addr v0, v1

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-direct/range {p0 .. p3}, Lcom/alensw/ui/activity/p;->onActivityResult__$prependPatch(IILandroid/content/Intent;)V

    invoke-direct/range {p0 .. p3}, Lcom/alensw/ui/activity/p;->onActivityResult__$prependSource(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/alensw/ui/activity/p;->A:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/alensw/ui/activity/p;->M:Z

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v0, "split_bar"

    iget-boolean v4, p0, Lcom/alensw/ui/activity/p;->N:Z

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/alensw/PicFolder/CropActivity;

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/alensw/ui/activity/p;->N:Z

    const-string v0, "hide_status_bar"

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alensw/ui/activity/p;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x400

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_3

    invoke-virtual {p0}, Lcom/alensw/ui/activity/p;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-boolean v3, p0, Lcom/alensw/ui/activity/p;->N:Z

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setUiOptions(II)V

    :cond_3
    invoke-super {p0, p1}, Lcom/alensw/ui/activity/ao;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alensw/ui/activity/p;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/alensw/ui/activity/p;->B:I

    return-void

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/p;->K:Lcom/alensw/ui/view/TitleBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/p;->K:Lcom/alensw/ui/view/TitleBar;

    iget-object v1, p0, Lcom/alensw/ui/activity/p;->I:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/TitleBar;->a(Landroid/view/View;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alensw/ui/activity/ao;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/alensw/ui/activity/ao;->onPause()V

    iget-object v0, p0, Lcom/alensw/ui/activity/p;->C:Lcom/alensw/ui/view/cd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/p;->C:Lcom/alensw/ui/view/cd;

    invoke-virtual {v0}, Lcom/alensw/ui/view/cd;->b()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/activity/p;->C:Lcom/alensw/ui/view/cd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/activity/p;->C:Lcom/alensw/ui/view/cd;

    invoke-virtual {v0}, Lcom/alensw/ui/view/cd;->a()V

    :cond_0
    invoke-super {p0}, Lcom/alensw/ui/activity/ao;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    instance-of v0, p0, Lcom/alensw/PicFolder/PlayerActivity;

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    :goto_0
    iget v4, p0, Lcom/alensw/ui/activity/p;->T:I

    if-eq v4, v0, :cond_4

    iput v0, p0, Lcom/alensw/ui/activity/p;->T:I

    move v0, v1

    :goto_1
    const-string v4, "auto_black_bkgnd"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/alensw/ui/activity/p;->R:Z

    const-string v4, "split_bar"

    iget-boolean v5, p0, Lcom/alensw/ui/activity/p;->N:Z

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    instance-of v3, p0, Lcom/alensw/PicFolder/CropActivity;

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    iget-boolean v3, p0, Lcom/alensw/ui/activity/p;->N:Z

    if-eq v3, v2, :cond_6

    iput-boolean v2, p0, Lcom/alensw/ui/activity/p;->N:Z

    :goto_2
    invoke-super {p0}, Lcom/alensw/ui/activity/ao;->onStart()V

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/activity/p;->A:Landroid/os/Handler;

    new-instance v1, Lcom/alensw/ui/activity/q;

    invoke-direct {v1, p0}, Lcom/alensw/ui/activity/q;-><init>(Lcom/alensw/ui/activity/p;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    :cond_3
    const-string v0, "main_theme"

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/alensw/ui/activity/p;->T:I

    const/4 v4, -0x3

    if-eq v0, v4, :cond_5

    iget v0, p0, Lcom/alensw/ui/activity/p;->T:I

    const/4 v4, -0x2

    if-ne v0, v4, :cond_7

    :cond_5
    const-string v0, "actionbar_color"

    iget v4, p0, Lcom/alensw/ui/activity/p;->V:I

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget v4, p0, Lcom/alensw/ui/activity/p;->V:I

    if-eq v4, v0, :cond_7

    iput v0, p0, Lcom/alensw/ui/activity/p;->V:I

    move v0, v1

    goto :goto_1

    :cond_6
    move v1, v0

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_1
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/alensw/ui/activity/ao;->onStop()V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alensw/ui/activity/ao;->setContentView(Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/alensw/ui/activity/p;->M:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/alensw/ui/activity/p;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0xc000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    :goto_0
    instance-of v0, p0, Lcom/alensw/PicFolder/GalleryActivity;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alensw/ui/activity/p;->g(Z)V

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/activity/p;->I:Landroid/view/View;

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/alensw/ui/activity/p;->a(Landroid/view/ViewGroup;)V

    return-void

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/activity/p;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method
