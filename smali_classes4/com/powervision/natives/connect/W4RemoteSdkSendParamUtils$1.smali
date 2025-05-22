.class Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$1;
.super Ljava/lang/Object;
.source "W4RemoteSdkSendParamUtils.java"

# interfaces
.implements Lcom/powervision/natives/connect/W4BodySdkSendParamUtils$MsgTool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;


# direct methods
.method constructor <init>(Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils$1;->this$0:Lcom/powervision/natives/connect/W4RemoteSdkSendParamUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 0

    return-void
.end method

.method public work(Lcom/powervision/natives/connect/ParamMsg;)V
    .locals 4

    .line 48
    iget-boolean v0, p1, Lcom/powervision/natives/connect/ParamMsg;->isDownLoad:Z

    const-string v1, "lzqCheckView"

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53d1\u9001 \u83b7\u53d6\u6a21\u5f0f "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/powervision/natives/connect/ParamMsg;->param:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    if-eqz v0, :cond_3

    .line 51
    iget-object p1, p1, Lcom/powervision/natives/connect/ParamMsg;->param:Ljava/lang/String;

    invoke-static {p1}, Lcom/powervision/natives/JniW4RemoteNative;->downLoadParameter(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 55
    :cond_0
    iget-object v0, p1, Lcom/powervision/natives/connect/ParamMsg;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Float;

    const-string v2, " value "

    if-eqz v0, :cond_1

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u53d1\u9001 \u8bbe\u7f6e\u6a21\u5f0f Float "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/powervision/natives/connect/ParamMsg;->param:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/powervision/natives/connect/ParamMsg;->value:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sget-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    if-eqz v0, :cond_3

    .line 58
    iget-object v0, p1, Lcom/powervision/natives/connect/ParamMsg;->param:Ljava/lang/String;

    iget-object p1, p1, Lcom/powervision/natives/connect/ParamMsg;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/powervision/natives/JniW4RemoteNative;->uploadParameter(Ljava/lang/String;F)I

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p1, Lcom/powervision/natives/connect/ParamMsg;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u53d1\u9001 \u8bbe\u7f6e\u6a21\u5f0f Long "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/powervision/natives/connect/ParamMsg;->param:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/powervision/natives/connect/ParamMsg;->value:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    if-eqz v0, :cond_3

    .line 63
    iget-object v0, p1, Lcom/powervision/natives/connect/ParamMsg;->param:Ljava/lang/String;

    iget-object p1, p1, Lcom/powervision/natives/connect/ParamMsg;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/powervision/natives/JniW4RemoteNative;->uploadParameter(Ljava/lang/String;J)I

    goto :goto_0

    .line 67
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u53d1\u9001 \u8bbe\u7f6e\u6a21\u5f0f int "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/powervision/natives/connect/ParamMsg;->param:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/powervision/natives/connect/ParamMsg;->value:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    sget-boolean v0, Lcom/powervision/natives/PVSDK_W4_API;->SDKAVILIBALE:Z

    if-eqz v0, :cond_3

    .line 69
    iget-object v0, p1, Lcom/powervision/natives/connect/ParamMsg;->param:Ljava/lang/String;

    iget-object p1, p1, Lcom/powervision/natives/connect/ParamMsg;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/powervision/natives/JniW4RemoteNative;->uploadParameter(Ljava/lang/String;I)I

    :cond_3
    :goto_0
    return-void
.end method
