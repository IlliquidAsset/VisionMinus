.class public Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;
.super Lcom/powervision/base/base/BaseFragment;
.source "AirCraftLapseTrailSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LapseOrderSelectListener;,
        Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LapseSelectListener;,
        Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LengthAdapter;,
        Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$IntervalAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TrailSettingFragment"


# instance fields
.field private currentInterval:I

.field private currentLength:I

.field private hasAutoMoved:Z

.field private intervalAdapter:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$IntervalAdapter;

.field private intervalMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private lapseShootingInterval:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lapseVideoLength:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lengthAdapter:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LengthAdapter;

.field private matchMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private orderSelectListener:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LapseOrderSelectListener;

.field private orders:[Ljava/lang/String;

.field private selectListener:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LapseSelectListener;

.field tempIntervalMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private tempLapseShootingInterval:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tempLapseVideoLength:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field tempLengthMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private tempMatchMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private videoLengthMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private wheelInterval:Lcom/powervision/base/views/widget/WheelView;

.field private wheelOrder:Lcom/powervision/base/views/widget/WheelView;

.field private wheelVideoLength:Lcom/powervision/base/views/widget/WheelView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    const/4 v0, 0x2

    .line 31
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->currentLength:I

    const/4 v0, 0x1

    .line 32
    iput v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->currentInterval:I

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->hasAutoMoved:Z

    return-void
.end method

.method static synthetic access$000(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)[Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->orders:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LapseOrderSelectListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->orderSelectListener:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LapseOrderSelectListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)Ljava/util/HashMap;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->videoLengthMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)Lcom/powervision/base/views/widget/WheelView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->wheelVideoLength:Lcom/powervision/base/views/widget/WheelView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)Lcom/powervision/base/views/widget/WheelView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->wheelInterval:Lcom/powervision/base/views/widget/WheelView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;D)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->findMatchPair(D)V

    return-void
.end method

