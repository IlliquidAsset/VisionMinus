.class Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter$1;
.super Ljava/lang/Object;
.source "PVSonarDetailPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter$1;->this$0:Lcom/powervision/gcs/ui/aty/pvsonar/PVSonarDetailPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 64
    invoke-static {}, Lcom/powervision/gcs/usb2/SonarConnectState;->isCurrentConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Lcom/powervision/gcs/config/SonarSettingCmd;->getInstance()Lcom/powervision/gcs/config/SonarSettingCmd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/config/SonarSettingCmd;->getSonarTem()V

    :cond_0
    return-void
.end method
