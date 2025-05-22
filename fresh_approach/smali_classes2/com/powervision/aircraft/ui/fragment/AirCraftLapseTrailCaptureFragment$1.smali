.class Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;
.super Ljava/lang/Object;
.source "AirCraftLapseTrailCaptureFragment.java"

# interfaces
.implements Lcom/powervision/aircraft/adapter/TrailCaptureAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddClick(I)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 128
    iget-object v2, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/lapse/data/NedPositionInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 131
    :cond_0
    new-instance v2, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;

    invoke-direct {v2}, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;-><init>()V

    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nedPositionInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v5}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/lapse/data/NedPositionInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/powervision/aircraft/lapse/data/NedPositionInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 134
    iput v1, v2, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->index:I

    .line 135
    iget-object v4, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v4}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/lapse/data/NedPositionInfo;

    move-result-object v4

    iget v4, v4, Lcom/powervision/aircraft/lapse/data/NedPositionInfo;->x:F

    iput v4, v2, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->x:F

    .line 136
    iget-object v4, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v4}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/lapse/data/NedPositionInfo;

    move-result-object v4

    iget v4, v4, Lcom/powervision/aircraft/lapse/data/NedPositionInfo;->y:F

    iput v4, v2, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->y:F

    .line 137
    iget-object v4, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v4}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/lapse/data/NedPositionInfo;

    move-result-object v4

    iget v4, v4, Lcom/powervision/aircraft/lapse/data/NedPositionInfo;->z:F

    iput v4, v2, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->z:F

    .line 138
    iget-object v4, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v4}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/lapse/data/AngleInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/powervision/aircraft/lapse/data/AngleInfo;->getYaw()F

    move-result v4

    iput v4, v2, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->yaw:F

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-nez v1, :cond_2

    .line 141
    iget-object v6, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v6}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$300(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getTextureView()Landroid/view/TextureView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 142
    new-instance v7, Lcom/powervision/aircraft/model/bean/TrailCaptureData;

    add-int/lit8 v8, v1, 0x1

    invoke-direct {v7, v8, v6, v3}, Lcom/powervision/aircraft/model/bean/TrailCaptureData;-><init>(ILandroid/graphics/Bitmap;I)V

    .line 143
    iget-object v6, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v6}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$400(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;

    move-result-object v6

    invoke-virtual {v6, v7, v1}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;->addData(Lcom/powervision/aircraft/model/bean/TrailCaptureData;I)V

    .line 144
    iget-object v1, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    const-wide/16 v6, 0x0

    invoke-static {v1, v6, v7}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$502(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;D)D

    .line 146
    iget-object v1, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v1, v4}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$602(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;I)I

    .line 147
    iget-object v1, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$700(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$SuitableListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$700(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$SuitableListener;

    move-result-object v1

    invoke-interface {v1, v4, v3}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$SuitableListener;->suitable(II)V

    .line 150
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7b2c\u4e00\u4e2a\u70b9 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/powervision/base/utils/WriteTxtUtil;->writeTxtToFile(Ljava/lang/String;)V

    .line 151
    iget-object v1, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$800(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v1, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$900(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/lapse/data/LapseTrailData;

    move-result-object v1

    iget-object v2, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$800(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/powervision/aircraft/lapse/data/LapseTrailData;->data:Ljava/util/List;

    return v5

    .line 155
    :cond_2
    iget-object v6, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v6}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$800(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 156
    iget-object v7, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    .line 157
    invoke-static {v7}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$500(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)D

    move-result-wide v8

    iget-object v10, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v10}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$800(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Ljava/util/List;

    move-result-object v10

    sub-int/2addr v6, v5

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;

    iget v11, v10, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->x:F

    iget-object v10, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    .line 158
    invoke-static {v10}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$800(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;

    iget v12, v10, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->y:F

    iget-object v10, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v10}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$800(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;

    iget v13, v6, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->z:F

    iget v14, v2, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->x:F

    iget v15, v2, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->y:F

    iget v6, v2, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;->z:F

    move/from16 v16, v6

    .line 157
    invoke-static/range {v11 .. v16}, Lcom/powervision/map/utils/PositionUtil;->calculateDistance(FFFFFF)F

    move-result v6

    float-to-double v10, v6

    add-double/2addr v8, v10

    .line 156
    invoke-static {v7, v8, v9}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$502(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;D)D

    const-wide v6, 0x40ac200000000000L    # 3600.0

    .line 164
    iget-object v8, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v8}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$500(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)D

    move-result-wide v8

    cmpg-double v10, v6, v8

    if-gez v10, :cond_3

    .line 165
    iget-object v1, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-virtual {v1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    sget v4, Lcom/powervision/aircraft/R$string;->AP03_AI_95_12:I

    invoke-virtual {v2, v4}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return v3

    .line 172
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onAddClick: current_status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v7}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$600(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AirCraftLapseTrailCaptu"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v6, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v6}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$600(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)I

    move-result v6

    if-ne v6, v5, :cond_4

    .line 174
    iget-object v1, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$300(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    move-result-object v1

    iget-object v2, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    sget v4, Lcom/powervision/aircraft/R$string;->AP03_AI_95_15:I

    invoke-virtual {v2, v4}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return v3

    .line 176
    :cond_4
    iget-object v6, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v6}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$600(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)I

    move-result v6

    if-ne v6, v4, :cond_5

    .line 177
    iget-object v1, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$300(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    move-result-object v1

    iget-object v2, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    sget v4, Lcom/powervision/aircraft/R$string;->AP03_AI_95_14:I

    invoke-virtual {v2, v4}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return v3

    .line 181
    :cond_5
    iget-object v6, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v6}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$800(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v2, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$900(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/lapse/data/LapseTrailData;

    move-result-object v2

    iget-object v6, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v6}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$800(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v2, Lcom/powervision/aircraft/lapse/data/LapseTrailData;->data:Ljava/util/List;

    .line 184
    iget-object v2, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$000(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$OnSelectDataChangeListener;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 185
    iget-object v2, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$000(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$OnSelectDataChangeListener;

    move-result-object v2

    iget-object v6, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v6}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$900(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/lapse/data/LapseTrailData;

    move-result-object v6

    iget-object v7, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v7}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$500(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)D

    move-result-wide v7

    invoke-interface {v2, v6, v7, v8}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$OnSelectDataChangeListener;->getTrailData(Lcom/powervision/aircraft/lapse/data/LapseTrailData;D)V

    :cond_6
    const/high16 v2, 0x42b40000    # 90.0f

    .line 188
    iget-object v6, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v6}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$1000(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v2

    iget-object v2, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$1100(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)I

    move-result v2

    int-to-float v2, v2

    mul-float v6, v6, v2

    .line 190
    iget-object v2, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$500(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)D

    move-result-wide v7

    float-to-double v9, v6

    cmpg-double v2, v7, v9

    if-gtz v2, :cond_7

    .line 191
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v2

    const-class v6, Ljava/lang/Double;

    const-string v7, "total_distance"

    invoke-virtual {v2, v7, v6}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v2

    iget-object v6, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v6}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$500(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 194
    :cond_7
    invoke-static {}, Lcom/powervision/base/databus/LiveDataBusX;->getInstance()Lcom/powervision/base/databus/LiveDataBusX;

    move-result-object v2

    const-class v6, Ljava/lang/Double;

    const-string v7, "match_pair"

    invoke-virtual {v2, v7, v6}, Lcom/powervision/base/databus/LiveDataBusX;->with(Ljava/lang/String;Ljava/lang/Class;)Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;

    move-result-object v2

    iget-object v6, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v6}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$500(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/powervision/base/databus/LiveDataBusX$BusMutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 196
    :goto_0
    iget-object v2, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$300(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getTextureView()Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 197
    new-instance v6, Lcom/powervision/aircraft/model/bean/TrailCaptureData;

    add-int/lit8 v7, v1, 0x1

    invoke-direct {v6, v7, v2, v3}, Lcom/powervision/aircraft/model/bean/TrailCaptureData;-><init>(ILandroid/graphics/Bitmap;I)V

    .line 198
    iget-object v2, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$400(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;

    move-result-object v2

    invoke-virtual {v2, v6, v1}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;->addData(Lcom/powervision/aircraft/model/bean/TrailCaptureData;I)V

    .line 200
    iget-object v1, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v1, v4}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$602(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;I)I

    .line 201
    iget-object v1, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$700(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$SuitableListener;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 202
    iget-object v1, v0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$700(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$SuitableListener;

    move-result-object v1

    invoke-interface {v1, v4, v3}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$SuitableListener;->suitable(II)V

    :cond_8
    return v5
.end method

.method public onDeleteClick(I)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$400(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/aircraft/adapter/TrailCaptureAdapter;->deleteData(I)V

    .line 210
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$1200(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;I)V

    return-void
.end method

.method public onItemCountChange(I)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$000(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$OnSelectDataChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$000(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$OnSelectDataChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$OnSelectDataChangeListener;->countChange(I)V

    :cond_0
    return-void
.end method
