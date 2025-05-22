.class public Lcn/sharesdk/wechat/utils/WXEmojiObject;
.super Ljava/lang/Object;
.source "WXEmojiObject.java"

# interfaces
.implements Lcn/sharesdk/wechat/utils/WXMediaMessage$IMediaObject;


# instance fields
.field public emojiData:[B

.field public emojiPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiData:[B

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 8

    .line 48
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiData:[B

    const-string v1, "MicroMsg.SDK.WXEmojiObject"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiPath:Ljava/lang/String;

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "checkArgs fail, both arguments is null"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v3

    .line 55
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiData:[B

    if-eqz v0, :cond_2

    array-length v0, v0

    const/high16 v4, 0xa00000

    if-le v0, v4, :cond_2

    .line 56
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "checkArgs fail, emojiData is too large"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v3

    .line 61
    :cond_2
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiPath:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 62
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiPath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 64
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "checkArgs fail, emojiPath not found"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v3

    .line 69
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0xa00000

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    .line 70
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "checkArgs fail, emojiSize is too large"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v3

    :cond_4
    return v2
.end method

.method public serialize(Landroid/os/Bundle;)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiData:[B

    const-string v1, "_wxemojiobject_emojiData"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 35
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiPath:Ljava/lang/String;

    const-string v1, "_wxemojiobject_emojiPath"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEmojiData([B)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiData:[B

    return-void
.end method

.method public setEmojiPath(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiPath:Ljava/lang/String;

    return-void
.end method

.method public type()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "_wxemojiobject_emojiData"

    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiData:[B

    const-string v0, "_wxemojiobject_emojiPath"

    .line 40
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/wechat/utils/WXEmojiObject;->emojiPath:Ljava/lang/String;

    return-void
.end method
