.class La/d/bp;
.super La/d/as;


# instance fields
.field private a:I

.field private ae:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, La/d/as;-><init>()V

    iput v2, p0, La/d/bp;->d:I

    const-string v0, "\\"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, La/d/bp;->A:Ljava/lang/String;

    :goto_0
    iput-object p2, p0, La/d/bp;->ae:Ljava/lang/String;

    and-int/lit8 v0, p3, 0x37

    iput v0, p0, La/d/bp;->a:I

    const/16 v0, 0x32

    iput-byte v0, p0, La/d/bp;->g:B

    const/4 v0, 0x1

    iput-byte v0, p0, La/d/bp;->S:B

    iput v2, p0, La/d/bp;->b:I

    const/16 v0, 0x104

    iput v0, p0, La/d/bp;->c:I

    iput v2, p0, La/d/bp;->M:I

    const/16 v0, 0xa

    iput v0, p0, La/d/bp;->N:I

    const v0, 0xffff

    iput v0, p0, La/d/bp;->O:I

    iput-byte v2, p0, La/d/bp;->P:B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/d/bp;->A:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method c([BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    iget-byte v1, p0, La/d/bp;->S:B

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x1

    const/4 v1, 0x0

    aput-byte v1, p1, v0

    const/4 v0, 0x2

    return v0
.end method

.method d([BI)I
    .locals 4

    iget v0, p0, La/d/bp;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, La/d/bp;->a(J[BI)V

    add-int/lit8 v0, p2, 0x2

    const-wide/16 v2, 0xc8

    invoke-static {v2, v3, p1, v0}, La/d/bp;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, La/d/bp;->b:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, La/d/bp;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, La/d/bp;->c:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, La/d/bp;->a(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, La/d/bp;->d:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, La/d/bp;->b(J[BI)V

    add-int/lit8 v0, v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, La/d/bp;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/d/bp;->ae:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v0}, La/d/bp;->a(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0
.end method

.method e([BI)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
