.class Lcom/powervision/gcs/usb2/FloatingButtonService$2;
.super Ljava/lang/Object;
.source "FloatingButtonService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/usb2/FloatingButtonService;->showFloatingWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/usb2/FloatingButtonService;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/usb2/FloatingButtonService;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/powervision/gcs/usb2/FloatingButtonService$2;->this$0:Lcom/powervision/gcs/usb2/FloatingButtonService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 101
    invoke-static {}, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;->get()Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;

    move-result-object p1

    new-instance v0, Lcom/powervision/natives/connect/ParamMsg;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "PV_RO_KEY_0"

    invoke-direct {v0, v2, v3, v1}, Lcom/powervision/natives/connect/ParamMsg;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;->send(Lcom/powervision/natives/connect/ParamMsg;)V

    return-void
.end method
