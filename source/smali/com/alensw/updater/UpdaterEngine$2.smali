.class Lcom/alensw/updater/UpdaterEngine$2;
.super Ljava/lang/Object;
.source "UpdaterEngine.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alensw/updater/UpdaterEngine;->onPostExecute(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alensw/updater/UpdaterEngine;


# direct methods
.method constructor <init>(Lcom/alensw/updater/UpdaterEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/updater/UpdaterEngine$2;->this$0:Lcom/alensw/updater/UpdaterEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
