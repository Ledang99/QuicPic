.class Lcom/alensw/a/at;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/b/k/k;


# instance fields
.field public final a:Lcom/alensw/bean/CommonFile;

.field public final b:I

.field final synthetic c:Lcom/alensw/a/ao;

.field private final d:Landroid/os/Handler;

.field private final e:Landroid/net/Uri;

.field private final f:Ljava/lang/String;

.field private g:Z

.field private h:J

.field private i:Lcom/alensw/b/h/a;

.field private j:Lcom/alensw/b/h/c;

.field private final k:Ljava/util/concurrent/atomic/AtomicReference;

.field private final l:Ljava/util/concurrent/atomic/AtomicInteger;

.field private m:Z


# direct methods
.method public constructor <init>(Lcom/alensw/a/ao;Lcom/alensw/bean/CommonFile;ILandroid/os/Handler;)V
    .locals 2

    iput-object p1, p0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/alensw/a/at;->k:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/a/at;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alensw/a/at;->m:Z

    iput-object p2, p0, Lcom/alensw/a/at;->a:Lcom/alensw/bean/CommonFile;

    iput p3, p0, Lcom/alensw/a/at;->b:I

    iput-object p4, p0, Lcom/alensw/a/at;->d:Landroid/os/Handler;

    iget-object v0, p0, Lcom/alensw/a/at;->a:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/a/at;->a:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v1}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/alensw/a/at;->e:Landroid/net/Uri;

    if-eqz v0, :cond_0

    :goto_0
    iput-object v0, p0, Lcom/alensw/a/at;->f:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alensw/a/at;->e:Landroid/net/Uri;

    invoke-static {v0}, Lcom/alensw/b/c/f;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/a/at;->e:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/alensw/b/c/f;Landroid/net/Uri;)Lcom/alensw/b/h/j;
    .locals 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    invoke-static {v2}, Lcom/alensw/a/ao;->f(Lcom/alensw/a/ao;)Lcom/alensw/b/a/a;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/alensw/b/a/a;->b(Ljava/lang/Object;)Lcom/alensw/b/a/c;

    move-result-object v2

    check-cast v2, Lcom/alensw/b/h/j;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/alensw/b/h/j;->c()Lcom/alensw/b/h/j;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    invoke-static {v2}, Lcom/alensw/a/ao;->f(Lcom/alensw/a/ao;)Lcom/alensw/b/a/a;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/alensw/b/a/a;->b(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    invoke-static {v2}, Lcom/alensw/a/ao;->g(Lcom/alensw/a/ao;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    invoke-static {v2}, Lcom/alensw/a/ao;->h(Lcom/alensw/a/ao;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/a/at;->a:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v2}, Lcom/alensw/bean/CommonFile;->h()C

    move-result v14

    const/16 v2, 0x56

    if-ne v14, v2, :cond_3

    const/4 v2, 0x1

    move v10, v2

    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alensw/a/at;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alensw/a/at;->i:Lcom/alensw/b/h/a;

    iget-object v15, v8, Lcom/alensw/b/h/a;->outMimeType:Ljava/lang/String;

    iget v0, v8, Lcom/alensw/b/h/a;->c:I

    move/from16 v16, v0

    iget v0, v8, Lcom/alensw/b/h/a;->outWidth:I

    move/from16 v17, v0

    iget v0, v8, Lcom/alensw/b/h/a;->outHeight:I

    move/from16 v18, v0

    if-eqz v10, :cond_4

    const/4 v9, 0x0

    :goto_2
    const/4 v2, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v3, 0x0

    if-nez v10, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    invoke-static {v4}, Lcom/alensw/a/ao;->i(Lcom/alensw/a/ao;)I

    move-result v4

    const/high16 v6, 0x30000

    if-gt v4, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/a/at;->j:Lcom/alensw/b/h/c;

    invoke-virtual {v4}, Lcom/alensw/b/h/c;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, v8, Lcom/alensw/b/h/a;->mCancel:Z

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/a/at;->j:Lcom/alensw/b/h/c;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    invoke-static {v4}, Lcom/alensw/a/ao;->i(Lcom/alensw/a/ao;)I

    move-result v4

    invoke-static {v2, v4, v8}, Lcom/alensw/b/h/b;->a(Lcom/alensw/b/h/c;ILcom/alensw/b/h/a;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    iget-boolean v4, v4, Lcom/alensw/a/ao;->a:Z

    if-eqz v4, :cond_11

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/alensw/a/ao;->a(Lcom/alensw/a/ao;Landroid/net/Uri;)Z

    move-result v11

    if-nez v11, :cond_10

    iget-boolean v3, v8, Lcom/alensw/b/h/a;->mCancel:Z

    if-nez v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/alensw/a/at;->h:J

    move-object/from16 v4, p2

    invoke-static/range {v3 .. v9}, Lcom/alensw/a/ao;->a(Lcom/alensw/a/ao;Landroid/net/Uri;Ljava/lang/String;JLcom/alensw/b/h/a;I)Landroid/graphics/Bitmap;

    move-result-object v2

    move v3, v11

    move-object v4, v2

    :goto_3
    move/from16 v0, v17

    iput v0, v8, Lcom/alensw/b/h/a;->outWidth:I

    move/from16 v0, v18

    iput v0, v8, Lcom/alensw/b/h/a;->outHeight:I

    move/from16 v0, v16

    iput v0, v8, Lcom/alensw/b/h/a;->c:I

    iput-object v15, v8, Lcom/alensw/b/h/a;->outMimeType:Ljava/lang/String;

    if-nez v4, :cond_f

    iget-boolean v2, v8, Lcom/alensw/b/h/a;->mCancel:Z

    if-nez v2, :cond_f

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/a/at;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alensw/b/h/j;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alensw/a/at;->a(Lcom/alensw/b/h/j;)V

    const/16 v2, 0x49

    if-ne v14, v2, :cond_6

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    invoke-static {v4}, Lcom/alensw/a/ao;->d(Lcom/alensw/a/ao;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4, v8}, Lcom/alensw/b/h/b;->a(Lcom/alensw/b/c/f;ZILcom/alensw/b/h/a;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget v2, v8, Lcom/alensw/b/h/a;->inSampleSize:I

    const/4 v7, 0x1

    if-gt v2, v7, :cond_2

    const-string v2, "image/gif"

    iget-object v7, v8, Lcom/alensw/b/h/a;->outMimeType:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    const/4 v2, 0x1

    :goto_4
    move/from16 v19, v2

    move-object v2, v4

    move/from16 v4, v19

    :goto_5
    if-nez v2, :cond_9

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x0

    move v10, v2

    goto/16 :goto_1

    :cond_4
    mul-int v2, v17, v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    invoke-static {v3}, Lcom/alensw/a/ao;->i(Lcom/alensw/a/ao;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto/16 :goto_2

    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    :cond_6
    const/16 v2, 0x44

    if-eq v14, v2, :cond_7

    if-nez v14, :cond_e

    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    invoke-static {v4}, Lcom/alensw/a/ao;->d(Lcom/alensw/a/ao;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4, v8}, Lcom/alensw/b/h/b;->a(Lcom/alensw/b/c/f;ZILcom/alensw/b/h/a;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_6
    if-nez v2, :cond_8

    invoke-static/range {p1 .. p1}, Lcom/alensw/b/h/b;->a(Lcom/alensw/b/c/f;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_8
    const/4 v4, 0x1

    goto :goto_5

    :cond_9
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    invoke-static {v9}, Lcom/alensw/a/ao;->i(Lcom/alensw/a/ao;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    invoke-static {v11}, Lcom/alensw/a/ao;->j(Lcom/alensw/a/ao;)I

    move-result v11

    invoke-static {v7, v2, v9, v11}, Lcom/alensw/a/ao;->a(Lcom/alensw/a/ao;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eq v7, v2, :cond_b

    const/4 v2, 0x1

    :goto_7
    or-int v9, v4, v2

    if-eqz v10, :cond_c

    const/4 v2, 0x4

    :goto_8
    new-instance v4, Lcom/alensw/b/h/j;

    move-object/from16 v0, p2

    invoke-direct {v4, v7, v2, v0, v8}, Lcom/alensw/b/h/j;-><init>(Landroid/graphics/Bitmap;ILandroid/net/Uri;Lcom/alensw/b/h/a;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    invoke-virtual {v2, v4}, Lcom/alensw/a/ao;->a(Lcom/alensw/b/h/j;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/alensw/a/at;->a(Lcom/alensw/b/h/j;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    iget-boolean v2, v2, Lcom/alensw/a/ao;->a:Z

    if-eqz v2, :cond_a

    if-eqz v6, :cond_a

    if-eqz v9, :cond_a

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/alensw/a/at;->h:J

    move-object/from16 v0, p2

    invoke-static {v2, v0, v5, v6, v7}, Lcom/alensw/a/ao;->a(Lcom/alensw/a/ao;Landroid/net/Uri;Ljava/lang/String;J)V

    :cond_a
    move-object v2, v4

    goto/16 :goto_0

    :cond_b
    const/4 v2, 0x0

    goto :goto_7

    :cond_c
    if-eqz v6, :cond_d

    if-nez v9, :cond_d

    const/4 v2, 0x2

    goto :goto_8

    :cond_d
    const/4 v2, 0x1

    goto :goto_8

    :cond_e
    move-object v2, v4

    goto :goto_6

    :cond_f
    move v6, v13

    move-object v2, v4

    move v4, v12

    goto/16 :goto_5

    :cond_10
    move v3, v11

    move-object v4, v2

    goto/16 :goto_3

    :cond_11
    move-object v4, v2

    goto/16 :goto_3
.end method

.method static synthetic a(Lcom/alensw/a/at;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/at;->k:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method private a(Lcom/alensw/b/h/j;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alensw/a/at;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alensw/a/at;->d:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {p1}, Lcom/alensw/b/h/j;->c()Lcom/alensw/b/h/j;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alensw/a/at;->i:Lcom/alensw/b/h/a;

    iget v0, v0, Lcom/alensw/b/h/a;->outWidth:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/a/at;->i:Lcom/alensw/b/h/a;

    iget v0, v0, Lcom/alensw/b/h/a;->outHeight:I

    if-eqz v0, :cond_1

    new-instance v0, Lcom/alensw/b/h/j;

    iget-object v1, p0, Lcom/alensw/a/at;->a:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v1}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/a/at;->i:Lcom/alensw/b/h/a;

    invoke-direct {v0, v1, v2}, Lcom/alensw/b/h/j;-><init>(Landroid/net/Uri;Lcom/alensw/b/h/a;)V

    :goto_0
    iget-object v1, p0, Lcom/alensw/a/at;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/h/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->m()I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/alensw/b/c/f;Landroid/net/Uri;)Lcom/alensw/b/h/j;
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alensw/a/at;->i:Lcom/alensw/b/h/a;

    const-string v0, "image/gif"

    iget-object v3, v2, Lcom/alensw/b/h/a;->outMimeType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, v2, Lcom/alensw/b/h/a;->mCancel:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alensw/a/at;->d:Landroid/os/Handler;

    invoke-static {p1, p2, v0}, Lcom/alensw/b/h/d;->a(Lcom/alensw/b/c/f;Landroid/net/Uri;Landroid/os/Handler;)Lcom/alensw/b/h/d;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/alensw/b/h/j;->b:Lcom/alensw/b/h/i;

    iget v3, v2, Lcom/alensw/b/h/a;->c:I

    iput v3, v1, Lcom/alensw/b/h/i;->d:I

    iget-boolean v1, v2, Lcom/alensw/b/h/a;->mCancel:Z

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/alensw/a/at;->a(Lcom/alensw/b/h/j;)V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iget-boolean v0, v2, Lcom/alensw/b/h/a;->mCancel:Z

    if-eqz v0, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    invoke-static {v0}, Lcom/alensw/a/ao;->k(Lcom/alensw/a/ao;)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    invoke-static {v3}, Lcom/alensw/a/ao;->l(Lcom/alensw/a/ao;)I

    move-result v3

    invoke-static {p1, v0, v3, v2}, Lcom/alensw/b/h/b;->a(Lcom/alensw/b/c/f;ZILcom/alensw/b/h/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    invoke-static {v3}, Lcom/alensw/a/ao;->h(Lcom/alensw/a/ao;)V

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    iget-object v3, p0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    iget v3, v3, Lcom/alensw/a/ao;->b:I

    iget-object v4, p0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    invoke-static {v4}, Lcom/alensw/a/ao;->m(Lcom/alensw/a/ao;)I

    move-result v4

    invoke-static {v1, v0, v3, v4}, Lcom/alensw/a/ao;->a(Lcom/alensw/a/ao;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Lcom/alensw/b/h/j;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, p2, v2}, Lcom/alensw/b/h/j;-><init>(Landroid/graphics/Bitmap;ILandroid/net/Uri;Lcom/alensw/b/h/a;)V

    invoke-direct {p0, v0}, Lcom/alensw/a/at;->a(Lcom/alensw/b/h/j;)V

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private c(Lcom/alensw/b/c/f;Landroid/net/Uri;)Lcom/alensw/b/h/j;
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/alensw/a/at;->i:Lcom/alensw/b/h/a;

    iget-boolean v0, p0, Lcom/alensw/a/at;->g:Z

    if-eqz v0, :cond_1

    iget-boolean v0, v3, Lcom/alensw/b/h/a;->mCancel:Z

    if-nez v0, :cond_1

    iget-object v0, v3, Lcom/alensw/b/h/a;->outMimeType:Ljava/lang/String;

    iget-object v2, p0, Lcom/alensw/a/at;->d:Landroid/os/Handler;

    invoke-static {p1, p2, v0, v2}, Lcom/alensw/b/h/n;->a(Lcom/alensw/b/c/f;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Handler;)Lcom/alensw/b/h/n;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/alensw/b/h/j;->b:Lcom/alensw/b/h/i;

    iget v2, v3, Lcom/alensw/b/h/a;->c:I

    iput v2, v1, Lcom/alensw/b/h/i;->d:I

    iget-boolean v1, v3, Lcom/alensw/b/h/a;->mCancel:Z

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/alensw/a/at;->a(Lcom/alensw/b/h/j;)V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const-string v0, "image/gif"

    iget-object v2, v3, Lcom/alensw/b/h/a;->outMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, v3, Lcom/alensw/b/h/a;->mCancel:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/alensw/a/at;->d:Landroid/os/Handler;

    invoke-static {p1, p2, v0}, Lcom/alensw/b/h/d;->a(Lcom/alensw/b/c/f;Landroid/net/Uri;Landroid/os/Handler;)Lcom/alensw/b/h/d;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-boolean v0, v3, Lcom/alensw/b/h/a;->mCancel:Z

    if-eqz v0, :cond_3

    move-object v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    invoke-static {v0}, Lcom/alensw/a/ao;->k(Lcom/alensw/a/ao;)V

    invoke-static {p1, v4, v3}, Lcom/alensw/b/h/b;->a(Lcom/alensw/b/c/f;ILcom/alensw/b/h/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_4

    iget-boolean v2, v3, Lcom/alensw/b/h/a;->mCancel:Z

    if-nez v2, :cond_4

    invoke-virtual {v3}, Lcom/alensw/b/h/a;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v3, v4}, Lcom/alensw/b/h/a;->a(Z)V

    const/high16 v0, 0x300000

    invoke-static {p1, v0, v3}, Lcom/alensw/b/h/b;->a(Lcom/alensw/b/c/f;ILcom/alensw/b/h/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_4
    iget-object v2, p0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    invoke-static {v2}, Lcom/alensw/a/ao;->h(Lcom/alensw/a/ao;)V

    if-eqz v0, :cond_6

    iget-boolean v2, v3, Lcom/alensw/b/h/a;->mCancel:Z

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v2, v1

    :goto_2
    if-nez v2, :cond_5

    move-object v0, v1

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/alensw/b/h/j;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1, p2, v3}, Lcom/alensw/b/h/j;-><init>(Landroid/graphics/Bitmap;ILandroid/net/Uri;Lcom/alensw/b/h/a;)V

    invoke-direct {p0, v0}, Lcom/alensw/a/at;->a(Lcom/alensw/b/h/j;)V

    goto :goto_1

    :cond_6
    move-object v2, v0

    goto :goto_2

    :cond_7
    move-object v0, v1

    goto :goto_0
.end method

.method private g()Lcom/alensw/b/c/f;
    .locals 8

    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v6, -0x1

    iget-object v1, p0, Lcom/alensw/a/at;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alensw/a/at;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alensw/b/c/f;->a(Ljava/io/File;Z)Lcom/alensw/b/c/f;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v1, "PictureLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alensw/a/at;->e:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alensw/a/at;->a:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v1}, Lcom/alensw/bean/CommonFile;->h()C

    move-result v1

    const/16 v2, 0x56

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/alensw/a/at;->e:Landroid/net/Uri;

    invoke-static {v1}, Lcom/alensw/b/j/a;->c(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/alensw/b/c/f;

    iget-object v2, p0, Lcom/alensw/a/at;->e:Landroid/net/Uri;

    iget-object v3, p0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    invoke-static {v3}, Lcom/alensw/a/ao;->c(Lcom/alensw/a/ao;)Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/alensw/a/at;->e:Landroid/net/Uri;

    iget-object v5, p0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    invoke-static {v5}, Lcom/alensw/a/ao;->d(Lcom/alensw/a/ao;)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/alensw/b/j/a;->a(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alensw/b/c/f;-><init>(Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Lcom/alensw/b/e/a; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    iget-object v2, p0, Lcom/alensw/a/at;->i:Lcom/alensw/b/h/a;

    iget-object v3, p0, Lcom/alensw/a/at;->i:Lcom/alensw/b/h/a;

    iput v6, v3, Lcom/alensw/b/h/a;->outHeight:I

    iput v6, v2, Lcom/alensw/b/h/a;->outWidth:I

    const-string v2, "PictureLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alensw/a/at;->e:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    invoke-static {v1}, Lcom/alensw/a/ao;->c(Lcom/alensw/a/ao;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/a/at;->e:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/alensw/b/c/f;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/alensw/b/c/f;
    :try_end_2
    .catch Lcom/alensw/b/e/a; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v1, "PictureLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open cancelled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alensw/a/at;->e:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_3
    move-exception v1

    iget-object v2, p0, Lcom/alensw/a/at;->i:Lcom/alensw/b/h/a;

    iget-object v3, p0, Lcom/alensw/a/at;->i:Lcom/alensw/b/h/a;

    iput v6, v3, Lcom/alensw/b/h/a;->outHeight:I

    iput v6, v2, Lcom/alensw/b/h/a;->outWidth:I

    invoke-direct {p0, v7}, Lcom/alensw/a/at;->a(Z)V

    const-string v2, "PictureLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alensw/a/at;->e:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private h()Lcom/alensw/b/c/f;
    .locals 14

    const/4 v3, 0x0

    const/16 v13, 0x168

    const/4 v12, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v6, p0, Lcom/alensw/a/at;->i:Lcom/alensw/b/h/a;

    iget-object v0, p0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    invoke-static {v0}, Lcom/alensw/a/ao;->e(Lcom/alensw/a/ao;)Lcom/alensw/b/a/a;

    move-result-object v0

    iget-object v4, p0, Lcom/alensw/a/at;->e:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Lcom/alensw/b/a/a;->b(Ljava/lang/Object;)Lcom/alensw/b/a/c;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/h/k;

    if-eqz v0, :cond_0

    move v5, v2

    :goto_0
    if-eqz v0, :cond_1

    iget v4, v0, Lcom/alensw/b/h/k;->a:I

    iput v4, v6, Lcom/alensw/b/h/a;->outWidth:I

    iget v4, v0, Lcom/alensw/b/h/k;->b:I

    iput v4, v6, Lcom/alensw/b/h/a;->outHeight:I

    iget v4, v0, Lcom/alensw/b/h/k;->c:I

    iput v4, v6, Lcom/alensw/b/h/a;->b:I

    iget v4, v0, Lcom/alensw/b/h/k;->d:I

    iput v4, v6, Lcom/alensw/b/h/a;->c:I

    iget-boolean v4, v0, Lcom/alensw/b/h/k;->i:Z

    iput-boolean v4, v6, Lcom/alensw/b/h/a;->d:Z

    iget-object v4, v0, Lcom/alensw/b/h/k;->o:Ljava/lang/String;

    iput-object v4, v6, Lcom/alensw/b/h/a;->outMimeType:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/alensw/a/at;->a(Z)V

    :goto_1
    invoke-direct {p0}, Lcom/alensw/a/at;->g()Lcom/alensw/b/c/f;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v0, v3

    :goto_2
    return-object v0

    :cond_0
    move v5, v1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/alensw/b/h/k;

    invoke-direct {v0}, Lcom/alensw/b/h/k;-><init>()V

    iput v13, v6, Lcom/alensw/b/h/a;->c:I

    goto :goto_1

    :cond_2
    new-instance v7, Lcom/alensw/b/h/c;

    invoke-direct {v7}, Lcom/alensw/b/h/c;-><init>()V

    iput-object v7, p0, Lcom/alensw/a/at;->j:Lcom/alensw/b/h/c;

    iget-object v7, p0, Lcom/alensw/a/at;->a:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v7}, Lcom/alensw/bean/CommonFile;->e()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/alensw/a/at;->h:J

    iget-wide v8, p0, Lcom/alensw/a/at;->h:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/alensw/a/at;->f:Ljava/lang/String;

    if-eqz v7, :cond_3

    invoke-virtual {v4}, Lcom/alensw/b/c/f;->f()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    iput-wide v8, p0, Lcom/alensw/a/at;->h:J

    :cond_3
    iget-object v7, p0, Lcom/alensw/a/at;->a:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v7}, Lcom/alensw/bean/CommonFile;->h()C

    move-result v7

    const/16 v8, 0x49

    if-ne v7, v8, :cond_f

    iget v7, v6, Lcom/alensw/b/h/a;->c:I

    if-ne v7, v13, :cond_4

    iget-boolean v7, v6, Lcom/alensw/b/h/a;->mCancel:Z

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/alensw/a/at;->j:Lcom/alensw/b/h/c;

    invoke-virtual {v7, v4, v2}, Lcom/alensw/b/h/c;->b(Lcom/alensw/b/c/f;Z)Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/alensw/a/at;->j:Lcom/alensw/b/h/c;

    iget-wide v8, p0, Lcom/alensw/a/at;->h:J

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-virtual {v7, v0, v8, v9}, Lcom/alensw/b/h/c;->a(Lcom/alensw/b/h/k;J)V

    iget v7, v0, Lcom/alensw/b/h/k;->a:I

    iput v7, v6, Lcom/alensw/b/h/a;->outWidth:I

    iget v7, v0, Lcom/alensw/b/h/k;->b:I

    iput v7, v6, Lcom/alensw/b/h/a;->outHeight:I

    iget v7, v0, Lcom/alensw/b/h/k;->c:I

    iput v7, v6, Lcom/alensw/b/h/a;->b:I

    iget v7, v0, Lcom/alensw/b/h/k;->d:I

    iput v7, v6, Lcom/alensw/b/h/a;->c:I

    iget-boolean v7, v0, Lcom/alensw/b/h/k;->i:Z

    iput-boolean v7, v6, Lcom/alensw/b/h/a;->d:Z

    iget-object v7, v0, Lcom/alensw/b/h/k;->o:Ljava/lang/String;

    iput-object v7, v6, Lcom/alensw/b/h/a;->outMimeType:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/alensw/a/at;->a(Z)V

    :cond_4
    :goto_3
    iget v7, v6, Lcom/alensw/b/h/a;->outWidth:I

    if-lez v7, :cond_5

    iget v7, v6, Lcom/alensw/b/h/a;->outHeight:I

    if-gtz v7, :cond_8

    :cond_5
    iget-boolean v7, v6, Lcom/alensw/b/h/a;->mCancel:Z

    if-nez v7, :cond_8

    invoke-static {v4, v6}, Lcom/alensw/b/h/b;->b(Lcom/alensw/b/c/f;Lcom/alensw/b/h/a;)Z

    move-result v7

    if-eqz v7, :cond_e

    iget v3, v6, Lcom/alensw/b/h/a;->outWidth:I

    iput v3, v0, Lcom/alensw/b/h/k;->a:I

    iget v3, v6, Lcom/alensw/b/h/a;->outHeight:I

    iput v3, v0, Lcom/alensw/b/h/k;->b:I

    iput v1, v0, Lcom/alensw/b/h/k;->d:I

    const-string v3, "image/jpeg"

    iget-object v7, v6, Lcom/alensw/b/h/a;->outMimeType:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "image/png"

    iget-object v7, v6, Lcom/alensw/b/h/a;->outMimeType:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    iput-boolean v1, v0, Lcom/alensw/b/h/k;->i:Z

    iget-object v1, v6, Lcom/alensw/b/h/a;->outMimeType:Ljava/lang/String;

    iput-object v1, v0, Lcom/alensw/b/h/k;->o:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/alensw/a/at;->a(Z)V

    :cond_8
    :goto_4
    if-nez v5, :cond_9

    iget-object v1, p0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    invoke-static {v1}, Lcom/alensw/a/ao;->e(Lcom/alensw/a/ao;)Lcom/alensw/b/a/a;

    move-result-object v1

    iget-object v3, p0, Lcom/alensw/a/at;->e:Landroid/net/Uri;

    invoke-virtual {v1, v3, v0}, Lcom/alensw/b/a/a;->a(Ljava/lang/Object;Lcom/alensw/b/a/c;)Lcom/alensw/b/a/c;

    :cond_9
    iget v1, p0, Lcom/alensw/a/at;->b:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_a

    iget v1, p0, Lcom/alensw/a/at;->b:I

    if-ne v1, v12, :cond_b

    :cond_a
    invoke-static {v0}, Lcom/alensw/a/ao;->a(Lcom/alensw/b/h/k;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alensw/a/at;->g:Z

    :cond_b
    iget v0, p0, Lcom/alensw/a/at;->b:I

    if-ne v0, v12, :cond_c

    invoke-virtual {v6, v2}, Lcom/alensw/b/h/a;->a(Z)V

    :cond_c
    move-object v0, v4

    goto/16 :goto_2

    :cond_d
    iput v1, v6, Lcom/alensw/b/h/a;->c:I

    goto :goto_3

    :cond_e
    const/4 v0, -0x1

    iput v0, v6, Lcom/alensw/b/h/a;->outHeight:I

    iput v0, v6, Lcom/alensw/b/h/a;->outWidth:I

    invoke-direct {p0, v2}, Lcom/alensw/a/at;->a(Z)V

    move-object v0, v3

    goto/16 :goto_2

    :cond_f
    const/16 v3, 0x200

    iput v3, v6, Lcom/alensw/b/h/a;->outWidth:I

    const/16 v3, 0x180

    iput v3, v6, Lcom/alensw/b/h/a;->outHeight:I

    iput v1, v6, Lcom/alensw/b/h/a;->c:I

    invoke-direct {p0, v2}, Lcom/alensw/a/at;->a(Z)V

    goto :goto_4
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/a/at;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/a/at;->e:Landroid/net/Uri;

    invoke-static {v0}, Lcom/alensw/b/j/a;->c(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    invoke-static {v0}, Lcom/alensw/a/ao;->c(Lcom/alensw/a/ao;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/a/at;->e:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/alensw/b/j/a;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/alensw/a/at;->i:Lcom/alensw/b/h/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/a/at;->i:Lcom/alensw/b/h/a;

    invoke-virtual {v0}, Lcom/alensw/b/h/a;->requestCancelDecode()V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b()V
    .locals 0

    invoke-virtual {p0}, Lcom/alensw/a/at;->e()I

    return-void
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/a/at;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alensw/a/at;->a(Z)V

    :cond_0
    return-void
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/a/at;->f()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/at;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/at;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/a/at;->c()V

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/alensw/a/at;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/alensw/a/at;

    iget v2, p0, Lcom/alensw/a/at;->b:I

    iget v3, p1, Lcom/alensw/a/at;->b:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/alensw/a/at;->d:Landroid/os/Handler;

    iget-object v3, p1, Lcom/alensw/a/at;->d:Landroid/os/Handler;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/alensw/a/at;->a:Lcom/alensw/bean/CommonFile;

    iget-object v3, p1, Lcom/alensw/a/at;->a:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v2, v3}, Lcom/alensw/bean/CommonFile;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public f()Ljava/lang/Void;
    .locals 7

    const/4 v2, 0x1

    const/4 v6, 0x0

    iget v0, p0, Lcom/alensw/a/at;->b:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    invoke-static {v0}, Lcom/alensw/a/ao;->n(Lcom/alensw/a/ao;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return-object v6

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/alensw/a/at;->d()I

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    invoke-static {v0}, Lcom/alensw/a/ao;->n(Lcom/alensw/a/ao;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_2
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alensw/b/h/a;->e()Lcom/alensw/b/h/a;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/a/at;->i:Lcom/alensw/b/h/a;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/alensw/a/at;->e:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/alensw/a/at;->h()Lcom/alensw/b/c/f;

    move-result-object v3

    if-nez v3, :cond_7

    iget-object v0, p0, Lcom/alensw/a/at;->i:Lcom/alensw/b/h/a;

    iget-boolean v0, v0, Lcom/alensw/b/h/a;->mCancel:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alensw/a/at;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/h/j;

    invoke-direct {p0, v0}, Lcom/alensw/a/at;->a(Lcom/alensw/b/h/j;)V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/alensw/a/at;->j:Lcom/alensw/b/h/c;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alensw/a/at;->j:Lcom/alensw/b/h/c;

    invoke-virtual {v0}, Lcom/alensw/b/h/c;->a()V

    :cond_4
    iput-object v6, p0, Lcom/alensw/a/at;->j:Lcom/alensw/b/h/c;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/alensw/b/c/f;->h()V

    :cond_5
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/alensw/a/at;->i:Lcom/alensw/b/h/a;

    invoke-static {v0}, Lcom/alensw/b/h/a;->a(Lcom/alensw/b/h/a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/a/at;->i:Lcom/alensw/b/h/a;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/alensw/a/at;->c:Lcom/alensw/a/ao;

    invoke-static {v0}, Lcom/alensw/a/ao;->n(Lcom/alensw/a/ao;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {p0}, Lcom/alensw/a/at;->e()I

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_7
    iget-object v4, p0, Lcom/alensw/a/at;->i:Lcom/alensw/b/h/a;

    iget-boolean v4, v4, Lcom/alensw/b/h/a;->mCancel:Z

    if-nez v4, :cond_3

    iget v4, p0, Lcom/alensw/a/at;->b:I

    if-le v4, v2, :cond_8

    iget-object v4, p0, Lcom/alensw/a/at;->a:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v4}, Lcom/alensw/bean/CommonFile;->h()C

    move-result v4

    const/16 v5, 0x56

    if-ne v4, v5, :cond_9

    :cond_8
    invoke-direct {p0, v3, v0}, Lcom/alensw/a/at;->a(Lcom/alensw/b/c/f;Landroid/net/Uri;)Lcom/alensw/b/h/j;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->m()I

    iput-boolean v2, p0, Lcom/alensw/a/at;->m:Z

    goto :goto_2

    :cond_9
    iget v4, p0, Lcom/alensw/a/at;->b:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_a

    invoke-direct {p0, v3, v0}, Lcom/alensw/a/at;->b(Lcom/alensw/b/c/f;Landroid/net/Uri;)Lcom/alensw/b/h/j;

    move-result-object v0

    goto :goto_3

    :cond_a
    invoke-direct {p0, v3, v0}, Lcom/alensw/a/at;->c(Lcom/alensw/b/c/f;Landroid/net/Uri;)Lcom/alensw/b/h/j;

    move-result-object v0

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/alensw/a/at;->a:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/alensw/a/at;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/a/at;->a:Lcom/alensw/bean/CommonFile;

    invoke-virtual {v1}, Lcom/alensw/bean/CommonFile;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", req="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alensw/a/at;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
