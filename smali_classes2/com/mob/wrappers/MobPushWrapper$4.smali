.class final Lcom/mob/wrappers/MobPushWrapper$4;
.super Ljava/lang/Object;
.source "MobPushWrapper.java"

# interfaces
.implements Lcom/mob/pushsdk/MobPushReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/wrappers/MobPushWrapper;->addPushReceiver(Lcom/mob/wrappers/MobPushWrapper$MobPushReceiverWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$wrapper:Lcom/mob/wrappers/MobPushWrapper$MobPushReceiverWrapper;


# direct methods
.method constructor <init>(Lcom/mob/wrappers/MobPushWrapper$MobPushReceiverWrapper;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/mob/wrappers/MobPushWrapper$4;->val$wrapper:Lcom/mob/wrappers/MobPushWrapper$MobPushReceiverWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAliasCallback(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/mob/wrappers/MobPushWrapper$4;->val$wrapper:Lcom/mob/wrappers/MobPushWrapper$MobPushReceiverWrapper;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mob/wrappers/MobPushWrapper$MobPushReceiverWrapper;->onAliasCallback(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method public onCustomMessageReceive(Landroid/content/Context;Lcom/mob/pushsdk/MobPushCustomMessage;)V
    .locals 7

    if-eqz p2, :cond_0

    .line 86
    new-instance v6, Lcom/mob/wrappers/MobPushWrapper$MobPushCustomMessageWrapper;

    invoke-virtual {p2}, Lcom/mob/pushsdk/MobPushCustomMessage;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mob/pushsdk/MobPushCustomMessage;->getExtrasMap()Ljava/util/HashMap;

    move-result-object v2

    .line 87
    invoke-virtual {p2}, Lcom/mob/pushsdk/MobPushCustomMessage;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/mob/pushsdk/MobPushCustomMessage;->getTimestamp()J

    move-result-wide v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/mob/wrappers/MobPushWrapper$MobPushCustomMessageWrapper;-><init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 89
    :goto_0
    iget-object p2, p0, Lcom/mob/wrappers/MobPushWrapper$4;->val$wrapper:Lcom/mob/wrappers/MobPushWrapper$MobPushReceiverWrapper;

    invoke-interface {p2, p1, v6}, Lcom/mob/wrappers/MobPushWrapper$MobPushReceiverWrapper;->onCustomMessageReceive(Landroid/content/Context;Lcom/mob/wrappers/MobPushWrapper$MobPushCustomMessageWrapper;)V

    return-void
.end method

.method public onNotifyMessageOpenedReceive(Landroid/content/Context;Lcom/mob/pushsdk/MobPushNotifyMessage;)V
    .locals 14

    if-eqz p2, :cond_0

    .line 105
    new-instance v13, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;

    invoke-virtual/range {p2 .. p2}, Lcom/mob/pushsdk/MobPushNotifyMessage;->getStyle()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Lcom/mob/pushsdk/MobPushNotifyMessage;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/mob/pushsdk/MobPushNotifyMessage;->getContent()Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual/range {p2 .. p2}, Lcom/mob/pushsdk/MobPushNotifyMessage;->getStyleContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/mob/pushsdk/MobPushNotifyMessage;->getInboxStyleContent()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/mob/pushsdk/MobPushNotifyMessage;->getExtrasMap()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/mob/pushsdk/MobPushNotifyMessage;->getMessageId()Ljava/lang/String;

    move-result-object v7

    .line 107
    invoke-virtual/range {p2 .. p2}, Lcom/mob/pushsdk/MobPushNotifyMessage;->getTimestamp()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Lcom/mob/pushsdk/MobPushNotifyMessage;->isVoice()Z

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/mob/pushsdk/MobPushNotifyMessage;->isShake()Z

    move-result v11

    invoke-virtual/range {p2 .. p2}, Lcom/mob/pushsdk/MobPushNotifyMessage;->isLight()Z

    move-result v12

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;JZZZ)V

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    move-object v0, p0

    .line 109
    iget-object v1, v0, Lcom/mob/wrappers/MobPushWrapper$4;->val$wrapper:Lcom/mob/wrappers/MobPushWrapper$MobPushReceiverWrapper;

    move-object v2, p1

    invoke-interface {v1, p1, v13}, Lcom/mob/wrappers/MobPushWrapper$MobPushReceiverWrapper;->onNotifyMessageOpenedReceive(Landroid/content/Context;Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;)V

    return-void
.end method

.method public onNotifyMessageReceive(Landroid/content/Context;Lcom/mob/pushsdk/MobPushNotifyMessage;)V
    .locals 14

    if-eqz p2, :cond_0

    .line 95
    new-instance v13, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;

    invoke-virtual/range {p2 .. p2}, Lcom/mob/pushsdk/MobPushNotifyMessage;->getStyle()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Lcom/mob/pushsdk/MobPushNotifyMessage;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/mob/pushsdk/MobPushNotifyMessage;->getContent()Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-virtual/range {p2 .. p2}, Lcom/mob/pushsdk/MobPushNotifyMessage;->getStyleContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/mob/pushsdk/MobPushNotifyMessage;->getInboxStyleContent()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/mob/pushsdk/MobPushNotifyMessage;->getExtrasMap()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/mob/pushsdk/MobPushNotifyMessage;->getMessageId()Ljava/lang/String;

    move-result-object v7

    .line 97
    invoke-virtual/range {p2 .. p2}, Lcom/mob/pushsdk/MobPushNotifyMessage;->getTimestamp()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Lcom/mob/pushsdk/MobPushNotifyMessage;->isVoice()Z

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/mob/pushsdk/MobPushNotifyMessage;->isShake()Z

    move-result v11

    invoke-virtual/range {p2 .. p2}, Lcom/mob/pushsdk/MobPushNotifyMessage;->isLight()Z

    move-result v12

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;JZZZ)V

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    move-object v0, p0

    .line 99
    iget-object v1, v0, Lcom/mob/wrappers/MobPushWrapper$4;->val$wrapper:Lcom/mob/wrappers/MobPushWrapper$MobPushReceiverWrapper;

    move-object v2, p1

    invoke-interface {v1, p1, v13}, Lcom/mob/wrappers/MobPushWrapper$MobPushReceiverWrapper;->onNotifyMessageReceive(Landroid/content/Context;Lcom/mob/wrappers/MobPushWrapper$MobPushNotifyMessageWrapper;)V

    return-void
.end method

.method public onTagsCallback(Landroid/content/Context;[Ljava/lang/String;II)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/mob/wrappers/MobPushWrapper$4;->val$wrapper:Lcom/mob/wrappers/MobPushWrapper$MobPushReceiverWrapper;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mob/wrappers/MobPushWrapper$MobPushReceiverWrapper;->onTagsCallback(Landroid/content/Context;[Ljava/lang/String;II)V

    return-void
.end method
