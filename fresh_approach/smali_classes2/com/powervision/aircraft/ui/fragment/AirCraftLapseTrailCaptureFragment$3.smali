.class Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$3;
.super Ljava/lang/Object;
.source "AirCraftLapseTrailCaptureFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/powervision/aircraft/lapse/data/AngleInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/powervision/aircraft/lapse/data/AngleInfo;)V
    .locals 9

    .line 266
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$202(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;Lcom/powervision/aircraft/lapse/data/AngleInfo;)Lcom/powervision/aircraft/lapse/data/AngleInfo;

    .line 268
    invoke-virtual {p1}, Lcom/powervision/aircraft/lapse/data/AngleInfo;->getYaw()F

    .line 271
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$800(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 274
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$800(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$800(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;

    .line 275
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$1300(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;)I

    move-result v0

    .line 276
    iget-object v2, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v2, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$1400(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;Lcom/powervision/aircraft/lapse/data/LapseTrailData$Trail;)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, v2, v4

    const-wide/16 v6, 0x0

    const/4 p1, 0x0

    cmpl-double v8, v4, v6

    if-ltz v8, :cond_2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    double-to-int v2, v2

    if-ltz v0, :cond_1

    if-gt v0, v2, :cond_1

    .line 283
    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v1, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$602(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;I)I

    .line 284
    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$700(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$SuitableListener;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 285
    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$700(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$SuitableListener;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$SuitableListener;->suitable(II)V

    goto :goto_0

    :cond_1
    if-le v0, v2, :cond_4

    .line 289
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {p1, v1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$602(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;I)I

    .line 290
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$700(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$SuitableListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 291
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$700(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$SuitableListener;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$SuitableListener;->suitable(II)V

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    .line 298
    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v1, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$602(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;I)I

    .line 299
    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$700(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$SuitableListener;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 300
    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$700(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$SuitableListener;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$SuitableListener;->suitable(II)V

    goto :goto_0

    .line 304
    :cond_3
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    const/4 v1, -0x1

    invoke-static {p1, v1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$602(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;I)I

    .line 305
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$700(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$SuitableListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 306
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;->access$700(Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment;)Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$SuitableListener;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$SuitableListener;->suitable(II)V

    :cond_4
    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 263
    check-cast p1, Lcom/powervision/aircraft/lapse/data/AngleInfo;

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$3;->onChanged(Lcom/powervision/aircraft/lapse/data/AngleInfo;)V

    return-void
.end method
