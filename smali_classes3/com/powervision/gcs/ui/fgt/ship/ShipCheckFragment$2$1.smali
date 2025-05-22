.class Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$2$1;
.super Ljava/lang/Object;
.source "ShipCheckFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$2;->onRemoteControlSetTimeout(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$2;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$2;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$2$1;->this$1:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/high16 v0, 0x40800000    # 4.0f

    .line 223
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 224
    invoke-static {}, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;->get()Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;

    move-result-object v1

    new-instance v2, Lcom/powervision/natives/connect/ParamMsg;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "PV_RC_MODE"

    invoke-direct {v2, v3, v4, v0}, Lcom/powervision/natives/connect/ParamMsg;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;->send(Lcom/powervision/natives/connect/ParamMsg;I)V

    return-void
.end method
