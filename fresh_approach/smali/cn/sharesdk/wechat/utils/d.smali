.class public Lcn/sharesdk/wechat/utils/d;
.super Lcn/sharesdk/wechat/utils/l;
.source "SendMessageReq.java"


# instance fields
.field public a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcn/sharesdk/wechat/utils/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .line 36
    invoke-super {p0, p1}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/os/Bundle;)V

    .line 37
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/d;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-static {v0}, Lcn/sharesdk/wechat/utils/WXMediaMessage$a;->a(Lcn/sharesdk/wechat/utils/WXMediaMessage;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 38
    iget v0, p0, Lcn/sharesdk/wechat/utils/d;->b:I

    const-string v1, "_wxapi_sendmessagetowx_req_scene"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Z)Z
    .locals 4

    .line 45
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/d;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    invoke-virtual {v0}, Lcn/sharesdk/wechat/utils/WXMediaMessage;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 46
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/d;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    iget-object v0, v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/wechat/utils/d;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    iget-object v0, v0, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    array-length v0, v0

    if-gtz v0, :cond_1

    .line 47
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "checkArgs fail, thumbData should not be null when send emoji"

    invoke-virtual {p1, v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1

    :cond_1
    const-string v0, "checkArgs fail, thumbData is invalid"

    if-eqz p1, :cond_2

    .line 52
    iget-object p1, p0, Lcn/sharesdk/wechat/utils/d;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    iget-object p1, p1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcn/sharesdk/wechat/utils/d;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    iget-object p1, p1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    array-length p1, p1

    const/high16 v2, 0x20000

    if-le p1, v2, :cond_3

    .line 53
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1

    .line 57
    :cond_2
    iget-object p1, p0, Lcn/sharesdk/wechat/utils/d;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    iget-object p1, p1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcn/sharesdk/wechat/utils/d;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    iget-object p1, p1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->thumbData:[B

    array-length p1, p1

    const v2, 0x8000

    if-le p1, v2, :cond_3

    .line 58
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1

    .line 64
    :cond_3
    iget-object p1, p0, Lcn/sharesdk/wechat/utils/d;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    iget-object p1, p1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcn/sharesdk/wechat/utils/d;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    iget-object p1, p1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->title:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x200

    if-le p1, v0, :cond_4

    .line 65
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "checkArgs fail, title is invalid"

    invoke-virtual {p1, v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1

    .line 69
    :cond_4
    iget-object p1, p0, Lcn/sharesdk/wechat/utils/d;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    iget-object p1, p1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcn/sharesdk/wechat/utils/d;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    iget-object p1, p1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x400

    if-le p1, v0, :cond_5

    .line 70
    iget-object p1, p0, Lcn/sharesdk/wechat/utils/d;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/sharesdk/wechat/utils/d;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    iget-object v2, v2, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    const/16 v3, 0x3fd

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->description:Ljava/lang/String;

    .line 72
    :cond_5
    iget-object p1, p0, Lcn/sharesdk/wechat/utils/d;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    iget-object p1, p1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    if-nez p1, :cond_6

    .line 73
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "checkArgs fail, mediaObject is null"

    invoke-virtual {p1, v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v1

    .line 88
    :cond_6
    iget-object p1, p0, Lcn/sharesdk/wechat/utils/d;->a:Lcn/sharesdk/wechat/utils/WXMediaMessage;

    iget-object p1, p1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    invoke-interface {p1}, Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;->checkArgs()Z

    move-result p1

    return p1
.end method
