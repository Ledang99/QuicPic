.class Lb/a/fm;
.super Lb/a/hx;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/hx;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/fj;)V
    .locals 0

    invoke-direct {p0}, Lb/a/fm;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/hn;Lb/a/fi;)V
    .locals 1

    check-cast p1, Lb/a/ht;

    iget v0, p2, Lb/a/fi;->a:I

    invoke-virtual {p1, v0}, Lb/a/ht;->a(I)V

    iget v0, p2, Lb/a/fi;->b:I

    invoke-virtual {p1, v0}, Lb/a/ht;->a(I)V

    return-void
.end method

.method public bridge synthetic a(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/fi;

    invoke-virtual {p0, p1, p2}, Lb/a/fm;->a(Lb/a/hn;Lb/a/fi;)V

    return-void
.end method

.method public b(Lb/a/hn;Lb/a/fi;)V
    .locals 2

    const/4 v1, 0x1

    check-cast p1, Lb/a/ht;

    invoke-virtual {p1}, Lb/a/ht;->s()I

    move-result v0

    iput v0, p2, Lb/a/fi;->a:I

    invoke-virtual {p2, v1}, Lb/a/fi;->a(Z)V

    invoke-virtual {p1}, Lb/a/ht;->s()I

    move-result v0

    iput v0, p2, Lb/a/fi;->b:I

    invoke-virtual {p2, v1}, Lb/a/fi;->b(Z)V

    return-void
.end method

.method public bridge synthetic b(Lb/a/hn;Lb/a/gk;)V
    .locals 0

    check-cast p2, Lb/a/fi;

    invoke-virtual {p0, p1, p2}, Lb/a/fm;->b(Lb/a/hn;Lb/a/fi;)V

    return-void
.end method
