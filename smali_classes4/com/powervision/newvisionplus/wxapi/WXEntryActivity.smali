.class public Lcom/powervision/newvisionplus/wxapi/WXEntryActivity;
.super Lcn/sharesdk/wechat/utils/WechatHandlerActivity;
.source "WXEntryActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcn/sharesdk/wechat/utils/WechatHandlerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetMessageFromWXReq(Lcn/sharesdk/wechat/utils/WXMediaMessage;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/powervision/newvisionplus/wxapi/WXEntryActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/powervision/newvisionplus/wxapi/WXEntryActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Lcom/powervision/newvisionplus/wxapi/WXEntryActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onShowMessageFromWXReq(Lcn/sharesdk/wechat/utils/WXMediaMessage;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 47
    iget-object v0, p1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    instance-of v0, v0, Lcn/sharesdk/wechat/utils/WXAppExtendObject;

    if-eqz v0, :cond_0

    .line 49
    iget-object p1, p1, Lcn/sharesdk/wechat/utils/WXMediaMessage;->mediaObject:Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;

    check-cast p1, Lcn/sharesdk/wechat/utils/WXAppExtendObject;

    :cond_0
    return-void
.end method
