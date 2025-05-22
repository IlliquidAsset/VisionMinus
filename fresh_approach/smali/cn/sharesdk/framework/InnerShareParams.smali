.class public abstract Lcn/sharesdk/framework/InnerShareParams;
.super Ljava/lang/Object;
.source "InnerShareParams.java"


# static fields
.field protected static final ACTIVITY:Ljava/lang/String; = "activity"

.field protected static final ADDRESS:Ljava/lang/String; = "address"

.field protected static final AUTHOR:Ljava/lang/String; = "author"

.field protected static final COMMENT:Ljava/lang/String; = "comment"

.field protected static final CONTENT_TYPE:Ljava/lang/String; = "contentType"

.field protected static final CUSTOM_FLAG:Ljava/lang/String; = "customFlag"

.field protected static final EXECUTE_URL:Ljava/lang/String; = "executeUrl"

.field protected static final EXT_INFO:Ljava/lang/String; = "extInfo"

.field protected static final FILE_PATH:Ljava/lang/String; = "filePath"

.field protected static final GROPU_ID:Ljava/lang/String; = "groupID"

.field protected static final HASHTAG:Ljava/lang/String; = "HASHTAG"

.field protected static final HIDDEN:Ljava/lang/String; = "hidden"

.field protected static final IMAGE_ARRAY:Ljava/lang/String; = "imageArray"

.field protected static final IMAGE_DATA:Ljava/lang/String; = "imageData"

.field protected static final IMAGE_PATH:Ljava/lang/String; = "imagePath"

.field protected static final IMAGE_URL:Ljava/lang/String; = "imageUrl"

.field protected static final INSTALL_URL:Ljava/lang/String; = "installUrl"

.field protected static final IS_FAMILY:Ljava/lang/String; = "isFamily"

.field protected static final IS_FRIEND:Ljava/lang/String; = "isFriend"

.field protected static final IS_LOG_EVEN:Ljava/lang/String; = "isLogEven"

.field protected static final IS_PUBLIC:Ljava/lang/String; = "isPublic"

.field protected static final IS_SHARE_TENCENT_WEIBO:Ljava/lang/String; = "isShareTencentWeibo"

.field protected static final LATITUDE:Ljava/lang/String; = "latitude"

.field protected static final LC_CREATE_AT:Ljava/lang/String; = "lc_create_at"

.field protected static final LC_DISPLAY_NAME:Ljava/lang/String; = "lc_display_name"

.field protected static final LC_IMAGE:Ljava/lang/String; = "lc_image"

.field protected static final LC_OBJECT_TYPE:Ljava/lang/String; = "lc_object_type"

.field protected static final LC_SUMMARY:Ljava/lang/String; = "lc_summary"

.field protected static final LC_URL:Ljava/lang/String; = "lc_url"

.field protected static final LINKEDIN_DESCRIPTION:Ljava/lang/String; = "linkedinDescription"

.field protected static final LONGITUDE:Ljava/lang/String; = "longitude"

.field protected static final LOOPSHARE_PARAMS_MOBID:Ljava/lang/String; = "loopshare_params_mobid"

.field protected static final MUSIC_URL:Ljava/lang/String; = "musicUrl"

.field protected static final NOTEBOOK:Ljava/lang/String; = "notebook"

.field protected static final QQ_MINI_PROGRAM_APPID:Ljava/lang/String; = "mini_program_appid"

.field protected static final QQ_MINI_PROGRAM_PATH:Ljava/lang/String; = "mini_program_path"

.field protected static final QQ_MINI_PROGRAM_TYPE:Ljava/lang/String; = "mini_program_type"

.field protected static final QUOTE:Ljava/lang/String; = "QUOTE"

.field protected static final SAFETY_LEVEL:Ljava/lang/String; = "safetyLevel"

.field protected static final SCENCE:Ljava/lang/String; = "scene"

.field protected static final SHARE_TYPE:Ljava/lang/String; = "shareType"

