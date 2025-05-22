.class public final Lcn/sharesdk/framework/utils/QRCodeUtil/c;
.super Ljava/lang/Object;
.source "BitMatrix.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:[I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    .line 32
    iput p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->a:I

    .line 33
    iput p2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->b:I

    add-int/lit8 p1, p1, 0x1f

    .line 34
    div-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->c:I

    mul-int p1, p1, p2

    .line 35
    new-array p1, p1, [I

    iput-object p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->d:[I

    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Both dimensions must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(III[I)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->a:I

    .line 40
    iput p2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->b:I

    .line 41
    iput p3, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->c:I

    .line 42
    iput-object p4, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->d:[I

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->b:I

    iget v2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->a:I

    add-int/lit8 v2, v2, 0x1

    mul-int v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 437
    :goto_0
    iget v3, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->b:I

    if-ge v2, v3, :cond_2

    const/4 v3, 0x0

    .line 438
    :goto_1
    iget v4, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->a:I

    if-ge v3, v4, :cond_1

    .line 439
    invoke-virtual {p0, v3, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->a(II)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, p1

    goto :goto_2

    :cond_0
    move-object v4, p2

    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 441
    :cond_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 443
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()Lcn/sharesdk/framework/utils/QRCodeUtil/c;
    .locals 5

    .line 448
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/c;

    iget v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->a:I

    iget v2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->b:I

    iget v3, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->c:I

    iget-object v4, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->d:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/c;-><init>(III[I)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "\n"

    .line 420
    invoke-direct {p0, p1, p2, v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(IIII)V
    .locals 7

    if-ltz p2, :cond_4

    if-ltz p1, :cond_4

    const/4 v0, 0x1

    if-lt p4, v0, :cond_3

    if-lt p3, v0, :cond_3

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    .line 210
    iget v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->b:I

    if-gt p4, v1, :cond_2

    iget v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->a:I

    if-gt p3, v1, :cond_2

    :goto_0
    if-ge p2, p4, :cond_1

    .line 214
    iget v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->c:I

    mul-int v1, v1, p2

    move v2, p1

    :goto_1
    if-ge v2, p3, :cond_0

    .line 216
    iget-object v3, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->d:[I

    div-int/lit8 v4, v2, 0x20

    add-int/2addr v4, v1

    aget v5, v3, v4

    and-int/lit8 v6, v2, 0x1f

    shl-int v6, v0, v6

    or-int/2addr v5, v6

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 211
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The region must fit inside the matrix"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 206
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Height and width must be at least 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 203
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Left and top must be nonnegative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(II)Z
    .locals 1

    .line 131
    iget v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->c:I

    mul-int p2, p2, v0

    div-int/lit8 v0, p1, 0x20

    add-int/2addr p2, v0

    .line 132
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->d:[I

    aget p2, v0, p2

    and-int/lit8 p1, p1, 0x1f

    ushr-int p1, p2, p1

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->a()Lcn/sharesdk/framework/utils/QRCodeUtil/c;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 388
    instance-of v0, p1, Lcn/sharesdk/framework/utils/QRCodeUtil/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 391
    :cond_0
    check-cast p1, Lcn/sharesdk/framework/utils/QRCodeUtil/c;

    .line 392
    iget v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->a:I

    iget v2, p1, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->a:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->b:I

    iget v2, p1, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->b:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->c:I

    iget v2, p1, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->c:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->d:[I

    iget-object p1, p1, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->d:[I

    .line 393
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 398
    iget v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->a:I

    mul-int/lit8 v1, v0, 0x1f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 400
    iget v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->b:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 401
    iget v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->c:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 402
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->d:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "X "

    const-string v1, "  "

    .line 411
    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
