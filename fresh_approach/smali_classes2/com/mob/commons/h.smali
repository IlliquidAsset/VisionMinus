.class public Lcom/mob/commons/h;
.super Ljava/lang/Object;
.source "PolicyFetcher.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mob/commons/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/privacy/policy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/h;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lcom/mob/commons/i;->w()I

    move-result v0

    iput v0, p0, Lcom/mob/commons/h;->b:I

    .line 33
    invoke-static {}, Lcom/mob/commons/i;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/h;->c:Ljava/lang/String;

    .line 34
    invoke-static {}, Lcom/mob/commons/i;->y()I

    move-result v0

    iput v0, p0, Lcom/mob/commons/h;->d:I

    .line 35
    invoke-static {}, Lcom/mob/commons/i;->x()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/h;->e:Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/mob/commons/i;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/h;->f:Ljava/lang/String;

    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 154
    new-instance v0, Lcom/mob/PrivacyPolicy;

    invoke-direct {v0, p3}, Lcom/mob/PrivacyPolicy;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 156
    iput-object p3, p0, Lcom/mob/commons/h;->e:Ljava/lang/String;

    .line 157
    invoke-virtual {v0}, Lcom/mob/PrivacyPolicy;->getPpVersion()I

    move-result p1

    iput p1, p0, Lcom/mob/commons/h;->d:I

    .line 158
    iget-object p1, p0, Lcom/mob/commons/h;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/mob/commons/i;->l(Ljava/lang/String;)V

    .line 159
    iget p1, p0, Lcom/mob/commons/h;->d:I

    invoke-static {p1}, Lcom/mob/commons/i;->b(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 161
    iput-object p3, p0, Lcom/mob/commons/h;->c:Ljava/lang/String;

    .line 162
    invoke-virtual {v0}, Lcom/mob/PrivacyPolicy;->getPpVersion()I

    move-result p1

    iput p1, p0, Lcom/mob/commons/h;->b:I

    .line 163
    iget-object p1, p0, Lcom/mob/commons/h;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/mob/commons/i;->k(Ljava/lang/String;)V

    .line 164
    iget p1, p0, Lcom/mob/commons/h;->b:I

    invoke-static {p1}, Lcom/mob/commons/i;->a(I)V

    .line 166
    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/mob/commons/h;->f:Ljava/lang/String;

    .line 167
    invoke-static {p2}, Lcom/mob/commons/i;->m(Ljava/lang/String;)V

    return-void
.end method

.method private c(ILjava/util/Locale;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    .line 75
    iget-object p1, p0, Lcom/mob/commons/h;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    .line 78
    :cond_0
    iget p1, p0, Lcom/mob/commons/h;->d:I

    invoke-static {}, Lcom/mob/commons/a;->h()I

    move-result v2

    if-ge p1, v2, :cond_1

    return v1

    :cond_1
    if-eqz p2, :cond_2

    .line 81
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/mob/commons/h;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_7

    .line 86
    iget-object p1, p0, Lcom/mob/commons/h;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    .line 89
    :cond_4
    iget p1, p0, Lcom/mob/commons/h;->b:I

    invoke-static {}, Lcom/mob/commons/a;->h()I

    move-result v2

    if-ge p1, v2, :cond_5

    return v1

    :cond_5
    if-eqz p2, :cond_6

    .line 92
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/mob/commons/h;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0

    :cond_7
    return v1
.end method


# virtual methods
.method public a(ILjava/util/Locale;)Lcom/mob/PrivacyPolicy;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameter \'type\' should be either 1 or 2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    .line 46
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_2

    .line 47
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 48
    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 p2, 0x0

    .line 49
    invoke-virtual {v1, p2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p2

    goto :goto_1

    .line 52
    :cond_2
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 57
    :cond_3
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/mob/commons/h;->c(ILjava/util/Locale;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-ne p1, v0, :cond_4

    .line 60
    new-instance p1, Lcom/mob/PrivacyPolicy;

    iget-object p2, p0, Lcom/mob/commons/h;->e:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/mob/PrivacyPolicy;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 62
    :cond_4
    new-instance p1, Lcom/mob/PrivacyPolicy;

    iget-object p2, p0, Lcom/mob/commons/h;->c:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/mob/PrivacyPolicy;-><init>(Ljava/lang/String;)V

    :goto_2
    return-object p1

    .line 70
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/mob/commons/h;->b(ILjava/util/Locale;)Lcom/mob/PrivacyPolicy;

    move-result-object p1

    return-object p1
.end method

.method public b(ILjava/util/Locale;)Lcom/mob/PrivacyPolicy;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 101
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    .line 102
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 105
    new-instance v3, Lcom/mob/tools/network/KVPair;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "type"

    invoke-direct {v3, v5, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v3, Lcom/mob/tools/network/KVPair;

    const-string v4, "appkey"

    invoke-direct {v3, v4, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v3, "apppkg"

    invoke-direct {v1, v3, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 110
    invoke-static {}, Lcom/mob/commons/i;->y()I

    move-result v0

    goto :goto_0

    .line 112
    :cond_0
    invoke-static {}, Lcom/mob/commons/i;->w()I

    move-result v0

    .line 114
    :goto_0
    new-instance v1, Lcom/mob/tools/network/KVPair;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "ppVersion"

    invoke-direct {v1, v3, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v0, Lcom/mob/tools/network/KVPair;

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "language"

    invoke-direct {v0, v3, v1}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v0, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    const/16 v1, 0x7530

    .line 117
    iput v1, v0, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    const/16 v1, 0x2710

    .line 118
    iput v1, v0, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    new-instance v3, Lcom/mob/tools/network/KVPair;

    invoke-static {}, Lcom/mob/commons/MobProductCollector;->getUserIdentity()Ljava/lang/String;

    move-result-object v4

    const-string v5, "User-Identity"

    invoke-direct {v3, v5, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/mob/commons/h;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\nHeaders: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\nValues: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 126
    new-instance v3, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v3}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    .line 127
    sget-object v4, Lcom/mob/commons/h;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/mob/tools/network/NetworkHelper;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 129
    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    .line 130
    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "Response is illegal: "

    if-eqz v2, :cond_4

    const-string v4, "code"

    .line 135
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "200"

    .line 136
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "data"

    .line 140
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 144
    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/Hashon;->fromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 149
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v1}, Lcom/mob/commons/h;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 150
    new-instance p1, Lcom/mob/PrivacyPolicy;

    invoke-direct {p1, v1}, Lcom/mob/PrivacyPolicy;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 146
    :cond_1
    new-instance p1, Ljava/lang/Throwable;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    .line 142
    :cond_2
    new-instance p1, Ljava/lang/Throwable;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_3
    new-instance p1, Ljava/lang/Throwable;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response code is not 200: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :cond_4
    new-instance p1, Ljava/lang/Throwable;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw p1
.end method
