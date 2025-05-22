.class public Lcom/powervision/aircraft/smart/SmartSurroundManager;
.super Ljava/lang/Object;
.source "SmartSurroundManager.java"

# interfaces
.implements Lcom/powervision/sdk/callback/Ap03SurroundListener;
.implements Lcom/powervision/sdk/callback/Ap03SmartFunctionCurrentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/smart/SmartSurroundManager$OnSetSurroundParmasListener;,
        Lcom/powervision/aircraft/smart/SmartSurroundManager$SurroundTypeValue;
    }
.end annotation


# static fields
.field public static final TYPE_DISTANCE:I = 0x1

.field public static final TYPE_FRAME:I = 0x4

.field public static final TYPE_HEIGHT:I = 0x0

.field public static final TYPE_ORIENTATIONS:I = 0x6

.field public static final TYPE_RETURN_CENTER:I = 0x7

.field public static final TYPE_ROISWITCH:I = 0x5

.field public static final TYPE_ROIX_ROIY:I = 0x3

.field public static final TYPE_VELOCITY:I = 0x2

.field private static instance:Lcom/powervision/aircraft/smart/SmartSurroundManager;


# instance fields
.field private TYPE_INTERFACE_DISTANCE:I

.field private TYPE_INTERFACE_FRAME:I

.field private TYPE_INTERFACE_HEIGTH:I

.field private TYPE_INTERFACE_ORIENTATIONS:I

.field private TYPE_INTERFACE_RETURN_CENTER:I

.field private TYPE_INTERFACE_ROISWITCH:I

.field private TYPE_INTERFACE_ROIX_ROIY:I

.field private TYPE_INTERFACE_VELOCITY:I

.field private final Tag:Ljava/lang/String;

.field private ap03Manager:Lcom/powervision/sdk/Ap03Manager;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/powervision/aircraft/smart/SmartSurroundManager$OnSetSurroundParmasListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerApiSDKInstance:Lcom/powervision/natives/PVSDK_AP03_API;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SurroundManager"

    .line 23
    iput-object v0, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->Tag:Ljava/lang/String;

    const/4 v0, 0x1

    .line 98
    iput v0, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->TYPE_INTERFACE_HEIGTH:I

    const/4 v0, 0x2

    .line 99
    iput v0, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->TYPE_INTERFACE_DISTANCE:I

    const/4 v0, 0x4

    .line 100
    iput v0, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->TYPE_INTERFACE_VELOCITY:I

    const/16 v0, 0x8

    .line 101
    iput v0, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->TYPE_INTERFACE_ROIX_ROIY:I

    const/16 v0, 0x10

    .line 102
    iput v0, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->TYPE_INTERFACE_FRAME:I

    const/16 v0, 0x20

    .line 103
    iput v0, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->TYPE_INTERFACE_ROISWITCH:I

    const/16 v0, 0x40

    .line 104
    iput v0, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->TYPE_INTERFACE_ORIENTATIONS:I

    const/16 v0, 0x80

    .line 105
    iput v0, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->TYPE_INTERFACE_RETURN_CENTER:I

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->mListeners:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/powervision/aircraft/smart/SmartSurroundManager;
    .locals 2

    .line 35
    sget-object v0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->instance:Lcom/powervision/aircraft/smart/SmartSurroundManager;

    if-nez v0, :cond_1

    .line 36
    const-class v0, Lcom/powervision/aircraft/smart/SmartSurroundManager;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lcom/powervision/aircraft/smart/SmartSurroundManager;->instance:Lcom/powervision/aircraft/smart/SmartSurroundManager;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/powervision/aircraft/smart/SmartSurroundManager;

    invoke-direct {v1}, Lcom/powervision/aircraft/smart/SmartSurroundManager;-><init>()V

    sput-object v1, Lcom/powervision/aircraft/smart/SmartSurroundManager;->instance:Lcom/powervision/aircraft/smart/SmartSurroundManager;

    monitor-exit v0

    return-object v1

    .line 40
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 42
    :cond_1
    :goto_0
    sget-object v0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->instance:Lcom/powervision/aircraft/smart/SmartSurroundManager;

    return-object v0
.end method

