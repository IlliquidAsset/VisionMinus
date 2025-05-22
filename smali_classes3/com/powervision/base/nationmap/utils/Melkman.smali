.class public Lcom/powervision/base/nationmap/utils/Melkman;
.super Ljava/lang/Object;
.source "Melkman.java"


# instance fields
.field private D:[I

.field private final N:I

.field private pointArray:[Lcom/powervision/base/nationmap/utils/MelkmanPoint;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/powervision/base/nationmap/model/NationLatLng;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/nationmap/model/NationLatLng;

    .line 21
    new-instance v2, Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    iget-wide v3, v1, Lcom/powervision/base/nationmap/model/NationLatLng;->latitude:D

    iget-wide v5, v1, Lcom/powervision/base/nationmap/model/NationLatLng;->longitude:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;-><init>(DD)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    iput-object p1, p0, Lcom/powervision/base/nationmap/utils/Melkman;->pointArray:[Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/powervision/base/nationmap/utils/Melkman;->N:I

    const/4 p1, 0x0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    .line 27
    iget-object v2, p0, Lcom/powervision/base/nationmap/utils/Melkman;->pointArray:[Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    add-int/lit8 v3, p1, 0x1

    aput-object v1, v2, p1

    move p1, v3

    goto :goto_1

    .line 29
    :cond_1
    iget p1, p0, Lcom/powervision/base/nationmap/utils/Melkman;->N:I

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/powervision/base/nationmap/utils/Melkman;->D:[I

    return-void
.end method

.method private angle(I)D
    .locals 8

    .line 210
    iget-object v0, p0, Lcom/powervision/base/nationmap/utils/Melkman;->pointArray:[Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->getX()D

    move-result-wide v0

    iget-object v2, p0, Lcom/powervision/base/nationmap/utils/Melkman;->pointArray:[Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->getX()D

    move-result-wide v4

    sub-double/2addr v0, v4

    .line 211
    iget-object v2, p0, Lcom/powervision/base/nationmap/utils/Melkman;->pointArray:[Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    aget-object p1, v2, p1

    invoke-virtual {p1}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->getY()D

    move-result-wide v4

    iget-object p1, p0, Lcom/powervision/base/nationmap/utils/Melkman;->pointArray:[Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    aget-object p1, p1, v3

    invoke-virtual {p1}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->getY()D

    move-result-wide v2

    sub-double/2addr v4, v2

    mul-double v2, v0, v0

    mul-double v6, v4, v4

    add-double/2addr v2, v6

    .line 212
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmpg-double p1, v4, v6

    if-gez p1, :cond_0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 214
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    mul-double v0, v0, v4

    :cond_0
    div-double/2addr v0, v2

    .line 215
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private isLeft(Lcom/powervision/base/nationmap/utils/MelkmanPoint;Lcom/powervision/base/nationmap/utils/MelkmanPoint;Lcom/powervision/base/nationmap/utils/MelkmanPoint;)D
    .locals 8

    .line 133
    invoke-virtual {p2}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->getX()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 134
    invoke-virtual {p2}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->getY()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->getY()D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 135
    invoke-virtual {p3}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->getX()D

    move-result-wide v4

    invoke-virtual {p2}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->getX()D

    move-result-wide v6

    sub-double/2addr v4, v6

    .line 136
    invoke-virtual {p3}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->getY()D

    move-result-wide v6

    invoke-virtual {p2}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->getY()D

    move-result-wide p1

    sub-double/2addr v6, p1

    mul-double v0, v0, v6

    mul-double v2, v2, v4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private loc(II)I
    .locals 7

    .line 185
    iget-object v0, p0, Lcom/powervision/base/nationmap/utils/Melkman;->pointArray:[Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->getArCos()D

    move-result-wide v0

    add-int/lit8 v2, p1, 0x1

    move v3, p2

    :goto_0
    if-ge v2, p2, :cond_0

    .line 190
    iget-object v4, p0, Lcom/powervision/base/nationmap/utils/Melkman;->pointArray:[Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->getArCos()D

    move-result-wide v4

    cmpg-double v6, v4, v0

    if-gez v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-le v3, p1, :cond_1

    .line 192
    iget-object v4, p0, Lcom/powervision/base/nationmap/utils/Melkman;->pointArray:[Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->getArCos()D

    move-result-wide v4

    cmpl-double v6, v4, v0

    if-lez v6, :cond_1

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    if-lt v2, v3, :cond_2

    .line 198
    invoke-direct {p0, p1, v3}, Lcom/powervision/base/nationmap/utils/Melkman;->swap(II)V

    return v3

    .line 196
    :cond_2
    invoke-direct {p0, v2, v3}, Lcom/powervision/base/nationmap/utils/Melkman;->swap(II)V

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private quickSort(II)V
    .locals 2

    if-ge p1, p2, :cond_0

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/powervision/base/nationmap/utils/Melkman;->loc(II)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 172
    invoke-direct {p0, p1, v1}, Lcom/powervision/base/nationmap/utils/Melkman;->quickSort(II)V

    add-int/lit8 v0, v0, 0x1

    .line 173
    invoke-direct {p0, v0, p2}, Lcom/powervision/base/nationmap/utils/Melkman;->quickSort(II)V

    :cond_0
    return-void
.end method

.method private swap(II)V
    .locals 5

    .line 148
    new-instance v0, Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    invoke-direct {v0}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;-><init>()V

    .line 149
    iget-object v1, p0, Lcom/powervision/base/nationmap/utils/Melkman;->pointArray:[Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->getX()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->setX(D)V

    .line 150
    iget-object v1, p0, Lcom/powervision/base/nationmap/utils/Melkman;->pointArray:[Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->getY()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->setY(D)V

    .line 151
    iget-object v1, p0, Lcom/powervision/base/nationmap/utils/Melkman;->pointArray:[Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->getArCos()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->setArCos(D)V

    .line 153
    iget-object v1, p0, Lcom/powervision/base/nationmap/utils/Melkman;->pointArray:[Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    aget-object v2, v1, p2

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->getX()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->setX(D)V

    .line 154
    iget-object v1, p0, Lcom/powervision/base/nationmap/utils/Melkman;->pointArray:[Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    aget-object v2, v1, p2

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->getY()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->setY(D)V

    .line 155
    iget-object v1, p0, Lcom/powervision/base/nationmap/utils/Melkman;->pointArray:[Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    aget-object p2, v1, p2

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->getArCos()D

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->setArCos(D)V

    .line 157
    iget-object p2, p0, Lcom/powervision/base/nationmap/utils/Melkman;->pointArray:[Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    aget-object p2, p2, p1

    invoke-virtual {v0}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->getX()D

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->setX(D)V

    .line 158
    iget-object p2, p0, Lcom/powervision/base/nationmap/utils/Melkman;->pointArray:[Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    aget-object p2, p2, p1

    invoke-virtual {v0}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->getY()D

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->setY(D)V

    .line 159
    iget-object p2, p0, Lcom/powervision/base/nationmap/utils/Melkman;->pointArray:[Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    aget-object p1, p2, p1

    invoke-virtual {v0}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->getArCos()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->setArCos(D)V

    return-void
.end method


# virtual methods
.method public getTubaoPoint()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/powervision/base/nationmap/model/NationLatLng;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/powervision/base/nationmap/utils/Melkman;->pointArray:[Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->getY()D

    move-result-wide v2

    const/4 v0, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 51
    :goto_0
    iget v6, p0, Lcom/powervision/base/nationmap/utils/Melkman;->N:I

    if-ge v4, v6, :cond_1

    .line 52
    iget-object v6, p0, Lcom/powervision/base/nationmap/utils/Melkman;->pointArray:[Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->getY()D

    move-result-wide v6

    cmpg-double v8, v6, v2

    if-gez v8, :cond_0

    .line 53
    iget-object v2, p0, Lcom/powervision/base/nationmap/utils/Melkman;->pointArray:[Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->getY()D

    move-result-wide v2

    move v5, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 57
    :cond_1
    invoke-direct {p0, v1, v5}, Lcom/powervision/base/nationmap/utils/Melkman;->swap(II)V

    const/4 v2, 0x1

    .line 60
    :goto_1
    iget v3, p0, Lcom/powervision/base/nationmap/utils/Melkman;->N:I

    if-ge v2, v3, :cond_2

    .line 61
    iget-object v3, p0, Lcom/powervision/base/nationmap/utils/Melkman;->pointArray:[Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    aget-object v3, v3, v2

    invoke-direct {p0, v2}, Lcom/powervision/base/nationmap/utils/Melkman;->angle(I)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->setArCos(D)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    sub-int/2addr v3, v0

    .line 64
    invoke-direct {p0, v0, v3}, Lcom/powervision/base/nationmap/utils/Melkman;->quickSort(II)V

    .line 66
    iget v2, p0, Lcom/powervision/base/nationmap/utils/Melkman;->N:I

    add-int/lit8 v3, v2, -0x1

    .line 68
    iget-object v4, p0, Lcom/powervision/base/nationmap/utils/Melkman;->D:[I

    add-int/lit8 v5, v2, 0x1

    aput v1, v4, v2

    add-int/lit8 v2, v5, 0x1

    .line 69
    aput v0, v4, v5

    const/4 v4, 0x2

    const/4 v5, 0x2

    .line 72
    :goto_2
    iget v6, p0, Lcom/powervision/base/nationmap/utils/Melkman;->N:I

    const-wide/16 v7, 0x0

    if-ge v5, v6, :cond_4

    .line 73
    iget-object v6, p0, Lcom/powervision/base/nationmap/utils/Melkman;->pointArray:[Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    iget-object v9, p0, Lcom/powervision/base/nationmap/utils/Melkman;->D:[I

    add-int/lit8 v10, v2, -0x2

    aget v10, v9, v10

    aget-object v10, v6, v10

    add-int/lit8 v11, v2, -0x1

    aget v9, v9, v11

    aget-object v9, v6, v9

    aget-object v6, v6, v5

    invoke-direct {p0, v10, v9, v6}, Lcom/powervision/base/nationmap/utils/Melkman;->isLeft(Lcom/powervision/base/nationmap/utils/MelkmanPoint;Lcom/powervision/base/nationmap/utils/MelkmanPoint;Lcom/powervision/base/nationmap/utils/MelkmanPoint;)D

    move-result-wide v9

    cmpl-double v6, v9, v7

    if-eqz v6, :cond_3

    goto :goto_3

    .line 76
    :cond_3
    iget-object v6, p0, Lcom/powervision/base/nationmap/utils/Melkman;->D:[I

    aput v5, v6, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 79
    :cond_4
    :goto_3
    iget-object v6, p0, Lcom/powervision/base/nationmap/utils/Melkman;->D:[I

    add-int/lit8 v9, v3, -0x1

    aput v5, v6, v3

    add-int/lit8 v3, v2, 0x1

    .line 80
    aput v5, v6, v2

    .line 83
    iget-object v2, p0, Lcom/powervision/base/nationmap/utils/Melkman;->pointArray:[Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    iget v10, p0, Lcom/powervision/base/nationmap/utils/Melkman;->N:I

    aget v11, v6, v10

    aget-object v11, v2, v11

    add-int/lit8 v12, v10, 0x1

    aget v12, v6, v12

    aget-object v12, v2, v12

    add-int/2addr v10, v4

    aget v4, v6, v10

    aget-object v2, v2, v4

    invoke-direct {p0, v11, v12, v2}, Lcom/powervision/base/nationmap/utils/Melkman;->isLeft(Lcom/powervision/base/nationmap/utils/MelkmanPoint;Lcom/powervision/base/nationmap/utils/MelkmanPoint;Lcom/powervision/base/nationmap/utils/MelkmanPoint;)D

    move-result-wide v10

    cmpg-double v2, v10, v7

    if-gez v2, :cond_5

    .line 85
    iget-object v2, p0, Lcom/powervision/base/nationmap/utils/Melkman;->D:[I

    iget v4, p0, Lcom/powervision/base/nationmap/utils/Melkman;->N:I

    aget v6, v2, v4

    add-int/lit8 v10, v4, 0x1

    .line 86
    aget v10, v2, v10

    aput v10, v2, v4

    add-int/2addr v4, v0

    .line 87
    aput v6, v2, v4

    :cond_5
    add-int/2addr v5, v0

    .line 90
    :goto_4
    iget v2, p0, Lcom/powervision/base/nationmap/utils/Melkman;->N:I

    if-ge v5, v2, :cond_9

    .line 92
    iget-object v2, p0, Lcom/powervision/base/nationmap/utils/Melkman;->pointArray:[Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    iget-object v4, p0, Lcom/powervision/base/nationmap/utils/Melkman;->D:[I

    add-int/lit8 v6, v3, -0x2

    aget v6, v4, v6

    aget-object v6, v2, v6

    add-int/lit8 v10, v3, -0x1

    aget v4, v4, v10

    aget-object v4, v2, v4

    aget-object v2, v2, v5

    invoke-direct {p0, v6, v4, v2}, Lcom/powervision/base/nationmap/utils/Melkman;->isLeft(Lcom/powervision/base/nationmap/utils/MelkmanPoint;Lcom/powervision/base/nationmap/utils/MelkmanPoint;Lcom/powervision/base/nationmap/utils/MelkmanPoint;)D

    move-result-wide v10

    cmpl-double v2, v10, v7

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/powervision/base/nationmap/utils/Melkman;->pointArray:[Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    iget-object v4, p0, Lcom/powervision/base/nationmap/utils/Melkman;->D:[I

    add-int/lit8 v6, v9, 0x1

    aget v6, v4, v6

    aget-object v6, v2, v6

    add-int/lit8 v10, v9, 0x2

    aget v4, v4, v10

    aget-object v4, v2, v4

    aget-object v2, v2, v5

    .line 94
    invoke-direct {p0, v6, v4, v2}, Lcom/powervision/base/nationmap/utils/Melkman;->isLeft(Lcom/powervision/base/nationmap/utils/MelkmanPoint;Lcom/powervision/base/nationmap/utils/MelkmanPoint;Lcom/powervision/base/nationmap/utils/MelkmanPoint;)D

    move-result-wide v10

    cmpl-double v2, v10, v7

    if-lez v2, :cond_6

    goto :goto_7

    .line 100
    :cond_6
    :goto_5
    iget-object v2, p0, Lcom/powervision/base/nationmap/utils/Melkman;->pointArray:[Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    iget-object v4, p0, Lcom/powervision/base/nationmap/utils/Melkman;->D:[I

    add-int/lit8 v6, v3, -0x2

    aget v6, v4, v6

    aget-object v6, v2, v6

    add-int/lit8 v10, v3, -0x1

    aget v4, v4, v10

    aget-object v4, v2, v4

    aget-object v2, v2, v5

    invoke-direct {p0, v6, v4, v2}, Lcom/powervision/base/nationmap/utils/Melkman;->isLeft(Lcom/powervision/base/nationmap/utils/MelkmanPoint;Lcom/powervision/base/nationmap/utils/MelkmanPoint;Lcom/powervision/base/nationmap/utils/MelkmanPoint;)D

    move-result-wide v10

    cmpg-double v2, v10, v7

    if-gtz v2, :cond_7

    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 104
    :cond_7
    iget-object v2, p0, Lcom/powervision/base/nationmap/utils/Melkman;->D:[I

    add-int/lit8 v4, v3, 0x1

    aput v5, v2, v3

    .line 107
    :goto_6
    iget-object v2, p0, Lcom/powervision/base/nationmap/utils/Melkman;->pointArray:[Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    iget-object v3, p0, Lcom/powervision/base/nationmap/utils/Melkman;->D:[I

    add-int/lit8 v6, v9, 0x1

    aget v10, v3, v6

    aget-object v10, v2, v10

    add-int/lit8 v11, v9, 0x2

    aget v3, v3, v11

    aget-object v3, v2, v3

    aget-object v2, v2, v5

    invoke-direct {p0, v10, v3, v2}, Lcom/powervision/base/nationmap/utils/Melkman;->isLeft(Lcom/powervision/base/nationmap/utils/MelkmanPoint;Lcom/powervision/base/nationmap/utils/MelkmanPoint;Lcom/powervision/base/nationmap/utils/MelkmanPoint;)D

    move-result-wide v2

    cmpg-double v10, v2, v7

    if-gtz v10, :cond_8

    move v9, v6

    goto :goto_6

    .line 111
    :cond_8
    iget-object v2, p0, Lcom/powervision/base/nationmap/utils/Melkman;->D:[I

    add-int/lit8 v3, v9, -0x1

    aput v5, v2, v9

    move v9, v3

    move v3, v4

    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    :cond_9
    sub-int v2, v3, v9

    sub-int/2addr v2, v0

    .line 115
    new-array v2, v2, [Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    .line 116
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    add-int/2addr v9, v0

    :goto_8
    add-int/lit8 v5, v3, -0x1

    if-ge v9, v5, :cond_a

    .line 119
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/powervision/base/nationmap/utils/Melkman;->pointArray:[Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    iget-object v8, p0, Lcom/powervision/base/nationmap/utils/Melkman;->D:[I

    aget v8, v8, v9

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->getX()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/powervision/base/nationmap/utils/Melkman;->pointArray:[Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    iget-object v8, p0, Lcom/powervision/base/nationmap/utils/Melkman;->D:[I

    aget v8, v8, v9

    aget-object v7, v7, v8

    .line 120
    invoke-virtual {v7}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->getY()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 119
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v1, 0x1

    .line 121
    iget-object v6, p0, Lcom/powervision/base/nationmap/utils/Melkman;->pointArray:[Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    iget-object v7, p0, Lcom/powervision/base/nationmap/utils/Melkman;->D:[I

    aget v8, v7, v9

    aget-object v8, v6, v8

    aput-object v8, v2, v1

    .line 122
    new-instance v1, Lcom/powervision/base/nationmap/model/NationLatLng;

    aget v7, v7, v9

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->getX()D

    move-result-wide v6

    iget-object v8, p0, Lcom/powervision/base/nationmap/utils/Melkman;->pointArray:[Lcom/powervision/base/nationmap/utils/MelkmanPoint;

    iget-object v10, p0, Lcom/powervision/base/nationmap/utils/Melkman;->D:[I

    aget v10, v10, v9

    aget-object v8, v8, v10

    invoke-virtual {v8}, Lcom/powervision/base/nationmap/utils/MelkmanPoint;->getY()D

    move-result-wide v10

    invoke-direct {v1, v6, v7, v10, v11}, Lcom/powervision/base/nationmap/model/NationLatLng;-><init>(DD)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move v1, v5

    goto :goto_8

    :cond_a
    return-object v4
.end method
