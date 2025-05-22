.class Lcom/powervision/gcs/manager/PsnGetUtil$1$1;
.super Ljava/lang/Object;
.source "PsnGetUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/manager/PsnGetUtil$1;->onGetParameter(Ljava/lang/String;SSLjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/manager/PsnGetUtil$1;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/manager/PsnGetUtil$1;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/powervision/gcs/manager/PsnGetUtil$1$1;->this$1:Lcom/powervision/gcs/manager/PsnGetUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    const-string v4, "lzqW4_body_psn"

    if-ge v2, v3, :cond_6

    const-wide/16 v5, 0xc8

    .line 69
    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    const/4 v3, 0x0

    .line 70
    :goto_1
    iget-object v5, p0, Lcom/powervision/gcs/manager/PsnGetUtil$1$1;->this$1:Lcom/powervision/gcs/manager/PsnGetUtil$1;

    iget-object v5, v5, Lcom/powervision/gcs/manager/PsnGetUtil$1;->this$0:Lcom/powervision/gcs/manager/PsnGetUtil;

    iget-object v5, v5, Lcom/powervision/gcs/manager/PsnGetUtil;->codes:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_3

    .line 71
    iget-object v5, p0, Lcom/powervision/gcs/manager/PsnGetUtil$1$1;->this$1:Lcom/powervision/gcs/manager/PsnGetUtil$1;

    iget-object v5, v5, Lcom/powervision/gcs/manager/PsnGetUtil$1;->this$0:Lcom/powervision/gcs/manager/PsnGetUtil;

    iget-object v5, v5, Lcom/powervision/gcs/manager/PsnGetUtil;->codes:[Ljava/lang/String;

    aget-object v5, v5, v3

    .line 72
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u52a0\u5165\u4e00\u4e2a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 78
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    .line 80
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5e72\u6389\u4e00\u4e2a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_6

    .line 87
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    .line 90
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 91
    invoke-static {}, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;->get()Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;

    move-result-object v5

    new-instance v6, Lcom/powervision/natives/connect/ParamMsg;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PV_RO_PSN_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {v6, v9, v7, v8}, Lcom/powervision/natives/connect/ParamMsg;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;->send(Lcom/powervision/natives/connect/ParamMsg;)V

    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u672a\u62ff\u5230\u7684psn\u662f  + i "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 96
    :cond_6
    :goto_4
    iget-object v1, p0, Lcom/powervision/gcs/manager/PsnGetUtil$1$1;->this$1:Lcom/powervision/gcs/manager/PsnGetUtil$1;

    iget-object v1, v1, Lcom/powervision/gcs/manager/PsnGetUtil$1;->this$0:Lcom/powervision/gcs/manager/PsnGetUtil;

    iget-object v1, v1, Lcom/powervision/gcs/manager/PsnGetUtil;->codes:[Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6700\u7ec8\u7684psn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v3, p0, Lcom/powervision/gcs/manager/PsnGetUtil$1$1;->this$1:Lcom/powervision/gcs/manager/PsnGetUtil$1;

    iget-object v3, v3, Lcom/powervision/gcs/manager/PsnGetUtil$1;->this$0:Lcom/powervision/gcs/manager/PsnGetUtil;

    iget-object v3, v3, Lcom/powervision/gcs/manager/PsnGetUtil;->codes:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v0, :cond_8

    .line 99
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 101
    :cond_8
    iget-object v0, p0, Lcom/powervision/gcs/manager/PsnGetUtil$1$1;->this$1:Lcom/powervision/gcs/manager/PsnGetUtil$1;

    iget-object v0, v0, Lcom/powervision/gcs/manager/PsnGetUtil$1;->this$0:Lcom/powervision/gcs/manager/PsnGetUtil;

    iget-object v1, p0, Lcom/powervision/gcs/manager/PsnGetUtil$1$1;->this$1:Lcom/powervision/gcs/manager/PsnGetUtil$1;

    iget-object v1, v1, Lcom/powervision/gcs/manager/PsnGetUtil$1;->this$0:Lcom/powervision/gcs/manager/PsnGetUtil;

    iget-object v1, v1, Lcom/powervision/gcs/manager/PsnGetUtil;->codes:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/powervision/gcs/manager/PsnGetUtil;->setPsnCode([Ljava/lang/String;)V

    .line 106
    :cond_9
    invoke-static {}, Lcom/powervision/natives/PVSDK_W4_API;->get()Lcom/powervision/natives/PVSDK_W4_API;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/gcs/manager/PsnGetUtil$1$1;->this$1:Lcom/powervision/gcs/manager/PsnGetUtil$1;

    iget-object v1, v1, Lcom/powervision/gcs/manager/PsnGetUtil$1;->this$0:Lcom/powervision/gcs/manager/PsnGetUtil;

    iget-object v1, v1, Lcom/powervision/gcs/manager/PsnGetUtil;->resultListener:Lcom/powervision/natives/callback/DophinCallback$onParameterResultListener;

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_W4_API;->removeParametereListener(Lcom/powervision/natives/callback/DophinCallback$onParameterResultListener;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_5
    return-void
.end method
