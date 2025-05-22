.class public Lcom/powervision/aircraft/smart/SmartFollowManager;
.super Ljava/lang/Object;
.source "SmartFollowManager.java"

# interfaces
.implements Lcom/powervision/sdk/callback/Ap03FollowListener;
.implements Lcom/powervision/sdk/callback/Ap03SmartFunctionCurrentListener;
.implements Lcom/powervision/sdk/callback/Ap03LocalPositionNedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/smart/SmartFollowManager$OnSetFollowParmasListener;,
        Lcom/powervision/aircraft/smart/SmartFollowManager$FollowTypeValue;
    }
.end annotation


# static fields
.field public static final TYPE_DISTANCE:I = 0x1

.field public static final TYPE_FRAME:I = 0x4

.field public static final TYPE_HEIGHT:I = 0x0

.field public static final TYPE_ROISWITCH:I = 0x5

.field public static final TYPE_VELOCITY:I = 0x2

.field private static instance:Lcom/powervision/aircraft/smart/SmartFollowManager;


# instance fields
.field private TYPE_INTERFACE_DISTANCE:I

.field private TYPE_INTERFACE_FRAME:I

.field private TYPE_INTERFACE_HEIGTH:I

.field private TYPE_INTERFACE_ROISWITCH:I

.field private TYPE_INTERFACE_VELOCITY:I

.field private final Tag:Ljava/lang/String;

.field private ap03Manager:Lcom/powervision/sdk/Ap03Manager;

.field private followParamCallback:Lcom/powervision/natives/callback/FollowParamCallback;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/aircraft/smart/SmartFollowManager$OnSetFollowParmasListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerApiSDKInstance:Lcom/powervision/natives/PVSDK_AP03_API;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SurroundManager"

    .line 24
    iput-object v0, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->Tag:Ljava/lang/String;

    const/4 v0, 0x1

    .line 95
    iput v0, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->TYPE_INTERFACE_HEIGTH:I

    const/4 v0, 0x2

    .line 96
    iput v0, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->TYPE_INTERFACE_DISTANCE:I

    const/4 v0, 0x4

    .line 97
    iput v0, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->TYPE_INTERFACE_VELOCITY:I

    const/16 v0, 0x10

    .line 98
    iput v0, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->TYPE_INTERFACE_FRAME:I

    const/16 v0, 0x20

    .line 99
    iput v0, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->TYPE_INTERFACE_ROISWITCH:I

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->mListeners:Ljava/util/List;

    .line 34
    new-instance v0, Lcom/powervision/natives/callback/FollowParamCallback;

    invoke-direct {v0}, Lcom/powervision/natives/callback/FollowParamCallback;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->followParamCallback:Lcom/powervision/natives/callback/FollowParamCallback;

    .line 35
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->mPowerApiSDKInstance:Lcom/powervision/natives/PVSDK_AP03_API;

    .line 36
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    return-void
.end method

.method public static getInstance()Lcom/powervision/aircraft/smart/SmartFollowManager;
    .locals 2

    .line 40
    sget-object v0, Lcom/powervision/aircraft/smart/SmartFollowManager;->instance:Lcom/powervision/aircraft/smart/SmartFollowManager;

    if-nez v0, :cond_1

    .line 41
    const-class v0, Lcom/powervision/aircraft/smart/SmartFollowManager;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/powervision/aircraft/smart/SmartFollowManager;->instance:Lcom/powervision/aircraft/smart/SmartFollowManager;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/powervision/aircraft/smart/SmartFollowManager;

    invoke-direct {v1}, Lcom/powervision/aircraft/smart/SmartFollowManager;-><init>()V

    sput-object v1, Lcom/powervision/aircraft/smart/SmartFollowManager;->instance:Lcom/powervision/aircraft/smart/SmartFollowManager;

    monitor-exit v0

    return-object v1

    .line 45
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 47
    :cond_1
    :goto_0
    sget-object v0, Lcom/powervision/aircraft/smart/SmartFollowManager;->instance:Lcom/powervision/aircraft/smart/SmartFollowManager;

    return-object v0
.end method


# virtual methods
.method public ap03LocalNedPositionInfo(FFFFFF)V
    .locals 0

    return-void
.end method

