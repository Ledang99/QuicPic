.class Landroid/support/v4/a/z;
.super Landroid/database/DataSetObserver;


# instance fields
.field final synthetic a:Landroid/support/v4/a/p;


# direct methods
.method private constructor <init>(Landroid/support/v4/a/p;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/a/z;->a:Landroid/support/v4/a/p;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/a/p;Landroid/support/v4/a/q;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/a/z;-><init>(Landroid/support/v4/a/p;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/z;->a:Landroid/support/v4/a/p;

    invoke-virtual {v0}, Landroid/support/v4/a/p;->b()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a/z;->a:Landroid/support/v4/a/p;

    invoke-virtual {v0}, Landroid/support/v4/a/p;->b()V

    return-void
.end method
