.class Lcom/alensw/a/ap;
.super Lcom/alensw/b/a/a;


# instance fields
.field final synthetic a:Lcom/alensw/a/ao;


# direct methods
.method constructor <init>(Lcom/alensw/a/ao;I)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/a/ap;->a:Lcom/alensw/a/ao;

    invoke-direct {p0, p2}, Lcom/alensw/b/a/a;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/alensw/b/a/c;)V
    .locals 0

    check-cast p1, Lcom/alensw/b/h/j;

    invoke-virtual {p0, p1}, Lcom/alensw/a/ap;->a(Lcom/alensw/b/h/j;)V

    return-void
.end method

.method protected a(Lcom/alensw/b/h/j;)V
    .locals 0

    invoke-virtual {p1}, Lcom/alensw/b/h/j;->m()I

    return-void
.end method
