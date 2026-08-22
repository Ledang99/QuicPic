.class Lcom/alensw/b/e/k;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lorg/apache/http/impl/DefaultHttpServerConnection;

.field final synthetic b:Lcom/alensw/b/e/j;


# direct methods
.method constructor <init>(Lcom/alensw/b/e/j;Lorg/apache/http/impl/DefaultHttpServerConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/b/e/k;->b:Lcom/alensw/b/e/j;

    iput-object p2, p0, Lcom/alensw/b/e/k;->a:Lorg/apache/http/impl/DefaultHttpServerConnection;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/b/e/k;->b:Lcom/alensw/b/e/j;

    iget-object v1, p0, Lcom/alensw/b/e/k;->a:Lorg/apache/http/impl/DefaultHttpServerConnection;

    invoke-virtual {v0, v1}, Lcom/alensw/b/e/j;->a(Lorg/apache/http/impl/DefaultHttpServerConnection;)V

    return-void
.end method