.field protected static final SITE:Ljava/lang/String; = "site"

.field protected static final SITE_URL:Ljava/lang/String; = "siteUrl"

.field protected static final STACK:Ljava/lang/String; = "stack"

.field protected static final SUBREDDIT:Ljava/lang/String; = "sr"

.field protected static final TAGS:Ljava/lang/String; = "tags"

.field protected static final TEXT:Ljava/lang/String; = "text"

.field protected static final TITLE:Ljava/lang/String; = "title"

.field protected static final TITLE_URL:Ljava/lang/String; = "titleUrl"

.field protected static final URL:Ljava/lang/String; = "url"

.field protected static final VENUE_DESCRIPTION:Ljava/lang/String; = "venueDescription"

.field protected static final VENUE_NAME:Ljava/lang/String; = "venueName"

.field protected static final VIDEO_ARRAY:Ljava/lang/String; = "videoArray"

.field protected static final WX_MINIPROGRAM_MINIPROGRAM_TYPE:Ljava/lang/String; = "wxMiniProgramType"

.field protected static final WX_MINIPROGRAM_PATH:Ljava/lang/String; = "wxPath"

.field protected static final WX_MINIPROGRAM_USER_NAME:Ljava/lang/String; = "wxUserName"

.field protected static final WX_MINIPROGRAM_WITH_SHARETICKET:Ljava/lang/String; = "wxWithShareTicket"


