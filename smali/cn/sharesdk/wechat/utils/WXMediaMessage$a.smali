.class public Lcn/sharesdk/wechat/utils/WXMediaMessage$a;
.super Ljava/lang/Object;
.source "WXMediaMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/wechat/utils/WXMediaMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a(Lcn/sharesdk/wechat/utils/WXMediaMessage;)Landroid/os/Bundle;
    .locals 3

    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 102
    iget v1, p0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->sdkVer:I

    const-string v2, "_wxobject_sdkVer"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    const-string v2, "_wxobject_title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    const-string v2, "_wxobject_description"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string v2, "_wxobject_thumbdata"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 106
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    if-eqz v1, :cond_0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.tencent.mm.sdk.openapi."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 108
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_wxobject_identifier_"

    .line 109
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    invoke-interface {v1, v0}, Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;->serialize(Landroid/os/Bundle;)V

    .line 113
    :cond_0
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaTagName:Ljava/lang/String;

    const-string v2, "_wxobject_mediatagname"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->messageAction:Ljava/lang/String;

    const-string v2, "_wxobject_message_action"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object p0, p0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->messageExt:Ljava/lang/String;

    const-string v1, "_wxobject_message_ext"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/os/Bundle;)Lcn/sharesdk/wechat/utils/WXMediaMessage;
    .locals 4

    .line 121
    new-instance v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-direct {v0}, Lcn/sharesdk/wechat/utils/WXMediaMessage;-><init>()V

    const-string v1, "_wxobject_sdkVer"

    .line 122
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->sdkVer:I

    const-string v1, "_wxobject_title"

    .line 123
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    const-string v1, "_wxobject_description"

    .line 124
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    const-string v1, "_wxobject_thumbdata"

    .line 125
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    const-string v1, "_wxobject_mediatagname"

    .line 128
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaTagName:Ljava/lang/String;

    const-string v1, "_wxobject_message_action"

    .line 129
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->messageAction:Ljava/lang/String;

    const-string v1, "_wxobject_message_ext"

    .line 130
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->messageExt:Ljava/lang/String;

    const-string v1, "_wxapi_basereq_openid"

    .line 133
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "_wxapi_baseresp_openId"

    :cond_0
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->openId:Ljava/lang/String;

    const-string v1, "_wxobject_identifier_"

    .line 134
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 135
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v2, "com.tencent.mm.sdk.openapi"

    const-string v3, "cn.sharesdk.wechat.utils"

    .line 140
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 142
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    iput-object v2, v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    .line 143
    iget-object v2, v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    invoke-interface {v2, p0}, Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;->unserialize(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 146
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 147
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get media object from bundle failed: unknown ident "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_2
    :goto_0
    return-object v0
.end method
