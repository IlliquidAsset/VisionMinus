.class public Lcom/powervision/base/utils/LotChinaUtil;
.super Ljava/lang/Object;
.source "LotChinaUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/utils/LotChinaUtil$Rectangle;
    }
.end annotation


# static fields
.field private static volatile lotChinaUtil:Lcom/powervision/base/utils/LotChinaUtil;


# instance fields
.field excludeRecangle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/base/utils/LotChinaUtil$Rectangle;",
            ">;"
        }
    .end annotation
.end field

.field regionRectangle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/base/utils/LotChinaUtil$Rectangle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/utils/LotChinaUtil;->regionRectangle:Ljava/util/List;

    .line 15
    new-instance v11, Lcom/powervision/base/utils/LotChinaUtil$Rectangle;

    const-wide v3, 0x40489c36113404eaL    # 49.2204

    const-wide v5, 0x4053dc8e8a71de6aL    # 79.4462

    const-wide v7, 0x404571e83e425aeeL    # 42.8899

    const-wide v9, 0x4058151eb851eb85L    # 96.33

    move-object v1, v11

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/powervision/base/utils/LotChinaUtil$Rectangle;-><init>(Lcom/powervision/base/utils/LotChinaUtil;DDDD)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v0, p0, Lcom/powervision/base/utils/LotChinaUtil;->regionRectangle:Ljava/util/List;

    new-instance v11, Lcom/powervision/base/utils/LotChinaUtil$Rectangle;

    const-wide v3, 0x404b121cac083127L    # 54.1415

    const-wide v5, 0x405b6bfb15b573ebL    # 109.6872

    const-wide v7, 0x4043afe5c91d14e4L    # 39.3742

    const-wide v9, 0x4060e001a36e2eb2L    # 135.0002

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/powervision/base/utils/LotChinaUtil$Rectangle;-><init>(Lcom/powervision/base/utils/LotChinaUtil;DDDD)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lcom/powervision/base/utils/LotChinaUtil;->regionRectangle:Ljava/util/List;

    new-instance v11, Lcom/powervision/base/utils/LotChinaUtil$Rectangle;

    const-wide v3, 0x404571e83e425aeeL    # 42.8899

    const-wide v5, 0x405247f972474539L    # 73.1246

    const-wide v7, 0x403d879a6b50b0f2L    # 29.5297

    const-wide v9, 0x405f092b1704ff43L    # 124.143255

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/powervision/base/utils/LotChinaUtil$Rectangle;-><init>(Lcom/powervision/base/utils/LotChinaUtil;DDDD)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lcom/powervision/base/utils/LotChinaUtil;->regionRectangle:Ljava/util/List;

    new-instance v11, Lcom/powervision/base/utils/LotChinaUtil$Rectangle;

    const-wide v3, 0x403d879a6b50b0f2L    # 29.5297

    const-wide v5, 0x4054bdfa43fe5c92L    # 82.9684

    const-wide v7, 0x403ab7f62b6ae7d5L    # 26.7186

    const-wide v9, 0x40584240b780346eL    # 97.0352

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/powervision/base/utils/LotChinaUtil$Rectangle;-><init>(Lcom/powervision/base/utils/LotChinaUtil;DDDD)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/powervision/base/utils/LotChinaUtil;->regionRectangle:Ljava/util/List;

    new-instance v11, Lcom/powervision/base/utils/LotChinaUtil$Rectangle;

    const-wide v5, 0x4058419e83e425afL    # 97.0253

    const-wide v7, 0x40346a0232096788L    # 20.414096

    const-wide v9, 0x405f178366516db1L    # 124.367395

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/powervision/base/utils/LotChinaUtil$Rectangle;-><init>(Lcom/powervision/base/utils/LotChinaUtil;DDDD)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lcom/powervision/base/utils/LotChinaUtil;->regionRectangle:Ljava/util/List;

    new-instance v11, Lcom/powervision/base/utils/LotChinaUtil$Rectangle;

    const-wide v3, 0x40346a0232096788L    # 20.414096

    const-wide v5, 0x405afe73647baa9bL    # 107.975793

    const-wide v7, 0x4031df1d60631727L    # 17.871542

    const-wide v9, 0x405bef9f666234a8L    # 111.744104

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/powervision/base/utils/LotChinaUtil$Rectangle;-><init>(Lcom/powervision/base/utils/LotChinaUtil;DDDD)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/base/utils/LotChinaUtil;->excludeRecangle:Ljava/util/List;

    .line 23
    new-instance v11, Lcom/powervision/base/utils/LotChinaUtil$Rectangle;

    const-wide v3, 0x4039660c282c6ef4L    # 25.398623

    const-wide v5, 0x405dfaf601797cc4L    # 119.921265

    const-wide v7, 0x4035c8f6273929edL    # 21.785006

    const-wide v9, 0x405e9fd801b43526L    # 122.497559

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/powervision/base/utils/LotChinaUtil$Rectangle;-><init>(Lcom/powervision/base/utils/LotChinaUtil;DDDD)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lcom/powervision/base/utils/LotChinaUtil;->excludeRecangle:Ljava/util/List;

    new-instance v11, Lcom/powervision/base/utils/LotChinaUtil$Rectangle;

    const-wide v3, 0x403648b439581062L    # 22.284

    const-wide v5, 0x4059775f6fd21ff3L    # 101.8652

    const-wide v7, 0x4034194af4f0d845L    # 20.0988

    const-wide v9, 0x405aaa8f5c28f5c3L    # 106.665

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/powervision/base/utils/LotChinaUtil$Rectangle;-><init>(Lcom/powervision/base/utils/LotChinaUtil;DDDD)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lcom/powervision/base/utils/LotChinaUtil;->excludeRecangle:Ljava/util/List;

    new-instance v11, Lcom/powervision/base/utils/LotChinaUtil$Rectangle;

    const-wide v3, 0x40358acd9e83e426L    # 21.5422

    const-wide v5, 0x405a9cf5c28f5c29L    # 106.4525

    const-wide v7, 0x40347ce075f6fd22L    # 20.4878

    const-wide v9, 0x405b034395810625L    # 108.051

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/powervision/base/utils/LotChinaUtil$Rectangle;-><init>(Lcom/powervision/base/utils/LotChinaUtil;DDDD)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lcom/powervision/base/utils/LotChinaUtil;->excludeRecangle:Ljava/util/List;

    new-instance v11, Lcom/powervision/base/utils/LotChinaUtil$Rectangle;

    const-wide v3, 0x404be8a3d70a3d71L    # 55.8175

    const-wide v5, 0x405b42113404ea4bL    # 109.0323

    const-wide v7, 0x404929b089a02752L    # 50.3257

    const-wide v9, 0x405dc820c49ba5e3L    # 119.127

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/powervision/base/utils/LotChinaUtil$Rectangle;-><init>(Lcom/powervision/base/utils/LotChinaUtil;DDDD)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, p0, Lcom/powervision/base/utils/LotChinaUtil;->excludeRecangle:Ljava/util/List;

    new-instance v11, Lcom/powervision/base/utils/LotChinaUtil$Rectangle;

    const-wide v5, 0x405fdd3c36113405L    # 127.4568

    const-wide v7, 0x4048c758e219652cL    # 49.5574

    const-wide v9, 0x406120b9f559b3d0L    # 137.0227

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/powervision/base/utils/LotChinaUtil$Rectangle;-><init>(Lcom/powervision/base/utils/LotChinaUtil;DDDD)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lcom/powervision/base/utils/LotChinaUtil;->excludeRecangle:Ljava/util/List;

    new-instance v11, Lcom/powervision/base/utils/LotChinaUtil$Rectangle;

    const-wide v3, 0x404672339c0ebee0L    # 44.8922

    const-wide v5, 0x40606884b5dcc63fL    # 131.2662

    const-wide v7, 0x404548db8bac710dL    # 42.5692

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/powervision/base/utils/LotChinaUtil$Rectangle;-><init>(Lcom/powervision/base/utils/LotChinaUtil;DDDD)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getInstance()Lcom/powervision/base/utils/LotChinaUtil;
    .locals 1

    .line 32
    sget-object v0, Lcom/powervision/base/utils/LotChinaUtil;->lotChinaUtil:Lcom/powervision/base/utils/LotChinaUtil;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/powervision/base/utils/LotChinaUtil;

    invoke-direct {v0}, Lcom/powervision/base/utils/LotChinaUtil;-><init>()V

    sput-object v0, Lcom/powervision/base/utils/LotChinaUtil;->lotChinaUtil:Lcom/powervision/base/utils/LotChinaUtil;

    .line 35
    :cond_0
    sget-object v0, Lcom/powervision/base/utils/LotChinaUtil;->lotChinaUtil:Lcom/powervision/base/utils/LotChinaUtil;

    return-object v0
