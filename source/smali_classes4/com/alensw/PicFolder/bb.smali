.class Lcom/alensw/PicFolder/bb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/ContentResolver;

.field final synthetic b:Lcom/alensw/PicFolder/QuickApp;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/QuickApp;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/bb;->b:Lcom/alensw/PicFolder/QuickApp;

    iput-object p2, p0, Lcom/alensw/PicFolder/bb;->a:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/bb;->a:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/alensw/a/am;->a(Landroid/content/ContentResolver;)V

    return-void
.end method
