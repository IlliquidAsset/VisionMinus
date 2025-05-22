.class public Lcom/powervision/gcs/config/GuideConfig;
.super Ljava/lang/Object;
.source "GuideConfig.java"


# static fields
.field public static guideRes:[I

.field public static guideResArray:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 19
    sget v1, Lcom/powervision/gcs/R$raw;->level_c:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/powervision/gcs/R$raw;->level_n:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/powervision/gcs/R$raw;->level_u_1:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/powervision/gcs/R$raw;->fucn_line_sche:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/powervision/gcs/R$raw;->fucn_scan_area:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lcom/powervision/gcs/R$raw;->area_scan:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sget v1, Lcom/powervision/gcs/R$raw;->line_sche:I

    const/4 v2, 0x6

    aput v1, v0, v2

    sget v1, Lcom/powervision/gcs/R$mipmap;->w4_speed_too_low:I

    const/4 v2, 0x7

    aput v1, v0, v2

    sput-object v0, Lcom/powervision/gcs/config/GuideConfig;->guideRes:[I

    .line 20
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/powervision/gcs/config/GuideConfig;->guideResArray:Landroid/util/SparseIntArray;

    .line 23
    sget v1, Lcom/powervision/gcs/R$raw;->level_c:I

    const/16 v2, 0x14ac

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 24
    sget-object v0, Lcom/powervision/gcs/config/GuideConfig;->guideResArray:Landroid/util/SparseIntArray;

    sget v1, Lcom/powervision/gcs/R$raw;->level_n:I

    const/16 v2, 0x14ad

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 25
    sget-object v0, Lcom/powervision/gcs/config/GuideConfig;->guideResArray:Landroid/util/SparseIntArray;

    sget v1, Lcom/powervision/gcs/R$raw;->level_u_1:I

    const/16 v2, 0x14ae

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 26
    sget-object v0, Lcom/powervision/gcs/config/GuideConfig;->guideResArray:Landroid/util/SparseIntArray;

    sget v1, Lcom/powervision/gcs/R$raw;->fucn_line_sche:I

    const/16 v2, 0x14af

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 27
    sget-object v0, Lcom/powervision/gcs/config/GuideConfig;->guideResArray:Landroid/util/SparseIntArray;

    sget v1, Lcom/powervision/gcs/R$raw;->fucn_scan_area:I

    const/16 v2, 0x14b0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 28
    sget-object v0, Lcom/powervision/gcs/config/GuideConfig;->guideResArray:Landroid/util/SparseIntArray;

    sget v1, Lcom/powervision/gcs/R$raw;->area_scan:I

    const/16 v2, 0x14b1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 29
    sget-object v0, Lcom/powervision/gcs/config/GuideConfig;->guideResArray:Landroid/util/SparseIntArray;

    sget v1, Lcom/powervision/gcs/R$raw;->line_sche:I

    const/16 v2, 0x14b2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 30
    sget-object v0, Lcom/powervision/gcs/config/GuideConfig;->guideResArray:Landroid/util/SparseIntArray;

    sget v1, Lcom/powervision/gcs/R$mipmap;->w4_speed_too_low:I

    const/16 v2, 0x14b3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCloseEvent()Lcom/powervision/gcs/model/event/GuideEvent;
    .locals 2

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    new-instance v1, Lcom/powervision/gcs/model/event/GuideEvent;

    invoke-direct {v1, v0}, Lcom/powervision/gcs/model/event/GuideEvent;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public static getLevelC()Lcom/powervision/gcs/model/event/GuideEvent;
    .locals 3

    .line 39
    new-instance v0, Lcom/powervision/gcs/model/ship/GuideBean;

    invoke-direct {v0}, Lcom/powervision/gcs/model/ship/GuideBean;-><init>()V

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    sget v2, Lcom/powervision/gcs/R$raw;->level_c:I

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/model/ship/GuideBean;->setRawId(I)V

    .line 42
    sget v2, Lcom/powervision/gcs/R$string;->PVW4_ModeGuide_1:I

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/model/ship/GuideBean;->setTitleId(I)V

    .line 43
    sget v2, Lcom/powervision/gcs/R$string;->PVW4_ModeGuide_2:I

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/model/ship/GuideBean;->setTitleTipId(I)V

    const/4 v2, 0x1

    .line 44
    invoke-virtual {v0, v2}, Lcom/powervision/gcs/model/ship/GuideBean;->setShowTip(Z)V

    .line 45
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v0, Lcom/powervision/gcs/model/event/GuideEvent;

    invoke-direct {v0, v1}, Lcom/powervision/gcs/model/event/GuideEvent;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static getLevelN()Lcom/powervision/gcs/model/event/GuideEvent;
    .locals 3

    .line 55
    new-instance v0, Lcom/powervision/gcs/model/ship/GuideBean;

    invoke-direct {v0}, Lcom/powervision/gcs/model/ship/GuideBean;-><init>()V

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    sget v2, Lcom/powervision/gcs/R$raw;->level_n:I

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/model/ship/GuideBean;->setRawId(I)V

    .line 58
    sget v2, Lcom/powervision/gcs/R$string;->PVW4_ModeGuide_5:I

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/model/ship/GuideBean;->setTitleId(I)V

    .line 59
    sget v2, Lcom/powervision/gcs/R$string;->PVW4_ModeGuide_7:I

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/model/ship/GuideBean;->setTitleTipId(I)V

    const/4 v2, 0x1

    .line 60
    invoke-virtual {v0, v2}, Lcom/powervision/gcs/model/ship/GuideBean;->setShowTip(Z)V

    .line 61
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v0, Lcom/powervision/gcs/model/event/GuideEvent;

    invoke-direct {v0, v1}, Lcom/powervision/gcs/model/event/GuideEvent;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static getLevelU()Lcom/powervision/gcs/model/event/GuideEvent;
    .locals 4

    .line 71
    new-instance v0, Lcom/powervision/gcs/model/ship/GuideBean;

    invoke-direct {v0}, Lcom/powervision/gcs/model/ship/GuideBean;-><init>()V

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    sget v2, Lcom/powervision/gcs/R$raw;->level_u_1:I

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/model/ship/GuideBean;->setRawId(I)V

    .line 74
    sget v2, Lcom/powervision/gcs/R$string;->PVW4_ModeGuide_8:I

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/model/ship/GuideBean;->setTitleId(I)V

    .line 75
    sget v2, Lcom/powervision/gcs/R$string;->PVW4_ModeGuide_10:I

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/model/ship/GuideBean;->setTitleTipId(I)V

    const/4 v2, 0x1

    .line 76
    invoke-virtual {v0, v2}, Lcom/powervision/gcs/model/ship/GuideBean;->setShowTip(Z)V

    .line 77
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v0, Lcom/powervision/gcs/model/ship/GuideBean;

    invoke-direct {v0}, Lcom/powervision/gcs/model/ship/GuideBean;-><init>()V

    .line 79
    sget v3, Lcom/powervision/gcs/R$raw;->level_u_2:I

    invoke-virtual {v0, v3}, Lcom/powervision/gcs/model/ship/GuideBean;->setRawId(I)V

    .line 80
    sget v3, Lcom/powervision/gcs/R$string;->PVW4_ModeGuide_8:I

    invoke-virtual {v0, v3}, Lcom/powervision/gcs/model/ship/GuideBean;->setTitleId(I)V

    .line 81
    sget v3, Lcom/powervision/gcs/R$string;->PVW4_ModeGuide_11:I

    invoke-virtual {v0, v3}, Lcom/powervision/gcs/model/ship/GuideBean;->setTitleTipId(I)V

    .line 82
    sget v3, Lcom/powervision/gcs/R$string;->PVW4_ModeGuide_12:I

    invoke-virtual {v0, v3}, Lcom/powervision/gcs/model/ship/GuideBean;->setSubTitleTipId(I)V

    .line 83
    invoke-virtual {v0, v2}, Lcom/powervision/gcs/model/ship/GuideBean;->setShowTip(Z)V

    .line 84
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v0, Lcom/powervision/gcs/model/event/GuideEvent;

    invoke-direct {v0, v1}, Lcom/powervision/gcs/model/event/GuideEvent;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static getLineSche()Lcom/powervision/gcs/model/event/GuideEvent;
    .locals 3

    .line 94
    new-instance v0, Lcom/powervision/gcs/model/ship/GuideBean;

    invoke-direct {v0}, Lcom/powervision/gcs/model/ship/GuideBean;-><init>()V

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    sget v2, Lcom/powervision/gcs/R$raw;->fucn_line_sche:I

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/model/ship/GuideBean;->setRawId(I)V

    .line 97
    sget v2, Lcom/powervision/gcs/R$string;->PVW4_AI_1:I

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/model/ship/GuideBean;->setTitleId(I)V

    .line 98
    sget v2, Lcom/powervision/gcs/R$string;->PVW4_AI_2:I

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/model/ship/GuideBean;->setTitleTipId(I)V

    const/4 v2, 0x0

    .line 99
    invoke-virtual {v0, v2}, Lcom/powervision/gcs/model/ship/GuideBean;->setShowTip(Z)V

    .line 100
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v0, Lcom/powervision/gcs/model/event/GuideEvent;

    invoke-direct {v0, v1}, Lcom/powervision/gcs/model/event/GuideEvent;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static getScanArea()Lcom/powervision/gcs/model/event/GuideEvent;
    .locals 3

    .line 110
    new-instance v0, Lcom/powervision/gcs/model/ship/GuideBean;

    invoke-direct {v0}, Lcom/powervision/gcs/model/ship/GuideBean;-><init>()V

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    sget v2, Lcom/powervision/gcs/R$raw;->fucn_scan_area:I

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/model/ship/GuideBean;->setRawId(I)V

    .line 113
    sget v2, Lcom/powervision/gcs/R$string;->PVW4_AI_20:I

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/model/ship/GuideBean;->setTitleId(I)V

    .line 114
    sget v2, Lcom/powervision/gcs/R$string;->PVW4_AI_23:I

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/model/ship/GuideBean;->setTitleTipId(I)V

    const/4 v2, 0x0

    .line 115
    invoke-virtual {v0, v2}, Lcom/powervision/gcs/model/ship/GuideBean;->setShowTip(Z)V

    .line 116
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v0, Lcom/powervision/gcs/model/event/GuideEvent;

    invoke-direct {v0, v1}, Lcom/powervision/gcs/model/event/GuideEvent;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static getScanAreaMore()Lcom/powervision/gcs/model/event/GuideEvent;
    .locals 3

    .line 126
    new-instance v0, Lcom/powervision/gcs/model/ship/GuideBean;

    invoke-direct {v0}, Lcom/powervision/gcs/model/ship/GuideBean;-><init>()V

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    sget v2, Lcom/powervision/gcs/R$raw;->fucn_scan_area_more:I

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/model/ship/GuideBean;->setRawId(I)V

    .line 129
    sget v2, Lcom/powervision/gcs/R$string;->PVW4_AI_20:I

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/model/ship/GuideBean;->setTitleId(I)V

    .line 130
    sget v2, Lcom/powervision/gcs/R$string;->PVW4_AI_23:I

    invoke-virtual {v0, v2}, Lcom/powervision/gcs/model/ship/GuideBean;->setTitleTipId(I)V

    const/4 v2, 0x0

    .line 131
    invoke-virtual {v0, v2}, Lcom/powervision/gcs/model/ship/GuideBean;->setShowTip(Z)V

    .line 132
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v0, Lcom/powervision/gcs/model/event/GuideEvent;

    invoke-direct {v0, v1}, Lcom/powervision/gcs/model/event/GuideEvent;-><init>(Ljava/util/List;)V

    return-object v0
.end method
