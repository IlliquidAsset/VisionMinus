.class Lcom/powervision/sdk/Ap03Manager$13;
.super Ljava/lang/Object;
.source "Ap03Manager.java"

# interfaces
.implements Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnGimbalStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/sdk/Ap03Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/sdk/Ap03Manager;


# direct methods
.method constructor <init>(Lcom/powervision/sdk/Ap03Manager;)V
    .locals 0

    .line 638
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager$13;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGimbalStatus([I)V
    .locals 6

    const/4 v0, 0x0

    .line 641
    :goto_0
    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager$13;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v1}, Lcom/powervision/sdk/Ap03Manager;->access$1300(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    const/high16 v3, 0x42c80000    # 100.0f

    if-ge v0, v1, :cond_0

    .line 642
    iget-object v1, p0, Lcom/powervision/sdk/Ap03Manager$13;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v1}, Lcom/powervision/sdk/Ap03Manager;->access$1300(Lcom/powervision/sdk/Ap03Manager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powervision/sdk/callback/Ap03GimbalAttitudeListener;

    aget v2, p1, v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    const/4 v4, 0x3

    aget v4, p1, v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    const/4 v5, 0x5

    aget v5, p1, v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-interface {v1, v2, v4, v5}, Lcom/powervision/sdk/callback/Ap03GimbalAttitudeListener;->getGimbalAttitude(FFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 645
    :cond_0
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object v0

    aget p1, p1, v2

    int-to-float p1, p1

    div-float/2addr p1, v3

    invoke-virtual {v0, p1}, Lcom/powervision/base/utils/FlightLogUtil;->setGimbalPitchAngle(F)V

    return-void
.end method