.method static synthetic access$200(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->currentInterval:I

    return p0
.end method

.method static synthetic access$202(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->currentInterval:I

    return p1
.end method

.method static synthetic access$300(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->lapseShootingInterval:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->hasAutoMoved:Z

    return p0
.end method

.method static synthetic access$402(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->hasAutoMoved:Z

    return p1
.end method

.method static synthetic access$500(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->currentLength:I

    return p0
.end method

.method static synthetic access$502(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->currentLength:I

    return p1
.end method

.method static synthetic access$600(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LapseSelectListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->selectListener:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LapseSelectListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LengthAdapter;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->lengthAdapter:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LengthAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->lapseVideoLength:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$902(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->lapseVideoLength:Ljava/util/List;

    return-object p1
.end method

.method private findMatchPair(D)V
    .locals 12

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findMatchPair: totalDistance = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrailSettingFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->tempIntervalMap:Ljava/util/Map;

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->tempLengthMap:Ljava/util/Map;

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 213
    :goto_0
    iget-object v3, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->lapseShootingInterval:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, ""

    const/high16 v5, 0x42b40000    # 90.0f

    if-ge v2, v3, :cond_3

    .line 214
    iget-object v3, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->lapseShootingInterval:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 215
    iget-object v6, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->videoLengthMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 216
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->tempLapseVideoLength:Ljava/util/List;

    const/4 v7, 0x0

    .line 217
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 218
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v9, v3

    mul-float v9, v9, v5

    int-to-float v10, v8

    mul-float v9, v9, v10

    float-to-double v9, v9

    cmpl-double v11, v9, p1

    if-ltz v11, :cond_0

    .line 220
    iget-object v9, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->tempLapseVideoLength:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 223
    :cond_1
    iget-object v5, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->tempLapseVideoLength:Ljava/util/List;

    invoke-static {v5}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 224
    iget-object v5, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->tempIntervalMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->tempLapseVideoLength:Ljava/util/List;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 229
    :goto_2
    iget-object v3, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->lapseVideoLength:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 230
    iget-object v3, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->lapseVideoLength:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 231
    iget-object v6, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->intervalMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 232
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->tempLapseShootingInterval:Ljava/util/List;

    const/4 v7, 0x0

    .line 233
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 234
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v9, v8

    mul-float v9, v9, v5

    int-to-float v10, v3

    mul-float v9, v9, v10

    float-to-double v9, v9

    cmpl-double v11, v9, p1

    if-ltz v11, :cond_4

    .line 236
    iget-object v9, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->tempLapseShootingInterval:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 239
    :cond_5
    iget-object v6, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->tempLapseShootingInterval:Ljava/util/List;

    invoke-static {v6}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 240
    iget-object v6, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->tempLengthMap:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->tempLapseShootingInterval:Ljava/util/List;

    invoke-interface {v6, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 244
    :cond_7
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->tempIntervalMap:Ljava/util/Map;

    invoke-static {p1}, Lcom/powervision/base/utils/StringUtils;->sortMapByKey(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->lapseShootingInterval:Ljava/util/List;

    .line 245
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->tempLengthMap:Ljava/util/Map;

    invoke-static {p1}, Lcom/powervision/base/utils/StringUtils;->sortMapByKey(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->lapseVideoLength:Ljava/util/List;

    .line 246
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "findMatchPair: tempLengthMap = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->tempLengthMap:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "findMatchPair: tempIntervalMap = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->tempIntervalMap:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->intervalAdapter:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$IntervalAdapter;

    if-nez p1, :cond_8

    .line 254
    new-instance p1, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$IntervalAdapter;

    iget-object p2, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->lapseShootingInterval:Ljava/util/List;

    invoke-direct {p1, p0, p2}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$IntervalAdapter;-><init>(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;Ljava/util/List;)V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->intervalAdapter:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$IntervalAdapter;

    goto :goto_4

    .line 256
    :cond_8
    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$IntervalAdapter;->access$1400(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$IntervalAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 257
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->intervalAdapter:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$IntervalAdapter;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$IntervalAdapter;->access$1400(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$IntervalAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->lapseShootingInterval:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 258
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->intervalAdapter:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$IntervalAdapter;

    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$IntervalAdapter;->notifyDataSetChanged()V

    .line 259
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->wheelInterval:Lcom/powervision/base/views/widget/WheelView;

    invoke-virtual {p1, v0}, Lcom/powervision/base/views/widget/WheelView;->setCurrentItem(I)V

    :goto_4
    return-void
.end method

.method public static newInstance()Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;
    .locals 1

    .line 43
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;

    invoke-direct {v0}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;-><init>()V

    return-object v0
.end method

.method private prepareAdapterData()V
    .locals 3

    .line 81
    invoke-static {}, Lcom/powervision/aircraft/utils/AirLapseDataUtil;->getLapseShootingInterval()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->lapseShootingInterval:Ljava/util/List;

    .line 82
    invoke-static {}, Lcom/powervision/aircraft/utils/AirLapseDataUtil;->getLapseVideoLength()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->lapseVideoLength:Ljava/util/List;

    .line 83
    invoke-static {}, Lcom/powervision/aircraft/utils/AirLapseDataUtil;->getVideoLengthMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->matchMap:Ljava/util/HashMap;

    .line 84
    invoke-static {}, Lcom/powervision/aircraft/utils/AirLapseDataUtil;->getVideoLengthMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->videoLengthMap:Ljava/util/HashMap;

    .line 85
    invoke-static {}, Lcom/powervision/aircraft/utils/AirLapseDataUtil;->getIntervalMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->intervalMap:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->tempLapseShootingInterval:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->tempLapseVideoLength:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->tempMatchMap:Ljava/util/HashMap;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 89
    sget v1, Lcom/powervision/aircraft/R$string;->AP03_AI_95_4:I

    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/powervision/aircraft/R$string;->AP03_AI_95_5:I

    invoke-virtual {p0, v1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->orders:[Ljava/lang/String;

    .line 90
    invoke-static {}, Lcom/powervision/base/utils/LanguageUtils;->getServiceLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->wheelOrder:Lcom/powervision/base/views/widget/WheelView;

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v1}, Lcom/powervision/base/utils/DensityUtils;->dp2px(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/widget/WheelView;->setItemSize(I)V

    :cond_0
    return-void
.end method

.method private setAdapter()V
    .locals 2

    .line 61
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$IntervalAdapter;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->lapseShootingInterval:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$IntervalAdapter;-><init>(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->intervalAdapter:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$IntervalAdapter;

    .line 62
    new-instance v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LengthAdapter;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->lapseVideoLength:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LengthAdapter;-><init>(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->lengthAdapter:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LengthAdapter;

    .line 63
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->wheelOrder:Lcom/powervision/base/views/widget/WheelView;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$1;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$1;-><init>(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/widget/WheelView;->setAdapter(Lcom/powervision/base/views/widget/WheelView$WheelAdapter;)V

    .line 75
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->wheelInterval:Lcom/powervision/base/views/widget/WheelView;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->intervalAdapter:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$IntervalAdapter;

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/widget/WheelView;->setAdapter(Lcom/powervision/base/views/widget/WheelView$WheelAdapter;)V

    .line 77
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->wheelVideoLength:Lcom/powervision/base/views/widget/WheelView;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->lengthAdapter:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LengthAdapter;

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/widget/WheelView;->setAdapter(Lcom/powervision/base/views/widget/WheelView$WheelAdapter;)V

    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 48
    sget v0, Lcom/powervision/aircraft/R$layout;->aircraft_trail_setting_fragment:I

    return v0
.end method

.method protected initData()V
    .locals 3

    .line 177
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    const-string v2, "lapse_interval"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$5;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$5;-><init>(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)V

    invoke-virtual {v0, p0, v1}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 185
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    const-string v2, "video_length"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$6;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$6;-><init>(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)V

    invoke-virtual {v0, p0, v1}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 193
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v0

    const-class v1, Ljava/lang/Double;

    const-string v2, "match_pair"

    invoke-virtual {v0, v2, v1}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$7;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$7;-><init>(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)V

    invoke-virtual {v0, p0, v1}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 53
    sget p1, Lcom/powervision/aircraft/R$id;->wv_shooting_order:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/views/widget/WheelView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->wheelOrder:Lcom/powervision/base/views/widget/WheelView;

    .line 54
    sget p1, Lcom/powervision/aircraft/R$id;->wv_capture_interval:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/views/widget/WheelView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->wheelInterval:Lcom/powervision/base/views/widget/WheelView;

    .line 55
    sget p1, Lcom/powervision/aircraft/R$id;->wv_video_length:I

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/powervision/base/views/widget/WheelView;

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->wheelVideoLength:Lcom/powervision/base/views/widget/WheelView;

    .line 56
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->prepareAdapterData()V

    .line 57
    invoke-direct {p0}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->setAdapter()V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 98
    invoke-super {p0}, Lcom/powervision/base/base/BaseFragment;->setListener()V

    .line 101
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->wheelOrder:Lcom/powervision/base/views/widget/WheelView;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$2;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$2;-><init>(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/widget/WheelView;->setOnItemSelectedListener(Lcom/powervision/base/views/widget/WheelView$OnItemSelectedListener;)V

    .line 110
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->wheelInterval:Lcom/powervision/base/views/widget/WheelView;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$3;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$3;-><init>(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/widget/WheelView;->setOnItemSelectedListener(Lcom/powervision/base/views/widget/WheelView$OnItemSelectedListener;)V

    .line 147
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->wheelVideoLength:Lcom/powervision/base/views/widget/WheelView;

    new-instance v1, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$4;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$4;-><init>(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/widget/WheelView;->setOnItemSelectedListener(Lcom/powervision/base/views/widget/WheelView$OnItemSelectedListener;)V

    .line 169
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->wheelInterval:Lcom/powervision/base/views/widget/WheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/widget/WheelView;->setCurrentItem(I)V

    .line 170
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->wheelVideoLength:Lcom/powervision/base/views/widget/WheelView;

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/widget/WheelView;->setCurrentItem(I)V

    .line 171
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->wheelOrder:Lcom/powervision/base/views/widget/WheelView;

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/widget/WheelView;->setCurrentItem(I)V

    return-void
.end method

.method public setOrderSelectListener(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LapseOrderSelectListener;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->orderSelectListener:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LapseOrderSelectListener;

    return-void
.end method

.method public setSelectListener(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LapseSelectListener;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment;->selectListener:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailSettingFragment$LapseSelectListener;

    return-void
.end method