.method private setDistance(FI)V
    .locals 12

    const/high16 v0, 0x40a00000    # 5.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/high16 v4, 0x40a00000    # 5.0f

    goto :goto_0

    :cond_0
    move v4, p1

    :goto_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    move v11, p2

    .line 154
    invoke-virtual/range {v2 .. v11}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->setRoiParam(FFFFIIIII)V

    return-void
.end method

.method private setOrientations(II)V
    .locals 10

    int-to-float v4, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v9, p2

    .line 189
    invoke-virtual/range {v0 .. v9}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->setRoiParam(FFFFIIIII)V

    return-void
.end method

.method private setReturnCenter(I)V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v9, p1

    .line 196
    invoke-virtual/range {v0 .. v9}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->setRoiParam(FFFFIIIII)V

    return-void
.end method

.method private setRoiXY(III)V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v5, p1

    move v6, p2

    move v9, p3

    .line 167
    invoke-virtual/range {v0 .. v9}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->setRoiParam(FFFFIIIII)V

    return-void
.end method

.method private setSpeed(FI)V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v3, p1

    move v9, p2

    .line 158
    invoke-virtual/range {v0 .. v9}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->setRoiParam(FFFFIIIII)V

    return-void
.end method

.method private setStartOrStopSurround(II)V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v8, p1

    move v9, p2

    .line 182
    invoke-virtual/range {v0 .. v9}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->setRoiParam(FFFFIIIII)V

    return-void
.end method

.method private setSurroundMode(II)V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v7, p1

    move v9, p2

    .line 175
    invoke-virtual/range {v0 .. v9}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->setRoiParam(FFFFIIIII)V

    return-void
.end method


