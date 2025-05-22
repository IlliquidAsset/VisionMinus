.class public Lcn/sharesdk/loopshare/utils/h;
.super Ljava/lang/Object;
.source "Protocol.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/mob/tools/utils/DeviceHelper;

.field private static c:Lcom/mob/tools/utils/Hashon;

.field private static d:Lcn/sharesdk/loopshare/beans/ConfigData;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/sharesdk/loopshare/utils/h;->a(Landroid/content/Context;)V

    const-string v0, "http://api.applink.mob.com"

    .line 61
    sput-object v0, Lcn/sharesdk/loopshare/utils/h;->e:Ljava/lang/String;

    .line 62
    sput-object v0, Lcn/sharesdk/loopshare/utils/h;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcn/sharesdk/loopshare/beans/ConfigData;
    .locals 4

    .line 245
    sget-object v0, Lcn/sharesdk/loopshare/utils/h;->d:Lcn/sharesdk/loopshare/beans/ConfigData;

    if-nez v0, :cond_3

    .line 246
    invoke-static {}, Lcn/sharesdk/loopshare/MobLink;->getSdkTag()Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-static {v0}, Lcom/mob/commons/eventrecoder/EventRecorder;->checkRecord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "event_id_config"

    .line 248
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    .line 250
    invoke-static {v1}, Lcn/sharesdk/loopshare/utils/i;->a(Ljava/lang/String;)V

    .line 252
    :cond_0
    invoke-static {}, Lcom/mob/commons/eventrecoder/EventRecorder;->prepare()V

    .line 253
    invoke-static {}, Lcom/mob/commons/eventrecoder/EventRecorder;->clear()V

    .line 255
    invoke-static {v0, v2}, Lcom/mob/commons/eventrecoder/EventRecorder;->addBegin(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 257
    invoke-static {}, Lcn/sharesdk/loopshare/utils/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 259
    sget-object v1, Lcn/sharesdk/loopshare/utils/h;->c:Lcom/mob/tools/utils/Hashon;

    const-class v3, Lcn/sharesdk/loopshare/beans/ConfigData;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/sharesdk/loopshare/beans/ConfigData;

    .line 262
    :cond_1
    sput-object v1, Lcn/sharesdk/loopshare/utils/h;->d:Lcn/sharesdk/loopshare/beans/ConfigData;

    .line 263
    invoke-static {v1}, Lcn/sharesdk/loopshare/utils/h;->e(Lcn/sharesdk/loopshare/beans/ConfigData;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 264
    new-instance v2, Lcn/sharesdk/loopshare/utils/h$1;

    invoke-direct {v2, v1}, Lcn/sharesdk/loopshare/utils/h$1;-><init>(Z)V

    invoke-static {v2}, Lcom/mob/tools/RxMob;->create(Lcom/mob/tools/RxMob$OnSubscribe;)Lcom/mob/tools/RxMob$Subscribable;

    move-result-object v2

    if-eqz v1, :cond_2

    .line 281
    sget-object v1, Lcom/mob/tools/RxMob$Thread;->IMMEDIATE:Lcom/mob/tools/RxMob$Thread;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/mob/tools/RxMob$Thread;->NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

    :goto_0
    invoke-virtual {v2, v1}, Lcom/mob/tools/RxMob$Subscribable;->subscribeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 282
    sget-object v1, Lcom/mob/tools/RxMob$Thread;->IMMEDIATE:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {v2, v1}, Lcom/mob/tools/RxMob$Subscribable;->observeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 283
    new-instance v1, Lcn/sharesdk/loopshare/utils/h$2;

    invoke-direct {v1, v0}, Lcn/sharesdk/loopshare/utils/h$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/mob/tools/RxMob$Subscribable;->subscribe(Lcom/mob/tools/RxMob$Subscriber;)V

    .line 293
    :cond_3
    sget-object v0, Lcn/sharesdk/loopshare/utils/h;->d:Lcn/sharesdk/loopshare/beans/ConfigData;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/HashMap;)Lcn/sharesdk/loopshare/beans/LinkData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcn/sharesdk/loopshare/beans/LinkData;"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 141
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appkey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "plat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v1, Lcn/sharesdk/loopshare/utils/h;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getOSVersionName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sysver"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v1, Lcn/sharesdk/loopshare/utils/h;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getAppVersionName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appver"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-static {}, Lcn/sharesdk/loopshare/utils/h;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "duid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "path"

    .line 146
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "params"

    .line 147
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-static {}, Lcn/sharesdk/loopshare/utils/h;->f()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/sharesdk/loopshare/utils/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-class p1, Lcn/sharesdk/loopshare/beans/LinkData;

    invoke-static {v0, p0, p1}, Lcn/sharesdk/loopshare/utils/h;->b(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Lcn/sharesdk/loopshare/beans/ServerData;

    move-result-object p0

    check-cast p0, Lcn/sharesdk/loopshare/beans/LinkData;

    return-object p0
.end method

.method public static a(Ljava/lang/String;II)Lcn/sharesdk/loopshare/beans/LogData;
    .locals 3

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 178
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appkey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 179
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "plat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "link"

    .line 180
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object p0, Lcn/sharesdk/loopshare/utils/h;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getOSVersionName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "sysver"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {}, Lcn/sharesdk/loopshare/MobLink;->getSdkVersion()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "sdkver"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object p0, Lcn/sharesdk/loopshare/utils/h;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getAppVersionName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "appver"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object p0, Lcn/sharesdk/loopshare/utils/h;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "apppkg"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object p0, Lcn/sharesdk/loopshare/utils/h;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object p0

    const-string v1, "model"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object p0, Lcn/sharesdk/loopshare/utils/h;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    move-result-object p0

    const-string v1, "networktype"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object p0, Lcn/sharesdk/loopshare/utils/h;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getCarrier()Ljava/lang/String;

    move-result-object p0

    const-string v1, "carrier"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-static {}, Lcn/sharesdk/loopshare/utils/h;->j()Ljava/lang/String;

    move-result-object p0

    const-string v1, "duid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "source"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-static {}, Lcn/sharesdk/loopshare/utils/h;->h()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/sharesdk/loopshare/utils/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-class p1, Lcn/sharesdk/loopshare/beans/LogData;

    invoke-static {v0, p0, p1}, Lcn/sharesdk/loopshare/utils/h;->b(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Lcn/sharesdk/loopshare/beans/ServerData;

    move-result-object p0

    check-cast p0, Lcn/sharesdk/loopshare/beans/LogData;

    return-object p0
.end method

.method public static a(I)Lcn/sharesdk/loopshare/beans/SceneData;
    .locals 3

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 158
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appkey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "plat"

    const-string v2, "1"

    .line 159
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v1, Lcn/sharesdk/loopshare/utils/h;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getOSVersionName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sysver"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-static {}, Lcn/sharesdk/loopshare/MobLink;->getSdkVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sdkver"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v1, Lcn/sharesdk/loopshare/utils/h;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getAppVersionName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appver"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v1, Lcn/sharesdk/loopshare/utils/h;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "model"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-static {}, Lcn/sharesdk/loopshare/utils/h;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "duid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v1, Lcn/sharesdk/loopshare/utils/h;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    move-result-object v1

    const-string v2, "networktype"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 166
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 167
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "run"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-static {}, Lcn/sharesdk/loopshare/utils/h;->g()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/sharesdk/loopshare/utils/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcn/sharesdk/loopshare/beans/SceneData;

    invoke-static {v0, p0, v1}, Lcn/sharesdk/loopshare/utils/h;->b(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Lcn/sharesdk/loopshare/beans/ServerData;

    move-result-object p0

    check-cast p0, Lcn/sharesdk/loopshare/beans/SceneData;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lcn/sharesdk/loopshare/beans/SceneData;
    .locals 3

    .line 310
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 311
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appkey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 312
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "plat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "link"

    .line 313
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object p0, Lcn/sharesdk/loopshare/utils/h;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getOSVersionName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "sysver"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object p0, Lcn/sharesdk/loopshare/utils/h;->b:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getAppVersionName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "appver"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-static {}, Lcn/sharesdk/loopshare/utils/h;->j()Ljava/lang/String;

    move-result-object p0

    const-string v1, "duid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-static {}, Lcn/sharesdk/loopshare/utils/h;->i()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/sharesdk/loopshare/utils/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcn/sharesdk/loopshare/beans/SceneData;

    invoke-static {v0, p0, v1}, Lcn/sharesdk/loopshare/utils/h;->b(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Lcn/sharesdk/loopshare/beans/ServerData;

    move-result-object p0

    check-cast p0, Lcn/sharesdk/loopshare/beans/SceneData;

    return-object p0
.end method

.method static synthetic a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Lcn/sharesdk/loopshare/beans/ServerData;
    .locals 0

    .line 27
    invoke-static {p0, p1, p2}, Lcn/sharesdk/loopshare/utils/h;->b(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Lcn/sharesdk/loopshare/beans/ServerData;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Z)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-static {p0}, Lcn/sharesdk/loopshare/utils/h;->b(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .line 67
    new-instance p0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    sput-object p0, Lcn/sharesdk/loopshare/utils/h;->c:Lcom/mob/tools/utils/Hashon;

    .line 68
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object p0

    sput-object p0, Lcn/sharesdk/loopshare/utils/h;->b:Lcom/mob/tools/utils/DeviceHelper;

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/loopshare/beans/ConfigData;)Z
    .locals 0

    .line 27
    invoke-static {p0}, Lcn/sharesdk/loopshare/utils/h;->e(Lcn/sharesdk/loopshare/beans/ConfigData;)Z

    move-result p0

    return p0
.end method

.method public static b()Lcn/sharesdk/loopshare/beans/ConfigData;
    .locals 1

    .line 301
    sget-object v0, Lcn/sharesdk/loopshare/utils/h;->d:Lcn/sharesdk/loopshare/beans/ConfigData;

    return-object v0
.end method

.method static synthetic b(Lcn/sharesdk/loopshare/beans/ConfigData;)Lcn/sharesdk/loopshare/beans/ConfigData;
    .locals 0

    .line 27
    sput-object p0, Lcn/sharesdk/loopshare/utils/h;->d:Lcn/sharesdk/loopshare/beans/ConfigData;

    return-object p0
.end method

.method private static b(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Lcn/sharesdk/loopshare/beans/ServerData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/sharesdk/loopshare/beans/ServerData;",
            ">(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "status"

    .line 220
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 221
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "[MOBLINK]%s"

    invoke-virtual {v2, v4, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 223
    :try_start_0
    new-instance v2, Lcom/mob/MobCommunicator;

    const/16 v3, 0x400

    const-string v4, "d6c42369216f886092bea6cc42977ec0b917508b9d21e2e3b3447d47f500551ddcf1b41a294f081da5fad98b270fd8b99479a5958db8528f9231a4156742b847"

    const-string v6, "160cb541521f5eafde6138e6c1a3583f529cba9c06618f373e7923460ec5adf715b1d49fda021d6f227e6c7f1c456d4914988d6748b6aab17226f91be6825a730dd0b6aed2f06c877d655bd8c165f60792c518280a46c1695da131f8e4a6c0d5bd1b1ab34f2ec96bae2d796272d1f099a05af736a81b1c6a5969b5a0618abde5"

    invoke-direct {v2, v3, v4, v6}, Lcom/mob/MobCommunicator;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v2, p0, p1, v5}, Lcom/mob/MobCommunicator;->requestSynchronized(Ljava/util/HashMap;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p0

    const/16 p1, 0xc8

    .line 225
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "res"

    .line 226
    invoke-virtual {v1, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 228
    instance-of p1, p0, Lcom/mob/MobCommunicator$NetworkError;

    if-eqz p1, :cond_0

    .line 229
    sget-object p1, Lcn/sharesdk/loopshare/utils/h;->c:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/16 p1, 0x2710

    .line 231
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "error"

    invoke-virtual {v1, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :goto_0
    sget-object p0, Lcn/sharesdk/loopshare/utils/h;->c:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {p0, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    .line 237
    sget-object p1, Lcn/sharesdk/loopshare/utils/h;->c:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {p1, p0, p2}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/sharesdk/loopshare/beans/ServerData;

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 326
    :try_start_0
    invoke-static {p0}, Lcom/mob/MobSDK;->checkRequestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 328
    :catchall_0
    invoke-static {}, Lcn/sharesdk/loopshare/utils/f;->b()Lcom/mob/tools/log/NLog;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "checkHttpRequestUrl method of MobSDK is exception"

    aput-object v2, v0, v1

    const-string v1, "[MOBLINK]%s"

    invoke-virtual {p0, v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    const-string p0, ""

    return-object p0
.end method

.method private static b(Z)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 90
    sget-object p0, Lcn/sharesdk/loopshare/utils/h;->e:Ljava/lang/String;

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {}, Lcn/sharesdk/loopshare/utils/h;->a()Lcn/sharesdk/loopshare/beans/ConfigData;

    move-result-object p0

    invoke-static {p0}, Lcn/sharesdk/loopshare/utils/h;->c(Lcn/sharesdk/loopshare/beans/ConfigData;)Ljava/lang/String;

    move-result-object p0

    .line 94
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/client/conf"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c()Lcom/mob/tools/utils/DeviceHelper;
    .locals 1

    .line 27
    sget-object v0, Lcn/sharesdk/loopshare/utils/h;->b:Lcom/mob/tools/utils/DeviceHelper;

    return-object v0
.end method

.method private static c(Lcn/sharesdk/loopshare/beans/ConfigData;)Ljava/lang/String;
    .locals 3

    .line 73
    invoke-static {p0}, Lcn/sharesdk/loopshare/utils/h;->e(Lcn/sharesdk/loopshare/beans/ConfigData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcn/sharesdk/loopshare/beans/ConfigData;->b()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lcn/sharesdk/loopshare/beans/ConfigData;->c()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 76
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 81
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    sget-object p0, Lcn/sharesdk/loopshare/utils/h;->e:Ljava/lang/String;

    :cond_1
    return-object p0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .line 27
    invoke-static {}, Lcn/sharesdk/loopshare/utils/h;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(Lcn/sharesdk/loopshare/beans/ConfigData;)Ljava/lang/String;
    .locals 3

    .line 100
    invoke-static {p0}, Lcn/sharesdk/loopshare/utils/h;->e(Lcn/sharesdk/loopshare/beans/ConfigData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcn/sharesdk/loopshare/beans/ConfigData;->f()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-virtual {p0}, Lcn/sharesdk/loopshare/beans/ConfigData;->g()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 103
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 108
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    sget-object p0, Lcn/sharesdk/loopshare/utils/h;->f:Ljava/lang/String;

    :cond_1
    return-object p0
.end method

.method static synthetic e()Lcom/mob/tools/utils/Hashon;
    .locals 1

    .line 27
    sget-object v0, Lcn/sharesdk/loopshare/utils/h;->c:Lcom/mob/tools/utils/Hashon;

    return-object v0
.end method

.method private static e(Lcn/sharesdk/loopshare/beans/ConfigData;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 212
    invoke-static {p0}, Lcn/sharesdk/loopshare/beans/ServerData;->a(Lcn/sharesdk/loopshare/beans/ServerData;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static f()Ljava/lang/String;
    .locals 2

    .line 116
    invoke-static {}, Lcn/sharesdk/loopshare/utils/h;->a()Lcn/sharesdk/loopshare/beans/ConfigData;

    move-result-object v0

    invoke-static {v0}, Lcn/sharesdk/loopshare/utils/h;->c(Lcn/sharesdk/loopshare/beans/ConfigData;)Ljava/lang/String;

    move-result-object v0

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/client/link"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static g()Ljava/lang/String;
    .locals 2

    .line 121
    invoke-static {}, Lcn/sharesdk/loopshare/utils/h;->a()Lcn/sharesdk/loopshare/beans/ConfigData;

    move-result-object v0

    invoke-static {v0}, Lcn/sharesdk/loopshare/utils/h;->c(Lcn/sharesdk/loopshare/beans/ConfigData;)Ljava/lang/String;

    move-result-object v0

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/client/reco"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static h()Ljava/lang/String;
    .locals 2

    .line 126
    invoke-static {}, Lcn/sharesdk/loopshare/utils/h;->a()Lcn/sharesdk/loopshare/beans/ConfigData;

    move-result-object v0

    invoke-static {v0}, Lcn/sharesdk/loopshare/utils/h;->d(Lcn/sharesdk/loopshare/beans/ConfigData;)Ljava/lang/String;

    move-result-object v0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/client/log"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static i()Ljava/lang/String;
    .locals 2

    .line 131
    invoke-static {}, Lcn/sharesdk/loopshare/utils/h;->a()Lcn/sharesdk/loopshare/beans/ConfigData;

    move-result-object v0

    invoke-static {v0}, Lcn/sharesdk/loopshare/utils/h;->d(Lcn/sharesdk/loopshare/beans/ConfigData;)Ljava/lang/String;

    move-result-object v0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/client/ul"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static j()Ljava/lang/String;
    .locals 2

    .line 200
    sget-object v0, Lcn/sharesdk/loopshare/utils/h;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const-class v0, Lcn/sharesdk/loopshare/utils/h;

    monitor-enter v0

    .line 202
    :try_start_0
    sget-object v1, Lcn/sharesdk/loopshare/utils/h;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 205
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 207
    :cond_0
    :goto_0
    sget-object v0, Lcn/sharesdk/loopshare/utils/h;->a:Ljava/lang/String;

    return-object v0
.end method
