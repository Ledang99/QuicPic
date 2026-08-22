.class Lcom/alensw/ui/c/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alensw/ui/c/a;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/f;->b:Lcom/alensw/ui/c/a;

    iput-object p2, p0, Lcom/alensw/ui/c/f;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    iget-object v1, p0, Lcom/alensw/ui/c/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alensw/a/ba;->a(Ljava/lang/String;)V

    return-void
.end method