# virtual methods
.method public getSmartFunctionCurrentData(FFFFI)V
    .locals 8

    .line 266
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/powervision/aircraft/smart/SmartSurroundManager$OnSetSurroundParmasListener;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 267
    invoke-interface/range {v2 .. v7}, Lcom/powervision/aircraft/smart/SmartSurroundManager$OnSetSurroundParmasListener;->onSmartFunctionData(FFFFI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public initSDK()V
    .locals 1

    .line 46
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->mPowerApiSDKInstance:Lcom/powervision/natives/PVSDK_AP03_API;

    .line 47
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    .line 48
    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setmAp03SurroundListener(Lcom/powervision/sdk/callback/Ap03SurroundListener;)V

    .line 49
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addAp03SmartFunctionCurrentListener(Lcom/powervision/sdk/callback/Ap03SmartFunctionCurrentListener;)V

    return-void
.end method

.method public onSetParmasResult(Ljava/lang/String;II)V
    .locals 3

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result === "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "====type=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "====status-==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsfasdasdfdsfdaf"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 224
    :cond_0
    iget v0, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->TYPE_INTERFACE_HEIGTH:I

    const-string v1, "SurroundManager"

    if-ne v0, p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    .line 226
    :cond_1
    iget v0, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->TYPE_INTERFACE_DISTANCE:I

    if-ne v0, p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    .line 228
    :cond_2
    iget v0, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->TYPE_INTERFACE_VELOCITY:I

    if-ne v0, p2, :cond_3

    const/4 p2, 0x2

    goto :goto_0

    .line 230
    :cond_3
    iget v0, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->TYPE_INTERFACE_ROIX_ROIY:I

    if-ne v0, p2, :cond_4

    const/4 p2, 0x3

    goto :goto_0

    .line 232
    :cond_4
    iget v0, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->TYPE_INTERFACE_FRAME:I

    if-ne v0, p2, :cond_5

    const/4 p2, 0x4

    goto :goto_0

    .line 234
    :cond_5
    iget v0, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->TYPE_INTERFACE_ROISWITCH:I

    if-ne v0, p2, :cond_6

    const/4 p2, 0x5

    goto :goto_0

    .line 236
    :cond_6
    iget v0, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->TYPE_INTERFACE_ORIENTATIONS:I

    if-ne v0, p2, :cond_7

    const/4 p2, 0x6

    goto :goto_0

    .line 238
    :cond_7
    iget v0, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->TYPE_INTERFACE_RETURN_CENTER:I

    if-ne v0, p2, :cond_a

    const/4 p2, 0x7

    :goto_0
    const-string v0, "SUCCESS"

    .line 244
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 245
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/aircraft/smart/SmartSurroundManager$OnSetSurroundParmasListener;

    .line 246
    invoke-interface {v2, p2, p3}, Lcom/powervision/aircraft/smart/SmartSurroundManager$OnSetSurroundParmasListener;->onSetParmasResultSuccess(II)V

    goto :goto_1

    .line 249
    :cond_8
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powervision/aircraft/smart/SmartSurroundManager$OnSetSurroundParmasListener;

    .line 250
    invoke-interface {v2, p2, p3}, Lcom/powervision/aircraft/smart/SmartSurroundManager$OnSetSurroundParmasListener;->onSetParmasResultFailed(II)V

    goto :goto_2

    .line 253
    :cond_9
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "   SurroundManager  ..onSetParmasResult     result type ="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  result ="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 241
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " error  ....  onSetParmasResult       result type ="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeListener()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powervision/sdk/Ap03Manager;->setmAp03SurroundListener(Lcom/powervision/sdk/callback/Ap03SurroundListener;)V

    .line 54
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeAp03SmartFunctionCurrentListener(Lcom/powervision/sdk/callback/Ap03SmartFunctionCurrentListener;)V

    return-void
.end method

.method public removeListener(Lcom/powervision/aircraft/smart/SmartSurroundManager$OnSetSurroundParmasListener;)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->mListeners:Ljava/util/List;

    .line 288
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setHeight(FI)V
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v9, p2

    .line 147
    invoke-virtual/range {v0 .. v9}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->setRoiParam(FFFFIIIII)V

    return-void
.end method

.method public setOnSetSurroundParmasListener(Lcom/powervision/aircraft/smart/SmartSurroundManager$OnSetSurroundParmasListener;)V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setRoiParam(FFFFIIIII)V
    .locals 11

    move-object v0, p0

    .line 213
    iget-object v1, v0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->mPowerApiSDKInstance:Lcom/powervision/natives/PVSDK_AP03_API;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/powervision/natives/PVSDK_AP03_API;->setRoiParam(FFFFIIIII)I

    return-void
.end method

.method public varargs setSurroundParams(I[I)V
    .locals 3

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setSurroundParams   type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurroundManager"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 128
    aget p1, p2, v0

    int-to-float p1, p1

    iget p2, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->TYPE_INTERFACE_HEIGTH:I

    invoke-virtual {p0, p1, p2}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->setHeight(FI)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 130
    aget p1, p2, v0

    int-to-float p1, p1

    iget p2, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->TYPE_INTERFACE_DISTANCE:I

    invoke-direct {p0, p1, p2}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->setDistance(FI)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 132
    aget p1, p2, v0

    int-to-float p1, p1

    iget p2, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->TYPE_INTERFACE_VELOCITY:I

    invoke-direct {p0, p1, p2}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->setSpeed(FI)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 134
    aget p1, p2, v0

    aget p2, p2, v1

    iget v0, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->TYPE_INTERFACE_ROIX_ROIY:I

    invoke-direct {p0, p1, p2, v0}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->setRoiXY(III)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    .line 136
    aget p1, p2, v0

    iget p2, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->TYPE_INTERFACE_FRAME:I

    invoke-direct {p0, p1, p2}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->setSurroundMode(II)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    if-ne p1, v1, :cond_5

    .line 138
    aget p1, p2, v0

    iget p2, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->TYPE_INTERFACE_ROISWITCH:I

    invoke-direct {p0, p1, p2}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->setStartOrStopSurround(II)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x6

    if-ne p1, v1, :cond_6

    .line 140
    aget p1, p2, v0

    iget p2, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->TYPE_INTERFACE_ORIENTATIONS:I

    invoke-direct {p0, p1, p2}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->setOrientations(II)V

    goto :goto_0

    :cond_6
    const/4 p2, 0x7

    if-ne p1, p2, :cond_7

    .line 142
    iget p1, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->TYPE_INTERFACE_RETURN_CENTER:I

    invoke-direct {p0, p1}, Lcom/powervision/aircraft/smart/SmartSurroundManager;->setReturnCenter(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method public setVisionTrack(FFFF)V
    .locals 10

    .line 109
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartSurroundManager;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

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
