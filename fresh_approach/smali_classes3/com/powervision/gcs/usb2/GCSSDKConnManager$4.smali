.class Lcom/powervision/gcs/usb2/GCSSDKConnManager$4;
.super Ljava/lang/Object;
.source "GCSSDKConnManager.java"

# interfaces
.implements Lcom/powervision/natives/callback/ActivationCallback$Ap03NotifyOnConnectActivationResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/usb2/GCSSDKConnManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/usb2/GCSSDKConnManager;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/powervision/gcs/usb2/GCSSDKConnManager$4;->this$0:Lcom/powervision/gcs/usb2/GCSSDKConnManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setConnectActivationLinkDisconnect()V
    .locals 2

    const-string v0, "ap03NotifyOnConnectADFA"

    const-string v1, "setConnectActivationLinkDisconnect"

    .line 356
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setConnectActivationLinkFailed()V
    .locals 2

    const-string v0, "ap03NotifyOnConnectADFA"

    const-string v1, "setConnectActivationLinkFailed"

    .line 346
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setConnectActivationLinkSuccess()V
    .locals 2

    const-string v0, "ap03NotifyOnConnectADFA"

    const-string v1, "setConnectActivationLinkSuccess"

    .line 341
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setConnectActivationLinkTimeout()V
    .locals 2

    const-string v0, "ap03NotifyOnConnectADFA"

    const-string v1, "setConnectActivationLinkTimeout"

    .line 351
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