.method public ap03LocalPositionInfo(FFFF)V
    .locals 0

    .line 231
    iget-object p2, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->mListeners:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/powervision/aircraft/smart/SmartFollowManager$OnSetFollowParmasListener;

    .line 232
    invoke-interface {p4, p1}, Lcom/powervision/aircraft/smart/SmartFollowManager$OnSetFollowParmasListener;->onSmartFunctionActuaHight(F)V

    goto :goto_0

    .line 235
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/powervision/aircraft/smart/SmartFollowManager$OnSetFollowParmasListener;

    .line 236
    invoke-interface {p2, p3}, Lcom/powervision/aircraft/smart/SmartFollowManager$OnSetFollowParmasListener;->onSmartFunctionActuaSpeed(F)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getSmartFunctionCurrentData(FFFFI)V
    .locals 8

    .line 224
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/powervision/aircraft/smart/SmartFollowManager$OnSetFollowParmasListener;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 225
    invoke-interface/range {v2 .. v7}, Lcom/powervision/aircraft/smart/SmartFollowManager$OnSetFollowParmasListener;->onSmartFunctionData(FFFFI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public initSDK()V
    .locals 2

    const-string v0, "helin"

    const-string v1, "initSDK: ---"

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addAp03FollowListenerList(Lcom/powervision/sdk/callback/Ap03FollowListener;)V

    .line 54
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addAp03SmartFunctionCurrentListener(Lcom/powervision/sdk/callback/Ap03SmartFunctionCurrentListener;)V

    .line 55
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addLocalPositionNedListener(Lcom/powervision/sdk/callback/Ap03LocalPositionNedListener;)V

    return-void
.end method

.method public onSetParmasResult(Ljava/lang/String;II)V
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetParmasResult======"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "type----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "=====status===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "helin"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    iget v0, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->TYPE_INTERFACE_HEIGTH:I

    if-ne v0, p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    .line 159
    :cond_1
    iget v0, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->TYPE_INTERFACE_DISTANCE:I

    if-ne v0, p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    .line 161
    :cond_2
    iget v0, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->TYPE_INTERFACE_VELOCITY:I

    if-ne v0, p2, :cond_3

    const/4 p2, 0x2

    goto :goto_0

    .line 163
    :cond_3
    iget v0, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->TYPE_INTERFACE_FRAME:I

    if-ne v0, p2, :cond_4

    const/4 p2, 0x4

    goto :goto_0

    .line 165
    :cond_4
    iget v0, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->TYPE_INTERFACE_ROISWITCH:I

    if-ne v0, p2, :cond_6

    const/4 p2, 0x5

    :goto_0
    const-string v0, "SUCCESS"

    .line 170
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 171
    iget-object p1, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/smart/SmartFollowManager$OnSetFollowParmasListener;

    .line 172
    invoke-interface {v0, p2, p3}, Lcom/powervision/aircraft/smart/SmartFollowManager$OnSetFollowParmasListener;->onSetParmasResultSuccess(II)V

    goto :goto_1

    .line 175
    :cond_5
    iget-object p1, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powervision/aircraft/smart/SmartFollowManager$OnSetFollowParmasListener;

    .line 176
    invoke-interface {v0, p2, p3}, Lcom/powervision/aircraft/smart/SmartFollowManager$OnSetFollowParmasListener;->onSetParmasResultFailed(II)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method public removeListener()V
    .locals 2

    const-string v0, "helin"

    const-string v1, "removeListener: ---"

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeLocalPositionNedListener(Lcom/powervision/sdk/callback/Ap03LocalPositionNedListener;)V

    .line 61
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeAp03SmartFunctionCurrentListener(Lcom/powervision/sdk/callback/Ap03SmartFunctionCurrentListener;)V

    .line 63
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeAp03FollowListenerList(Lcom/powervision/sdk/callback/Ap03FollowListener;)V

    return-void
.end method

.method public removeListener(Lcom/powervision/aircraft/smart/SmartFollowManager$OnSetFollowParmasListener;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->mListeners:Ljava/util/List;

    .line 217
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public varargs setFollowParams(I[I)V
    .locals 3

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setSurroundParams   type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "    value ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SurroundManager"

    invoke-static {v2, v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->followParamCallback:Lcom/powervision/natives/callback/FollowParamCallback;

    aget p2, p2, v1

    int-to-float p2, p2

    iput p2, p1, Lcom/powervision/natives/callback/FollowParamCallback;->height:F

    .line 123
    iget-object p1, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->followParamCallback:Lcom/powervision/natives/callback/FollowParamCallback;

    iget p2, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->TYPE_INTERFACE_HEIGTH:I

    iput p2, p1, Lcom/powervision/natives/callback/FollowParamCallback;->followEnable:I

    .line 124
    iget-object p1, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->mPowerApiSDKInstance:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object p2, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->followParamCallback:Lcom/powervision/natives/callback/FollowParamCallback;

    invoke-virtual {p1, p2}, Lcom/powervision/natives/PVSDK_AP03_API;->setFollowParam(Lcom/powervision/natives/callback/FollowParamCallback;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 126
    iget-object p1, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->followParamCallback:Lcom/powervision/natives/callback/FollowParamCallback;

    aget p2, p2, v1

    int-to-float p2, p2

    iput p2, p1, Lcom/powervision/natives/callback/FollowParamCallback;->distance:F

    .line 127
    iget-object p1, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->followParamCallback:Lcom/powervision/natives/callback/FollowParamCallback;

    iget p2, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->TYPE_INTERFACE_DISTANCE:I

    iput p2, p1, Lcom/powervision/natives/callback/FollowParamCallback;->followEnable:I

    .line 128
    iget-object p1, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->mPowerApiSDKInstance:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object p2, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->followParamCallback:Lcom/powervision/natives/callback/FollowParamCallback;

    invoke-virtual {p1, p2}, Lcom/powervision/natives/PVSDK_AP03_API;->setFollowParam(Lcom/powervision/natives/callback/FollowParamCallback;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 130
    iget-object p1, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->followParamCallback:Lcom/powervision/natives/callback/FollowParamCallback;

    aget v0, p2, v1

    iput v0, p1, Lcom/powervision/natives/callback/FollowParamCallback;->frame:I

    .line 131
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "==4===="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "dadsffdafdsasfdsa"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object p1, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->followParamCallback:Lcom/powervision/natives/callback/FollowParamCallback;

    iget p2, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->TYPE_INTERFACE_FRAME:I

    iput p2, p1, Lcom/powervision/natives/callback/FollowParamCallback;->followEnable:I

    .line 133
    iget-object p1, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->mPowerApiSDKInstance:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object p2, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->followParamCallback:Lcom/powervision/natives/callback/FollowParamCallback;

    invoke-virtual {p1, p2}, Lcom/powervision/natives/PVSDK_AP03_API;->setFollowParam(Lcom/powervision/natives/callback/FollowParamCallback;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    .line 135
    iget-object p1, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->followParamCallback:Lcom/powervision/natives/callback/FollowParamCallback;

    aget p2, p2, v1

    iput p2, p1, Lcom/powervision/natives/callback/FollowParamCallback;->followSwitch:I

    .line 136
    iget-object p1, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->followParamCallback:Lcom/powervision/natives/callback/FollowParamCallback;

    iget p2, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->TYPE_INTERFACE_ROISWITCH:I

    iput p2, p1, Lcom/powervision/natives/callback/FollowParamCallback;->followEnable:I

    .line 137
    iget-object p1, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->mPowerApiSDKInstance:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object p2, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->followParamCallback:Lcom/powervision/natives/callback/FollowParamCallback;

    invoke-virtual {p1, p2}, Lcom/powervision/natives/PVSDK_AP03_API;->setFollowParam(Lcom/powervision/natives/callback/FollowParamCallback;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public setFollowVelocity(IF)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 143
    iget-object p1, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->followParamCallback:Lcom/powervision/natives/callback/FollowParamCallback;

    iput p2, p1, Lcom/powervision/natives/callback/FollowParamCallback;->velocity:F

    .line 144
    iget-object p1, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->followParamCallback:Lcom/powervision/natives/callback/FollowParamCallback;

    iget p2, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->TYPE_INTERFACE_VELOCITY:I

    iput p2, p1, Lcom/powervision/natives/callback/FollowParamCallback;->followEnable:I

    .line 145
    iget-object p1, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->mPowerApiSDKInstance:Lcom/powervision/natives/PVSDK_AP03_API;

    iget-object p2, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->followParamCallback:Lcom/powervision/natives/callback/FollowParamCallback;

    invoke-virtual {p1, p2}, Lcom/powervision/natives/PVSDK_AP03_API;->setFollowParam(Lcom/powervision/natives/callback/FollowParamCallback;)I

    :cond_0
    return-void
.end method

.method public setOnSetFollowParmasListener(Lcom/powervision/aircraft/smart/SmartFollowManager$OnSetFollowParmasListener;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setVisionTrack(FFFF)V
    .locals 10

    .line 103
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartFollowManager;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, -0x2

    const-wide/16 v8, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v9}, Lcom/powervision/natives/PVSDK_AP03_API;->setVisionTrackFrame(FFFFFIJ)I

    return-void
.end method
