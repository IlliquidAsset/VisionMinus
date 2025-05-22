.class Lcom/powervision/gcs/view/SonarWindowView$2;
.super Ljava/lang/Object;
.source "SonarWindowView.java"

# interfaces
.implements Lcom/powervision/gcs/usb2/SonarConnectState$OnSonarConnectStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/SonarWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/SonarWindowView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/SonarWindowView;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView$2;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectStateChanged(Z)V
    .locals 4

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onSonarConnectStateChangedListener isConnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lzqSonar"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 251
    :cond_0
    invoke-static {}, Lcom/powervision/gcs/usb2/GCSConnectionManager$ConnectionType;->getCurrentType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 252
    invoke-static {}, Lcom/powervision/gcs/usb2/SonarManager;->get()Lcom/powervision/gcs/usb2/SonarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/powervision/gcs/usb2/SonarManager;->sendCancel()V

    :cond_1
    const/4 v2, 0x0

    .line 255
    :goto_0
    iget-object v3, p0, Lcom/powervision/gcs/view/SonarWindowView$2;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iget v3, v3, Lcom/powervision/gcs/view/SonarWindowView;->lastConnectStatus:I

    if-eq v3, v2, :cond_3

    if-eqz p1, :cond_2

    .line 257
    sput-boolean v0, Lcom/powervision/gcs/utils/SonarStateHelper;->isPVConnectSonar:Z

    .line 259
    invoke-static {}, Lcom/powervision/gcs/config/SonarSettingCmd;->getInstance()Lcom/powervision/gcs/config/SonarSettingCmd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/powervision/gcs/config/SonarSettingCmd;->openDataStreamCMD()V

    goto :goto_1

    .line 262
    :cond_2
    sput-boolean v1, Lcom/powervision/gcs/utils/SonarStateHelper;->isPVConnectSonar:Z

    .line 266
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/powervision/gcs/view/SonarWindowView$2;->this$0:Lcom/powervision/gcs/view/SonarWindowView;

    iput v2, p1, Lcom/powervision/gcs/view/SonarWindowView;->lastConnectStatus:I

    return-void
.end method
