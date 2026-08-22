.class public Lcom/c/a/a/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Lcom/c/a/a/a;

.field private e:Lcom/c/a/a/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "last_config_time"

    iput-object v0, p0, Lcom/c/a/a/b;->a:Ljava/lang/String;

    const-string v0, "report_policy"

    iput-object v0, p0, Lcom/c/a/a/b;->b:Ljava/lang/String;

    const-string v0, "online_config"

    iput-object v0, p0, Lcom/c/a/a/b;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/c/a/a/b;->d:Lcom/c/a/a/a;

    iput-object v1, p0, Lcom/c/a/a/b;->e:Lcom/c/a/a/c;

    return-void
.end method
