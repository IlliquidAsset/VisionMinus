.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$13;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->onAircraftLocationChange(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V
    .locals 0

    .line 2201
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$13;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$AirCraftControlActivity$13()V
    .locals 1

    .line 2224
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$13;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$4100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setAirDL01NDAOpen()V

    return-void
.end method

.method public synthetic lambda$run$1$AirCraftControlActivity$13()V
    .locals 1

    .line 2233
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$13;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$4000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setAirDL01NDAClose()V

    return-void
.end method

.method public synthetic lambda$run$2$AirCraftControlActivity$13()V
    .locals 1

    .line 2241
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$13;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$3900(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setAirDL01NDAClose()V

    return-void
.end method

.method public run()V
    .locals 8

    .line 2204
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$13;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$2900(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2214
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8fdb\u5165\u4e4b\u524d===== countryCode ==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$13;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$3000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u589e\u7a0b\u6a21\u5f0f"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogTestStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2215
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$13;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$3000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$13;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$3000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8fdb\u5165\u4e86===== distanceValue ==="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$13;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$3100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "====hightValue  =="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$13;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$3200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "======numValue====="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$13;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$3300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogTestStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$13;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$3100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)F

    move-result v0

    const/high16 v2, 0x41200000    # 10.0f

    const/16 v3, 0x9

    const/high16 v4, 0x42480000    # 50.0f

    const-wide/16 v5, 0x12c

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$13;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$3200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 2220
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$13;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$3300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I

    move-result v0

    if-le v0, v3, :cond_2

    const-string v0, "===== \u5f00\u542f\u589e\u7a0b\u6a21\u5f0f ==="

    .line 2221
    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogTestStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2222
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$13;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$3400(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2223
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$13;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$3500(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setAirDL01Open()V

    .line 2224
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$13;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    move-result-object v0

    new-instance v7, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$13$HStf4ObOh85-et7P7ePPTx46xvA;

    invoke-direct {v7, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$13$HStf4ObOh85-et7P7ePPTx46xvA;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$13;)V

    invoke-virtual {v0, v7, v5, v6}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2228
    :cond_2
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$13;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$3100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$13;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$3200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 2229
    :cond_3
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$13;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$3300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)I

    move-result v0

    if-ge v0, v3, :cond_4

    const-string v0, "===== \u536b\u661f\u9897\u6570\u5c11\u5173\u95ed\u589e\u7a0b\u6a21\u5f0f ==="

    .line 2230
    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogTestStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2231
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$13;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$3400(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2232
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$13;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$3600(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setAirDL01Close()V

    .line 2233
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$13;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    move-result-object v0

    new-instance v2, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$13$ewiFQCu1s8QBCWv4ZSGS14w-020;

    invoke-direct {v2, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$13$ewiFQCu1s8QBCWv4ZSGS14w-020;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$13;)V

    invoke-virtual {v0, v2, v5, v6}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2237
    :cond_4
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$13;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$3100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)F

    move-result v0

    const/high16 v2, 0x42200000    # 40.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_6

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$13;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$3200(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)F

    move-result v0

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_6

    .line 2238
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$13;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$3400(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "===== \u8ddd\u79bb\u5c0f\u5173\u95ed\u589e\u7a0b\u6a21\u5f0f ==="

    .line 2239
    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogTestStuf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2240
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$13;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$3700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    invoke-virtual {v0}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setAirDL01Close()V

    .line 2241
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$13;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$700(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;

    move-result-object v0

    new-instance v1, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$13$7OEa3HjWkLk86L7X_YZAXVBNQpY;

    invoke-direct {v1, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$13$7OEa3HjWkLk86L7X_YZAXVBNQpY;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$13;)V

    invoke-virtual {v0, v1, v5, v6}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2246
    :cond_5
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$13;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$3800(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)Lcom/powervision/base/base/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;

    const/16 v1, 0xa

    const/4 v2, 0x0

    const-string v3, ""

    invoke-virtual {v0, v1, v3, v2}, Lcom/powervision/aircraft/presenter/impl/AircraftPresenter;->setGetAirDL01Value(ILjava/lang/String;I)V

    :cond_6
    :goto_0
    return-void
.end method
