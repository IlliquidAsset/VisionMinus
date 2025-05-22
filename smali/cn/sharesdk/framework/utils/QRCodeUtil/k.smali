.class public final Lcn/sharesdk/framework/utils/QRCodeUtil/k;
.super Ljava/lang/Object;
.source "ReedSolomonEncoder.java"


# instance fields
.field private final a:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/sharesdk/framework/utils/QRCodeUtil/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/utils/QRCodeUtil/g;)V
    .locals 5

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/k;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/k;->b:Ljava/util/List;

    .line 20
    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/h;

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    invoke-direct {v1, p1, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/h;-><init>(Lcn/sharesdk/framework/utils/QRCodeUtil/g;[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(I)Lcn/sharesdk/framework/utils/QRCodeUtil/h;
    .locals 8

    .line 24
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 25
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/utils/QRCodeUtil/h;

    .line 26
    iget-object v1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/k;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-gt v1, p1, :cond_0

    .line 27
    new-instance v3, Lcn/sharesdk/framework/utils/QRCodeUtil/h;

    iget-object v4, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/k;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v2, v5, v6

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->b()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v4, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/g;->a(I)I

    move-result v6

    aput v6, v5, v2

    invoke-direct {v3, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/h;-><init>(Lcn/sharesdk/framework/utils/QRCodeUtil/g;[I)V

    invoke-virtual {v0, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->b(Lcn/sharesdk/framework/utils/QRCodeUtil/h;)Lcn/sharesdk/framework/utils/QRCodeUtil/h;

    move-result-object v0

    .line 28
    iget-object v3, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/k;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/k;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/sharesdk/framework/utils/QRCodeUtil/h;

    return-object p1
.end method


# virtual methods
.method public a([II)V
    .locals 6

    if-eqz p2, :cond_2

    .line 39
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lez v0, :cond_1

    .line 43
    invoke-direct {p0, p2}, Lcn/sharesdk/framework/utils/QRCodeUtil/k;->a(I)Lcn/sharesdk/framework/utils/QRCodeUtil/h;

    move-result-object v1

    .line 44
    new-array v2, v0, [I

    const/4 v3, 0x0

    .line 45
    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/h;

    iget-object v5, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/k;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/g;

    invoke-direct {v4, v5, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/h;-><init>(Lcn/sharesdk/framework/utils/QRCodeUtil/g;[I)V

    const/4 v2, 0x1

    .line 47
    invoke-virtual {v4, p2, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->a(II)Lcn/sharesdk/framework/utils/QRCodeUtil/h;

    move-result-object v4

    .line 48
    invoke-virtual {v4, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->c(Lcn/sharesdk/framework/utils/QRCodeUtil/h;)[Lcn/sharesdk/framework/utils/QRCodeUtil/h;

    move-result-object v1

    aget-object v1, v1, v2

    .line 49
    invoke-virtual {v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/h;->a()[I

    move-result-object v1

    .line 50
    array-length v2, v1

    sub-int/2addr p2, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    add-int v4, v0, v2

    .line 52
    aput v3, p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v0, p2

    .line 54
    array-length p2, v1

    invoke-static {v1, v3, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 41
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No data bytes provided"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No error correction bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