# instance fields
.field private params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/InnerShareParams;->params:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 108
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/sharesdk/framework/InnerShareParams;-><init>(Ljava/util/HashMap;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Lcn/sharesdk/framework/InnerShareParams;-><init>()V

    if-eqz p1, :cond_0

    .line 103
    iget-object v0, p0, Lcn/sharesdk/framework/InnerShareParams;->params:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcn/sharesdk/framework/InnerShareParams;->params:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 119
    :cond_0
    const-class p1, Ljava/lang/Byte;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_10

    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_7

    .line 121
    :cond_1
    const-class p1, Ljava/lang/Short;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_6

    .line 123
    :cond_2
    const-class p1, Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_5

    .line 125
    :cond_3
    const-class p1, Ljava/lang/Long;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto/16 :goto_4

    .line 127
    :cond_4
    const-class p1, Ljava/lang/Float;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    .line 129
    :cond_5
    const-class p1, Ljava/lang/Double;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    .line 131
    :cond_6
    const-class p1, Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    .line 133
    :cond_7
    const-class p1, Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    const-class p1, Ljava/util/Map;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 p1, 0x0

    return-object p1

    .line 134
    :cond_9
    :goto_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 132
    :cond_a
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 130
    :cond_b
    :goto_2
    new-instance p1, Ljava/lang/Double;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 128
    :cond_c
    :goto_3
    new-instance p1, Ljava/lang/Float;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 126
    :cond_d
    :goto_4
    new-instance p1, Ljava/lang/Long;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 124
    :cond_e
    :goto_5
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 122
    :cond_f
    :goto_6
    new-instance p1, Ljava/lang/Short;

    invoke-direct {p1, v0}, Ljava/lang/Short;-><init>(S)V

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 120
    :cond_10
    :goto_7
    new-instance p1, Ljava/lang/Byte;

    invoke-direct {p1, v0}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 2

    .line 544
    const-class v0, Landroid/app/Activity;

    const-string v1, "activity"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 2

    .line 329
    const-class v0, Ljava/lang/String;

    const-string v1, "address"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 2

    .line 369
    const-class v0, Ljava/lang/String;

    const-string v1, "author"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 2

    .line 313
    const-class v0, Ljava/lang/String;

    const-string v1, "comment"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()I
    .locals 2

    .line 249
    const-class v0, Ljava/lang/Integer;

    const-string v1, "contentType"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCustomFlag()[Ljava/lang/String;
    .locals 2

    .line 409
    const-class v0, [Ljava/lang/String;

    const-string v1, "customFlag"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getExtInfo()Ljava/lang/String;
    .locals 2

    .line 401
    const-class v0, Ljava/lang/String;

    const-string v1, "extInfo"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 2

    .line 181
    const-class v0, Ljava/lang/String;

    const-string v1, "filePath"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 2

    .line 361
    const-class v0, Ljava/lang/String;

    const-string v1, "groupID"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHashtag()Ljava/lang/String;
    .locals 2

    .line 560
    const-class v0, Ljava/lang/String;

    const-string v1, "HASHTAG"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHidden()I
    .locals 2

    .line 257
    const-class v0, Ljava/lang/Integer;

    const-string v1, "hidden"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getImageArray()[Ljava/lang/String;
    .locals 2

    .line 425
    const-class v0, [Ljava/lang/String;

    const-string v1, "imageArray"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getImageData()Landroid/graphics/Bitmap;
    .locals 2

    .line 377
    const-class v0, Landroid/graphics/Bitmap;

    const-string v1, "imageData"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 2

    .line 165
    const-class v0, Ljava/lang/String;

    const-string v1, "imagePath"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 2

    .line 173
    const-class v0, Ljava/lang/String;

    const-string v1, "imageUrl"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()F
    .locals 2

    .line 289
    const-class v0, Ljava/lang/Float;

    const-string v1, "latitude"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getLcCreateAt()Ljava/lang/String;
    .locals 2

    .line 528
    const-class v0, Ljava/lang/String;

    const-string v1, "lc_create_at"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLcDisplayName()Ljava/lang/String;
    .locals 2

    .line 520
    const-class v0, Ljava/lang/String;

    const-string v1, "lc_display_name"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLcImage()Lorg/json/JSONObject;
    .locals 2

    .line 504
    const-class v0, Lorg/json/JSONObject;

    const-string v1, "lc_image"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public getLcObjectType()Ljava/lang/String;
    .locals 2

    .line 512
    const-class v0, Ljava/lang/String;

    const-string v1, "lc_object_type"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLcSummary()Ljava/lang/String;
    .locals 2

    .line 496
    const-class v0, Ljava/lang/String;

    const-string v1, "lc_summary"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLcUrl()Ljava/lang/String;
    .locals 2

    .line 536
    const-class v0, Ljava/lang/String;

    const-string v1, "lc_url"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLinkedinDsscription()Ljava/lang/String;
    .locals 2

    .line 281
    const-class v0, Ljava/lang/String;

    const-string v1, "linkedinDescription"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()F
    .locals 2

    .line 297
    const-class v0, Ljava/lang/Float;

    const-string v1, "longitude"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getLoopshareCustomParams()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 592
    const-class v0, Ljava/util/HashMap;

    const-string v1, "loopshare_params_mobid"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public getMusicUrl()Ljava/lang/String;
    .locals 2

    .line 337
    const-class v0, Ljava/lang/String;

    const-string v1, "musicUrl"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNotebook()Ljava/lang/String;
    .locals 2

    .line 193
    const-class v0, Ljava/lang/String;

    const-string v1, "notebook"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOpenCustomEven()Z
    .locals 2

    .line 475
    const-class v0, Ljava/lang/Boolean;

    const-string v1, "isLogEven"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getQQMiniProgramAppid()Ljava/lang/String;
    .locals 2

    .line 568
    const-class v0, Ljava/lang/String;

    const-string v1, "mini_program_appid"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getQQMiniProgramPath()Ljava/lang/String;
    .locals 2

    .line 576
    const-class v0, Ljava/lang/String;

    const-string v1, "mini_program_path"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getQQMiniProgramType()Ljava/lang/String;
    .locals 2

    .line 584
    const-class v0, Ljava/lang/String;

    const-string v1, "mini_program_type"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getQuote()Ljava/lang/String;
    .locals 2

    .line 552
    const-class v0, Ljava/lang/String;

    const-string v1, "QUOTE"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSafetyLevel()I
    .locals 2

    .line 241
    const-class v0, Ljava/lang/Integer;

    const-string v1, "safetyLevel"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getScence()I
    .locals 2

    .line 393
    const-class v0, Ljava/lang/Integer;

    const-string v1, "scene"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getShareType()I
    .locals 2

    .line 385
    const-class v0, Ljava/lang/Integer;

    const-string v1, "shareType"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSite()Ljava/lang/String;
    .locals 2

    .line 345
    const-class v0, Ljava/lang/String;

    const-string v1, "site"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSiteUrl()Ljava/lang/String;
    .locals 2

    .line 353
    const-class v0, Ljava/lang/String;

    const-string v1, "siteUrl"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStack()Ljava/lang/String;
    .locals 2

    .line 201
    const-class v0, Ljava/lang/String;

    const-string v1, "stack"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSubreddit()Ljava/lang/String;
    .locals 2

    .line 487
    const-class v0, Ljava/lang/String;

    const-string v1, "sr"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTags()[Ljava/lang/String;
    .locals 2

    .line 209
    const-class v0, [Ljava/lang/String;

    const-string v1, "tags"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .line 157
    const-class v0, Ljava/lang/String;

    const-string v1, "text"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 185
    const-class v0, Ljava/lang/String;

    const-string v1, "title"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTitleUrl()Ljava/lang/String;
    .locals 2

    .line 305
    const-class v0, Ljava/lang/String;

    const-string v1, "titleUrl"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .line 321
    const-class v0, Ljava/lang/String;

    const-string v1, "url"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVenueDescription()Ljava/lang/String;
    .locals 2

    .line 273
    const-class v0, Ljava/lang/String;

    const-string v1, "venueDescription"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVenueName()Ljava/lang/String;
    .locals 2

    .line 269
    const-class v0, Ljava/lang/String;

    const-string v1, "venueName"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVideoPathArray()[Ljava/lang/String;
    .locals 2

    .line 434
    const-class v0, [Ljava/lang/String;

    const-string v1, "videoArray"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getWxMiniProgramType()I
    .locals 2

    .line 467
    const-class v0, Ljava/lang/Integer;

    const-string v1, "wxMiniProgramType"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getWxPath()Ljava/lang/String;
    .locals 2

    .line 451
    const-class v0, Ljava/lang/String;

    const-string v1, "wxPath"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getWxUserName()Ljava/lang/String;
    .locals 2

    .line 443
    const-class v0, Ljava/lang/String;

    const-string v1, "wxUserName"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getWxWithShareTicket()Z
    .locals 2

    .line 459
    const-class v0, Ljava/lang/Boolean;

    const-string v1, "wxWithShareTicket"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isFamily()Z
    .locals 2

    .line 233
    const-class v0, Ljava/lang/Boolean;

    const-string v1, "isFamily"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isFriend()Z
    .locals 2

    .line 225
    const-class v0, Ljava/lang/Boolean;

    const-string v1, "isFriend"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isPublic()Z
    .locals 2

    .line 217
    const-class v0, Ljava/lang/Boolean;

    const-string v1, "isPublic"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isShareTencentWeibo()Z
    .locals 2

    .line 417
    const-class v0, Ljava/lang/Boolean;

    const-string v1, "isShareTencentWeibo"

    invoke-virtual {p0, v1, v0}, Lcn/sharesdk/framework/InnerShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcn/sharesdk/framework/InnerShareParams;->params:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    .line 540
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 1

    const-string v0, "address"

    .line 333
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 1

    const-string v0, "author"

    .line 373
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 1

    const-string v0, "comment"

    .line 317
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setContentType(I)V
    .locals 1

    .line 253
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "contentType"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCustomFlag([Ljava/lang/String;)V
    .locals 1

    const-string v0, "customFlag"

    .line 413
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setExtInfo(Ljava/lang/String;)V
    .locals 1

    const-string v0, "extInfo"

    .line 405
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFamily(Z)V
    .locals 1

    .line 237
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "isFamily"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 1

    const-string v0, "filePath"

    .line 177
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFriend(Z)V
    .locals 1

    .line 229
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "isFriend"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "groupID"

    .line 365
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setHashtag(Ljava/lang/String;)V
    .locals 1

    const-string v0, "HASHTAG"

    .line 556
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setHidden(I)V
    .locals 1

    .line 261
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "hidden"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setImageArray([Ljava/lang/String;)V
    .locals 1

    const-string v0, "imageArray"

    .line 429
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setImageData(Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "imageData"

    .line 381
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 1

    const-string v0, "imagePath"

    .line 161
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "imageUrl"

    .line 169
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLatitude(F)V
    .locals 1

    .line 293
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "latitude"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLcCreateAt(Ljava/lang/String;)V
    .locals 1

    const-string v0, "lc_create_at"

    .line 524
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLcDisplayName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "lc_display_name"

    .line 516
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLcImage(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "lc_image"

    .line 500
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLcObjectType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "lc_object_type"

    .line 508
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLcSummary(Ljava/lang/String;)V
    .locals 1

    const-string v0, "lc_summary"

    .line 492
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLcUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "lc_url"

    .line 532
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLinkedinDescription(Ljava/lang/String;)V
    .locals 1

    const-string v0, "linkedinDescription"

    .line 285
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLongitude(F)V
    .locals 1

    .line 301
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "longitude"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLoopshareCustomParams(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "loopshare_params_mobid"

    .line 588
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMusicUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "musicUrl"

    .line 341
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setNotebook(Ljava/lang/String;)V
    .locals 1

    const-string v0, "notebook"

    .line 197
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setOpenCustomEven(Z)V
    .locals 1

    .line 479
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "isLogEven"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPublic(Z)V
    .locals 1

    .line 221
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "isPublic"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setQQMiniProgramAppid(Ljava/lang/String;)V
    .locals 1

    const-string v0, "mini_program_appid"

    .line 564
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setQQMiniProgramPath(Ljava/lang/String;)V
    .locals 1

    const-string v0, "mini_program_path"

    .line 572
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setQQMiniProgramType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "mini_program_type"

    .line 580
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setQuote(Ljava/lang/String;)V
    .locals 1

    const-string v0, "QUOTE"

    .line 548
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSafetyLevel(I)V
    .locals 1

    .line 245
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "safetyLevel"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setScence(I)V
    .locals 1

    .line 397
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "scene"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setShareTencentWeibo(Z)V
    .locals 1

    .line 421
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "isShareTencentWeibo"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setShareType(I)V
    .locals 1

    .line 389
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "shareType"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSite(Ljava/lang/String;)V
    .locals 1

    const-string v0, "site"

    .line 349
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSiteUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "siteUrl"

    .line 357
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setStack(Ljava/lang/String;)V
    .locals 1

    const-string v0, "stack"

    .line 205
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSubreddit(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sr"

    .line 483
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTags([Ljava/lang/String;)V
    .locals 1

    const-string v0, "tags"

    .line 213
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    .line 153
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "title"

    .line 189
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTitleUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "titleUrl"

    .line 309
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    .line 325
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setVenueDescription(Ljava/lang/String;)V
    .locals 1

    const-string v0, "venueDescription"

    .line 277
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setVenueName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "venueName"

    .line 265
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setVideoPathArray([Ljava/lang/String;)V
    .locals 1

    const-string v0, "videoArray"

    .line 439
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setWxMiniProgramType(I)V
    .locals 1

    .line 471
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "wxMiniProgramType"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setWxPath(Ljava/lang/String;)V
    .locals 1

    const-string v0, "wxPath"

    .line 455
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setWxUserName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "wxUserName"

    .line 447
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setWxWithShareTicket(Z)V
    .locals 1

    .line 463
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "wxWithShareTicket"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public toMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcn/sharesdk/framework/InnerShareParams;->params:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 145
    :try_start_0
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    iget-object v1, p0, Lcn/sharesdk/framework/InnerShareParams;->params:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 147
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method