.end method

.method private inRectangle(Lcom/powervision/base/utils/LotChinaUtil$Rectangle;DD)Z
    .locals 3

    .line 55
    iget-wide v0, p1, Lcom/powervision/base/utils/LotChinaUtil$Rectangle;->West:D

    cmpg-double v2, v0, p2

    if-gtz v2, :cond_0

    iget-wide v0, p1, Lcom/powervision/base/utils/LotChinaUtil$Rectangle;->East:D

    cmpl-double v2, v0, p2

    if-ltz v2, :cond_0

    iget-wide p2, p1, Lcom/powervision/base/utils/LotChinaUtil$Rectangle;->North:D

    cmpl-double v0, p2, p4

    if-ltz v0, :cond_0

    iget-wide p1, p1, Lcom/powervision/base/utils/LotChinaUtil$Rectangle;->South:D

    cmpg-double p3, p1, p4

    if-gtz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public isInsideChina(DD)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 40
    :goto_0
    iget-object v2, p0, Lcom/powervision/base/utils/LotChinaUtil;->regionRectangle:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 41
    iget-object v2, p0, Lcom/powervision/base/utils/LotChinaUtil;->regionRectangle:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/powervision/base/utils/LotChinaUtil$Rectangle;

    move-object v3, p0

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/powervision/base/utils/LotChinaUtil;->inRectangle(Lcom/powervision/base/utils/LotChinaUtil$Rectangle;DD)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    .line 42
    :goto_1
    iget-object v2, p0, Lcom/powervision/base/utils/LotChinaUtil;->excludeRecangle:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 43
    iget-object v2, p0, Lcom/powervision/base/utils/LotChinaUtil;->excludeRecangle:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/powervision/base/utils/LotChinaUtil$Rectangle;

    move-object v3, p0

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/powervision/base/utils/LotChinaUtil;->inRectangle(Lcom/powervision/base/utils/LotChinaUtil$Rectangle;DD)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method
