.class Lcom/powervision/natives/connect/W4BodySdkSendParamUtils$1;
.super Ljava/lang/Object;
.source "W4BodySdkSendParamUtils.java"

# interfaces
.implements Lcom/powervision/natives/connect/W4BodySdkSendParamUtils$MsgTool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;


# direct methods
.method constructor <init>(Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils$1;->this$0:Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 0

    return-void
.end method

.method public work(Lcom/powervision/natives/connect/ParamMsg;)V
    .locals 3

    .line 45
    iget-boolean v0, p1, Lcom/powervision/natives/connect/ParamMsg;->isDownLoad:Z

    if-eqz v0, :cond_0

    .line 47
    iget-object p1, p1, Lcom/powervision/natives/connect/ParamMsg;->param:Ljava/lang/String;

    invoke-static {p1}, Lcom/powervision/natives/JniW4Native;->downloadParameter(Ljava/lang/String;)I

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p1, Lcom/powervision/natives/connect/ParamMsg;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p1, Lcom/powervision/natives/connect/ParamMsg;->param:Ljava/lang/String;

    iget-object p1, p1, Lcom/powervision/natives/connect/ParamMsg;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/powervision/natives/PVSDK_W4_API;->uploadBodyParmter(Ljava/lang/String;F)V

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p1, Lcom/powervision/natives/connect/ParamMsg;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p1, Lcom/powervision/natives/connect/ParamMsg;->param:Ljava/lang/String;

    iget-object p1, p1, Lcom/powervision/natives/connect/ParamMsg;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/powervision/natives/PVSDK_W4_API;->uploadBodyParmter(Ljava/lang/String;J)V

    :cond_2
    :goto_0
    return-void
.end method
