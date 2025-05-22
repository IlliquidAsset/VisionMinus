.class Lcom/powervision/natives/connect/ConnectActivationSDK$2;
.super Ljava/util/TimerTask;
.source "ConnectActivationSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/natives/connect/ConnectActivationSDK;->connected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/natives/connect/ConnectActivationSDK;


# direct methods
.method constructor <init>(Lcom/powervision/natives/connect/ConnectActivationSDK;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/powervision/natives/connect/ConnectActivationSDK$2;->this$0:Lcom/powervision/natives/connect/ConnectActivationSDK;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 138
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/natives/PVSDK_AP03_API;->getActivationCode()I

    return-void
.end method
