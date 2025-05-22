.class public final Lcn/sharesdk/framework/utils/QRCodeUtil/g;
.super Ljava/lang/Object;
.source "GenericGF.java"


# static fields
.field public static final a:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

.field public static final b:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

.field public static final c:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

.field public static final d:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

.field public static final e:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

.field public static final f:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

.field public static final g:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

.field public static final h:Lcn/sharesdk/framework/utils/QRCodeUtil/g;


# instance fields
.field private final i:[I

.field private final j:[I

.field private final k:Lcn/sharesdk/framework/utils/QRCodeUtil/h;

.field private final l:Lcn/sharesdk/framework/utils/QRCodeUtil/h;

.field private final m:I

.field private final n:I

.field private final o:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    const/16 v1, 0x1069

    const/16 v2, 0x1000

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/g;-><init>(III)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    .line 16
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    const/16 v1, 0x409

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/g;-><init>(III)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    .line 17
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    const/16 v1, 0x43

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/g;-><init>(III)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->c:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    .line 18
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    const/16 v1, 0x13

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/g;-><init>(III)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->d:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    .line 19
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    const/16 v1, 0x11d

    const/16 v2, 0x100

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/g;-><init>(III)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->e:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    .line 20
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    const/16 v1, 0x12d

    invoke-direct {v0, v1, v2, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/g;-><init>(III)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->f:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    .line 21
    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->g:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    .line 22
    sget-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->c:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->h:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->n:I

    .line 48
    iput p2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->m:I

    .line 49
    iput p3, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->o:I

    .line 51
    new-array p3, p2, [I

    iput-object p3, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->i:[I

    .line 52
    new-array p3, p2, [I

    iput-object p3, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->j:[I

    const/4 p3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    if-ge v1, p2, :cond_1

    .line 55
    iget-object v3, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->i:[I

    aput v2, v3, v1

    mul-int/lit8 v2, v2, 0x2

    if-lt v2, p2, :cond_0

    xor-int/2addr v2, p1

    add-int/lit8 v3, p2, -0x1

    and-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    add-int/lit8 v1, p2, -0x1

    if-ge p1, v1, :cond_2

    .line 63
    iget-object v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->j:[I

    iget-object v2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->i:[I

    aget v2, v2, p1

    aput p1, v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 66
    :cond_2
    new-instance p1, Lcn/sharesdk/framework/utils/QRCodeUtil/h;

    new-array p2, v0, [I

    aput p3, p2, p3

    invoke-direct {p1, p0, p2}, Lcn/sharesdk/framework/utils/QRCodeUtil/h;-><init>(Lcn/sharesdk/framework/utils/QRCodeUtil/g;[I)V

    iput-object p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->k:Lcn/sharesdk/framework/utils/QRCodeUtil/h;

    .line 67
    new-instance p1, Lcn/sharesdk/framework/utils/QRCodeUtil/h;

    new-array p2, v0, [I

    aput v0, p2, p3

    invoke-direct {p1, p0, p2}, Lcn/sharesdk/framework/utils/QRCodeUtil/h;-><init>(Lcn/sharesdk/framework/utils/QRCodeUtil/g;[I)V

    iput-object p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->l:Lcn/sharesdk/framework/utils/QRCodeUtil/h;

    return-void
.end method

.method static b(II)I
    .locals 0

    xor-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method a(I)I
    .locals 1

    .line 107
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->i:[I

    aget p1, v0, p1

    return p1
.end method

.method a()Lcn/sharesdk/framework/utils/QRCodeUtil/h;
    .locals 1

    .line 71
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->k:Lcn/sharesdk/framework/utils/QRCodeUtil/h;

    return-object v0
.end method

.method a(II)Lcn/sharesdk/framework/utils/QRCodeUtil/h;
    .locals 1

    if-ltz p1, :cond_1

    if-nez p2, :cond_0

    .line 86
    iget-object p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->k:Lcn/sharesdk/framework/utils/QRCodeUtil/h;

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 88
    new-array p1, p1, [I

    const/4 v0, 0x0

    .line 89
    aput p2, p1, v0

    .line 90
    new-instance p2, Lcn/sharesdk/framework/utils/QRCodeUtil/h;

    invoke-direct {p2, p0, p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/h;-><init>(Lcn/sharesdk/framework/utils/QRCodeUtil/g;[I)V

    return-object p2

    .line 83
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public b()I
    .locals 1

    .line 145
    iget v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->o:I

    return v0
.end method

.method b(I)I
    .locals 1

    if-eqz p1, :cond_0

    .line 117
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->j:[I

    aget p1, v0, p1

    return p1

    .line 115
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method c(I)I
    .locals 3

    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->i:[I

    iget v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->m:I

    iget-object v2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->j:[I

    aget p1, v2, p1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    aget p1, v0, v1

    return p1

    .line 125
    :cond_0
    new-instance p1, Ljava/lang/ArithmeticException;

    invoke-direct {p1}, Ljava/lang/ArithmeticException;-><init>()V

    throw p1
.end method

.method c(II)I
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->i:[I

    iget-object v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->j:[I

    aget p1, v1, p1

    aget p2, v1, p2

    add-int/2addr p1, p2

    iget p2, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->m:I

    add-int/lit8 p2, p2, -0x1

    rem-int/2addr p1, p2

    aget p1, v0, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GF(0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
