.class public Lb/a/io;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Z

.field private c:Landroid/content/SharedPreferences;

.field private d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "umeng_event_snapshot"

    iput-object v0, p0, Lb/a/io;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/a/io;->b:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb/a/io;->d:Ljava/util/Map;

    const-string v0, "umeng_event_snapshot"

    invoke-static {p1, v0}, Lb/a/iy;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lb/a/io;->c:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lb/a/io;->b:Z

    return-void
.end method
