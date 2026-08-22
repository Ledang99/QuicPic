.class public abstract Lb/a/gs;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/gk;


# static fields
.field private static final a:Ljava/util/Map;


# instance fields
.field protected b:Ljava/lang/Object;

.field protected c:Lb/a/gq;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/gs;->a:Ljava/util/Map;

    sget-object v0, Lb/a/gs;->a:Ljava/util/Map;

    const-class v1, Lb/a/hw;

    new-instance v2, Lb/a/gv;

    invoke-direct {v2, v3}, Lb/a/gv;-><init>(Lb/a/gt;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lb/a/gs;->a:Ljava/util/Map;

    const-class v1, Lb/a/hx;

    new-instance v2, Lb/a/gx;

    invoke-direct {v2, v3}, Lb/a/gx;-><init>(Lb/a/gt;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb/a/gs;->c:Lb/a/gq;

    iput-object v0, p0, Lb/a/gs;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected abstract a(Lb/a/gq;)Lb/a/hk;
.end method

.method protected abstract a()Lb/a/hs;
.end method

.method protected abstract a(Lb/a/hn;Lb/a/hk;)Ljava/lang/Object;
.end method

.method protected abstract a(Lb/a/hn;S)Ljava/lang/Object;
.end method

.method public a(Lb/a/hn;)V
    .locals 2

    sget-object v0, Lb/a/gs;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lb/a/hn;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/hv;

    invoke-interface {v0}, Lb/a/hv;->b()Lb/a/hu;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lb/a/hu;->b(Lb/a/hn;Lb/a/gk;)V

    return-void
.end method

.method public b()Lb/a/gq;
    .locals 1

    iget-object v0, p0, Lb/a/gs;->c:Lb/a/gq;

    return-object v0
.end method

.method protected abstract b(S)Lb/a/gq;
.end method

.method public b(Lb/a/hn;)V
    .locals 2

    sget-object v0, Lb/a/gs;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lb/a/hn;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/hv;

    invoke-interface {v0}, Lb/a/hv;->b()Lb/a/hu;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lb/a/hu;->a(Lb/a/hn;Lb/a/gk;)V

    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lb/a/gs;->b:Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract c(Lb/a/hn;)V
.end method

.method protected abstract d(Lb/a/hn;)V
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lb/a/gs;->c:Lb/a/gq;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/a/gs;->b()Lb/a/gq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/a/gs;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/gs;->b()Lb/a/gq;

    move-result-object v2

    invoke-virtual {p0, v2}, Lb/a/gs;->a(Lb/a/gq;)Lb/a/hk;

    move-result-object v2

    iget-object v2, v2, Lb/a/hk;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v2, v0, Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lb/a/gl;->a(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
