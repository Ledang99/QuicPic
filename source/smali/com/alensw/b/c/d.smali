.class public Lcom/alensw/b/c/d;
.super Lcom/alensw/b/c/g;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alensw/b/c/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/DataInputStream;)Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "Integer"

    return-object v0
.end method

.method protected a(Ljava/io/DataOutputStream;Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/io/DataOutputStream;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/alensw/b/c/d;->a(Ljava/io/DataOutputStream;Ljava/lang/Integer;)V

    return-void
.end method

.method protected synthetic b(Ljava/io/DataInputStream;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alensw/b/c/d;->a(Ljava/io/DataInputStream;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
