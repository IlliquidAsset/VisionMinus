.class Lcom/powervision/gcs/config/SonarSettingCmd$2;
.super Ljava/lang/Object;
.source "SonarSettingCmd.java"

# interfaces
.implements Lcom/powervision/gcs/usb2/SonarManager$OnSendSonarDataStartCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/config/SonarSettingCmd;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/config/SonarSettingCmd;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/config/SonarSettingCmd;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/powervision/gcs/config/SonarSettingCmd$2;->this$0:Lcom/powervision/gcs/config/SonarSettingCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 2

    const-string v0, "lzqSonar"

    const-string v1, "  onSuccess \u53d1\u5f00\u59cb\u4f20\u8f93\u6307\u4ee4"

    .line 322
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-static {}, Lcom/powervision/gcs/config/SonarSettingCmd;->getInstance()Lcom/powervision/gcs/config/SonarSettingCmd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/gcs/config/SonarSettingCmd;->openDataStreamCMD()V

    return-void
.end method
