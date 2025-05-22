.class public final Lcn/sharesdk/framework/utils/QRCodeUtil/j;
.super Ljava/lang/Object;
.source "QRCodeWriter.java"

# interfaces
.implements Lcn/sharesdk/framework/utils/QRCodeUtil/Writer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcn/sharesdk/framework/utils/QRCodeUtil/a/f;III)Lcn/sharesdk/framework/utils/QRCodeUtil/c;
    .locals 9

    .line 63
    invoke-virtual {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/f;->a()Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 67
    invoke-virtual {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->b()I

    move-result v0

    .line 68
    invoke-virtual {p0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->a()I

    move-result v1

    mul-int/lit8 p3, p3, 0x2

    add-int v2, v0, p3

    add-int/2addr p3, v1

    .line 71
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 72
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 74
    div-int v2, p1, v2

    div-int p3, p2, p3

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    mul-int v2, v0, p3

    sub-int v2, p1, v2

    .line 79
    div-int/lit8 v2, v2, 0x2

    mul-int v3, v1, p3

    sub-int v3, p2, v3

    .line 80
    div-int/lit8 v3, v3, 0x2

    .line 82
    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/c;

    invoke-direct {v4, p1, p2}, Lcn/sharesdk/framework/utils/QRCodeUtil/c;-><init>(II)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v1, :cond_2

    move v6, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_1

    .line 87
    invoke-virtual {p0, v5, p2}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/b;->a(II)B

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 88
    invoke-virtual {v4, v6, v3, p3, p3}, Lcn/sharesdk/framework/utils/QRCodeUtil/c;->a(IIII)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    add-int/2addr v6, p3

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    add-int/2addr v3, p3

    goto :goto_0

    :cond_2
    return-object v4

    .line 65
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcn/sharesdk/framework/utils/QRCodeUtil/a;II)Lcn/sharesdk/framework/utils/QRCodeUtil/c;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 22
    invoke-virtual/range {v0 .. v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->encode(Ljava/lang/String;Lcn/sharesdk/framework/utils/QRCodeUtil/a;IILjava/util/Map;)Lcn/sharesdk/framework/utils/QRCodeUtil/c;

    move-result-object p1

    return-object p1
.end method

.method public encode(Ljava/lang/String;Lcn/sharesdk/framework/utils/QRCodeUtil/a;IILjava/util/Map;)Lcn/sharesdk/framework/utils/QRCodeUtil/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/sharesdk/framework/utils/QRCodeUtil/a;",
            "II",
            "Ljava/util/Map<",
            "Lcn/sharesdk/framework/utils/QRCodeUtil/e;",
            "*>;)",
            "Lcn/sharesdk/framework/utils/QRCodeUtil/c;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/sharesdk/framework/utils/QRCodeUtil/WriterException;
        }
    .end annotation

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 36
    sget-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/a;->l:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    if-ne p2, v0, :cond_3

    if-ltz p3, :cond_2

    if-ltz p4, :cond_2

    .line 45
    sget-object p2, Lcn/sharesdk/framework/utils/QRCodeUtil/f;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/f;

    const/4 v0, 0x4

    if-eqz p5, :cond_1

    .line 48
    sget-object v1, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    invoke-interface {p5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    sget-object p2, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    invoke-interface {p5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/sharesdk/framework/utils/QRCodeUtil/f;->valueOf(Ljava/lang/String;)Lcn/sharesdk/framework/utils/QRCodeUtil/f;

    move-result-object p2

    .line 51
    :cond_0
    sget-object v1, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->f:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    invoke-interface {p5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    sget-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->f:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 56
    :cond_1
    invoke-static {p1, p2, p5}, Lcn/sharesdk/framework/utils/QRCodeUtil/a/c;->a(Ljava/lang/String;Lcn/sharesdk/framework/utils/QRCodeUtil/f;Ljava/util/Map;)Lcn/sharesdk/framework/utils/QRCodeUtil/a/f;

    move-result-object p1

    .line 57
    invoke-static {p1, p3, p4, v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/j;->a(Lcn/sharesdk/framework/utils/QRCodeUtil/a/f;III)Lcn/sharesdk/framework/utils/QRCodeUtil/c;

    move-result-object p1

    return-object p1

    .line 41
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Requested dimensions are too small: "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x78

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Can only encode QR_CODE, but got "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Found empty contents"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
