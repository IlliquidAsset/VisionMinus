.class Lcom/powervision/aircraft/ui/views/CameraMenuView$8;
.super Ljava/lang/Object;
.source "CameraMenuView.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/views/CameraMenuView;->setDelayTime(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/views/CameraMenuView;I)V
    .locals 0

    .line 686
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$8;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    iput p2, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$8;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 689
    iget v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$8;->val$mode:I

    if-nez v0, :cond_0

    .line 690
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    const/16 v1, 0x11

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/powervision/natives/PVSDK_AP03_API;->setFlightingMode(II)I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 692
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$8;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->access$400(Lcom/powervision/aircraft/ui/views/CameraMenuView;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setTimeLapsePhotoMaxSpeed(F)I

    :cond_1
    :goto_0
    return-void
.end method
