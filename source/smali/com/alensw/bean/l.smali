.class Lcom/alensw/bean/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/ContentResolver;

.field final synthetic b:Lcom/alensw/bean/MediaStoreFolder;


# direct methods
.method constructor <init>(Lcom/alensw/bean/MediaStoreFolder;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/bean/l;->b:Lcom/alensw/bean/MediaStoreFolder;

    iput-object p2, p0, Lcom/alensw/bean/l;->a:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/bean/l;->a:Landroid/content/ContentResolver;

    const/16 v1, 0x49

    invoke-static {v1}, Lcom/alensw/a/ba;->a(C)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method
