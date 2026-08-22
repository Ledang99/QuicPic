.class Lcom/alensw/transfer/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/nio/ByteBuffer;

.field final synthetic b:Ljava/net/InetAddress;

.field final synthetic c:Lcom/alensw/transfer/a/a;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/a/a;Ljava/nio/ByteBuffer;Ljava/net/InetAddress;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/a/g;->c:Lcom/alensw/transfer/a/a;

    iput-object p2, p0, Lcom/alensw/transfer/a/g;->a:Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lcom/alensw/transfer/a/g;->b:Ljava/net/InetAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/transfer/a/g;->c:Lcom/alensw/transfer/a/a;

    iget-object v1, p0, Lcom/alensw/transfer/a/g;->a:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/alensw/transfer/a/g;->b:Ljava/net/InetAddress;

    invoke-static {v0, v1, v2}, Lcom/alensw/transfer/a/a;->a(Lcom/alensw/transfer/a/a;Ljava/nio/ByteBuffer;Ljava/net/InetAddress;)Z

    return-void
.end method
