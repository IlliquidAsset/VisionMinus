.class public final Lcom/powervision/base/utils/SharedPreferencesUtils;
.super Ljava/lang/Object;
.source "SharedPreferencesUtils.java"


# static fields
.field private static final SHARED_NAME:Ljava/lang/String; = "newvisionplus"

.field private static sSPUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    const-string v1, "newvisionplus"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/base/base/BaseApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mPreferences:Landroid/content/SharedPreferences;

    .line 33
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static getInstance()Lcom/powervision/base/utils/SharedPreferencesUtils;
    .locals 2

    .line 42
    sget-object v0, Lcom/powervision/base/utils/SharedPreferencesUtils;->sSPUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    if-nez v0, :cond_1

    .line 43
    const-class v0, Lcom/powervision/base/utils/SharedPreferencesUtils;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/powervision/base/utils/SharedPreferencesUtils;->sSPUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/powervision/base/utils/SharedPreferencesUtils;

    invoke-direct {v1}, Lcom/powervision/base/utils/SharedPreferencesUtils;-><init>()V

    sput-object v1, Lcom/powervision/base/utils/SharedPreferencesUtils;->sSPUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    .line 47
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 49
    :cond_1
    :goto_0
    sget-object v0, Lcom/powervision/base/utils/SharedPreferencesUtils;->sSPUtils:Lcom/powervision/base/utils/SharedPreferencesUtils;

    return-object v0
.end method


# virtual methods
.method public clearAll()V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    const-string v0, "isLogin"
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :cond_0
    const/4 p1, 0x1
    return p1
    :cond_0
    .line 98
    iget-object v0, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    move-result p1
    return p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUserInfo()Lcom/powervision/base/model/UserInfo;
    .locals 6

    .line 191
    new-instance v0, Lcom/powervision/base/model/UserInfo;

    invoke-direct {v0}, Lcom/powervision/base/model/UserInfo;-><init>()V

    .line 192
    iget-object v1, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "addtime"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/model/UserInfo;->setAddtime(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "birthday"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/model/UserInfo;->setBirthday(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "city"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/model/UserInfo;->setCity(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "country"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/model/UserInfo;->setCountry(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "headImage"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/model/UserInfo;->setHeadImage(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "appkey"

    const-wide/16 v4, 0x1

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/model/UserInfo;->setId(Ljava/lang/Long;)V

    .line 198
    iget-object v1, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "ipCity"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/model/UserInfo;->setIpCity(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "nickName"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/model/UserInfo;->setNickname(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "sex"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/model/UserInfo;->setSex(Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "signature"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/model/UserInfo;->setSignature(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "userId"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/model/UserInfo;->setUserId(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "useremail"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/model/UserInfo;->setUseremail(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "userName"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/model/UserInfo;->setUsername(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "userPhone"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/model/UserInfo;->setUserphone(Ljava/lang/String;)V

    return-object v0
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 59
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mEditor:Landroid/content/SharedPreferences$Editor;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 61
    :cond_0
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mEditor:Landroid/content/SharedPreferences$Editor;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 63
    :cond_1
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mEditor:Landroid/content/SharedPreferences$Editor;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 65
    :cond_2
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 66
    iget-object v0, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mEditor:Landroid/content/SharedPreferences$Editor;

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 67
    :cond_3
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 68
    iget-object v0, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mEditor:Landroid/content/SharedPreferences$Editor;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 70
    :cond_4
    iget-object v0, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    :goto_0
    iget-object p1, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveUserInfo(Lcom/powervision/base/model/UserInfo;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 165
    iget-object v0, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/powervision/base/model/UserInfo;->getAddtime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "addtime"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 166
    iget-object v0, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/powervision/base/model/UserInfo;->getBirthday()Ljava/lang/String;

    move-result-object v1

    const-string v2, "birthday"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 167
    iget-object v0, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/powervision/base/model/UserInfo;->getCity()Ljava/lang/String;

    move-result-object v1

    const-string v2, "city"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 168
    iget-object v0, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/powervision/base/model/UserInfo;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "country"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-virtual {p1}, Lcom/powervision/base/model/UserInfo;->getHeadImage()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://gcsbucket.oss-cn-hongkong.aliyuncs.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "headImage"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 174
    iget-object v0, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/powervision/base/model/UserInfo;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "id"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 175
    iget-object v0, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/powervision/base/model/UserInfo;->getIpCity()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ipCity"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 176
    iget-object v0, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/powervision/base/model/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nickName"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 177
    iget-object v0, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/powervision/base/model/UserInfo;->getSex()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sex"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 178
    iget-object v0, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/powervision/base/model/UserInfo;->getSignature()Ljava/lang/String;

    move-result-object v1

    const-string v2, "signature"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    iget-object v0, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/powervision/base/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 180
    iget-object v0, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/powervision/base/model/UserInfo;->getUseremail()Ljava/lang/String;

    move-result-object v1

    const-string v2, "useremail"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 181
    iget-object v0, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/powervision/base/model/UserInfo;->getUsername()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userName"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 182
    iget-object v0, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/powervision/base/model/UserInfo;->getUserphone()Ljava/lang/String;

    move-result-object p1

    const-string v1, "userPhone"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 184
    :cond_1
    iget-object p1, p0, Lcom/powervision/base/utils/SharedPreferencesUtils;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
