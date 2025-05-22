.class Lcom/powervision/sdk/Ap03Manager$12;
.super Ljava/lang/Object;
.source "Ap03Manager.java"

# interfaces
.implements Lcom/powervision/natives/PowerSDKCallback$Ap03NotifyOnAttitudeListener;


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

    .line 626
    iput-object p1, p0, Lcom/powervision/sdk/Ap03Manager$12;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attitude(FFF)V
    .locals 1

    .line 629
    sput p3, Lcom/powervision/base/utils/UtMissUtils;->UM_COURSE:F

    .line 630
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$12;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$1200(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03OnAttitudeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/powervision/sdk/Ap03Manager$12;->this$0:Lcom/powervision/sdk/Ap03Manager;

    invoke-static {v0}, Lcom/powervision/sdk/Ap03Manager;->access$1200(Lcom/powervision/sdk/Ap03Manager;)Lcom/powervision/sdk/callback/Ap03OnAttitudeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/powervision/sdk/callback/Ap03OnAttitudeListener;->getAircraftAttitude(FFF)V

    .line 633
    :cond_0
    invoke-static {}, Lcom/powervision/base/utils/FlightLogUtil;->getInstance()Lcom/powervision/base/utils/FlightLogUtil;

    move-result-object p1

    const p2, 0x40490fdc

    div-float/2addr p3, p2

    const/high16 p2, 0x43340000    # 180.0f

    mul-float p3, p3, p2

    invoke-virtual {p1, p3}, Lcom/powervision/base/utils/FlightLogUtil;->setAircraftOrientation(F)V

    return-void
.end method
