.class Lcom/powervision/gcs/utils/NewActiviteUtil$1$1;
.super Ljava/lang/Object;
.source "NewActiviteUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/utils/NewActiviteUtil$1;->onGetParameter(Ljava/lang/String;SSLjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/utils/NewActiviteUtil$1;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/utils/NewActiviteUtil$1;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/powervision/gcs/utils/NewActiviteUtil$1$1;->this$1:Lcom/powervision/gcs/utils/NewActiviteUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge v2, v4, :cond_6

    const-wide/16 v4, 0xc8

    .line 310
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    const/4 v4, 0x0

    .line 311
    :goto_1
    iget-object v5, p0, Lcom/powervision/gcs/utils/NewActiviteUtil$1$1;->this$1:Lcom/powervision/gcs/utils/NewActiviteUtil$1;

    iget-object v5, v5, Lcom/powervision/gcs/utils/NewActiviteUtil$1;->this$0:Lcom/powervision/gcs/utils/NewActiviteUtil;

    iget-object v5, v5, Lcom/powervision/gcs/utils/NewActiviteUtil;->codes:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_3

    .line 312
    iget-object v5, p0, Lcom/powervision/gcs/utils/NewActiviteUtil$1$1;->this$1:Lcom/powervision/gcs/utils/NewActiviteUtil$1;

    iget-object v5, v5, Lcom/powervision/gcs/utils/NewActiviteUtil$1;->this$0:Lcom/powervision/gcs/utils/NewActiviteUtil;

    iget-object v5, v5, Lcom/powervision/gcs/utils/NewActiviteUtil;->codes:[Ljava/lang/String;

    aget-object v5, v5, v4

    .line 313
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v3, :cond_0

    .line 315
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 318
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 319
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    if-eqz v3, :cond_2

    .line 321
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 323
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_6

    .line 330
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    .line 333
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 334
    invoke-static {}, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;->get()Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;

    move-result-object v5

    new-instance v6, Lcom/powervision/natives/connect/ParamMsg;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PV_RO_KEY_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {v6, v9, v7, v8}, Lcom/powervision/natives/connect/ParamMsg;-><init>(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Lcom/powervision/natives/connect/W4BodySdkSendParamUtils;->send(Lcom/powervision/natives/connect/ParamMsg;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    :goto_4
    const-string v1, "lzqAc_ac"

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6700\u7ec8\u7684\u6fc0\u6d3b\u7801 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/powervision/gcs/utils/NewActiviteUtil$1$1;->this$1:Lcom/powervision/gcs/utils/NewActiviteUtil$1;

    iget-object v4, v4, Lcom/powervision/gcs/utils/NewActiviteUtil$1;->this$0:Lcom/powervision/gcs/utils/NewActiviteUtil;

    iget-object v4, v4, Lcom/powervision/gcs/utils/NewActiviteUtil;->codes:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    iget-object v5, p0, Lcom/powervision/gcs/utils/NewActiviteUtil$1$1;->this$1:Lcom/powervision/gcs/utils/NewActiviteUtil$1;

    iget-object v5, v5, Lcom/powervision/gcs/utils/NewActiviteUtil$1;->this$0:Lcom/powervision/gcs/utils/NewActiviteUtil;

    iget-object v5, v5, Lcom/powervision/gcs/utils/NewActiviteUtil;->codes:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_8

    .line 342
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_7

    goto :goto_5

    .line 346
    :cond_7
    iget-object v1, p0, Lcom/powervision/gcs/utils/NewActiviteUtil$1$1;->this$1:Lcom/powervision/gcs/utils/NewActiviteUtil$1;

    iget-object v1, v1, Lcom/powervision/gcs/utils/NewActiviteUtil$1;->this$0:Lcom/powervision/gcs/utils/NewActiviteUtil;

    invoke-static {v1}, Lcom/powervision/gcs/utils/NewActiviteUtil;->access$000(Lcom/powervision/gcs/utils/NewActiviteUtil;)V

    goto :goto_6

    .line 344
    :cond_8
    :goto_5
    iget-object v1, p0, Lcom/powervision/gcs/utils/NewActiviteUtil$1$1;->this$1:Lcom/powervision/gcs/utils/NewActiviteUtil$1;

    iget-object v1, v1, Lcom/powervision/gcs/utils/NewActiviteUtil$1;->this$0:Lcom/powervision/gcs/utils/NewActiviteUtil;

    iget-object v2, p0, Lcom/powervision/gcs/utils/NewActiviteUtil$1$1;->this$1:Lcom/powervision/gcs/utils/NewActiviteUtil$1;

    iget-object v2, v2, Lcom/powervision/gcs/utils/NewActiviteUtil$1;->this$0:Lcom/powervision/gcs/utils/NewActiviteUtil;

    iget-object v2, v2, Lcom/powervision/gcs/utils/NewActiviteUtil;->codes:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/powervision/gcs/utils/NewActiviteUtil;->askActiviteCodeSuccess([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v1

    .line 352
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 355
    :goto_6
    iget-object v1, p0, Lcom/powervision/gcs/utils/NewActiviteUtil$1$1;->this$1:Lcom/powervision/gcs/utils/NewActiviteUtil$1;

    iget-object v1, v1, Lcom/powervision/gcs/utils/NewActiviteUtil$1;->this$0:Lcom/powervision/gcs/utils/NewActiviteUtil;

    iput-object v0, v1, Lcom/powervision/gcs/utils/NewActiviteUtil;->checkThread:Ljava/lang/Thread;

    return-void
.end method
