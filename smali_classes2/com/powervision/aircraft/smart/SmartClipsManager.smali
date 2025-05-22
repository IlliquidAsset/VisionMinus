.class public Lcom/powervision/aircraft/smart/SmartClipsManager;
.super Ljava/lang/Object;
.source "SmartClipsManager.java"

# interfaces
.implements Lcom/powervision/sdk/callback/Ap03OnSubModeExecuteStatusListener;
.implements Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;
.implements Lcom/powervision/sdk/callback/Ap03CurrentModeListener;
.implements Lcom/powervision/sdk/callback/Ap03LocalPositionNedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/aircraft/smart/SmartClipsManager$SmartClipsInterface;
    }
.end annotation


# static fields
.field public static final FLIGHTING_SUB_MODE_INTEL_CIRCLE:I = 0x1

.field public static final FLIGHTING_SUB_MODE_INTEL_CLIMB:I = 0x3

.field public static final FLIGHTING_SUB_MODE_INTEL_ELLPTIC:I = 0x4

.field public static final FLIGHTING_SUB_MODE_INTEL_SCREW:I = 0x2

.field public static final FLIGHTING_SUB_MODE_INTEL_TILT:I

.field private static instance:Lcom/powervision/aircraft/smart/SmartClipsManager;


# instance fields
.field private TYPE_INTERFACE_DIRECTION:I

.field private TYPE_INTERFACE_DISTANCE:I

.field private ap03Manager:Lcom/powervision/sdk/Ap03Manager;

.field private isClipsMode:Z

.field private powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

.field private smartClipsInterface:Lcom/powervision/aircraft/smart/SmartClipsManager$SmartClipsInterface;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 45
    iput v0, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->TYPE_INTERFACE_DISTANCE:I

    const/16 v0, 0x40

    .line 46
    iput v0, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->TYPE_INTERFACE_DIRECTION:I

    return-void
.end method

.method public static getInstance()Lcom/powervision/aircraft/smart/SmartClipsManager;
    .locals 2

    .line 52
    sget-object v0, Lcom/powervision/aircraft/smart/SmartClipsManager;->instance:Lcom/powervision/aircraft/smart/SmartClipsManager;

    if-nez v0, :cond_1

    .line 53
    const-class v0, Lcom/powervision/aircraft/smart/SmartClipsManager;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/powervision/aircraft/smart/SmartClipsManager;->instance:Lcom/powervision/aircraft/smart/SmartClipsManager;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/powervision/aircraft/smart/SmartClipsManager;

    invoke-direct {v1}, Lcom/powervision/aircraft/smart/SmartClipsManager;-><init>()V

    sput-object v1, Lcom/powervision/aircraft/smart/SmartClipsManager;->instance:Lcom/powervision/aircraft/smart/SmartClipsManager;

    monitor-exit v0

    return-object v1

    .line 57
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 59
    :cond_1
    :goto_0
    sget-object v0, Lcom/powervision/aircraft/smart/SmartClipsManager;->instance:Lcom/powervision/aircraft/smart/SmartClipsManager;

    return-object v0
.end method


# virtual methods
.method public ap03LocalNedPositionInfo(FFFFFF)V
    .locals 0

    return-void
.end method

.method public ap03LocalPositionInfo(FFFF)V
    .locals 0

    .line 195
    iget-object p2, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->smartClipsInterface:Lcom/powervision/aircraft/smart/SmartClipsManager$SmartClipsInterface;

    if-eqz p2, :cond_0

    .line 196
    invoke-interface {p2, p1}, Lcom/powervision/aircraft/smart/SmartClipsManager$SmartClipsInterface;->getCurrentHight(F)V

    :cond_0
    return-void
.end method

.method public getROIParamer()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v1, "MPC_CIRCLE_ORI"

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadParameter(Ljava/lang/String;)I

    return-void
.end method

.method public getSubModeExecuteStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Success"

    .line 132
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object p1, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->smartClipsInterface:Lcom/powervision/aircraft/smart/SmartClipsManager$SmartClipsInterface;

    invoke-interface {p1, p2}, Lcom/powervision/aircraft/smart/SmartClipsManager$SmartClipsInterface;->getClipsStatus(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "Failed"

    .line 134
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 135
    iget-object p1, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->smartClipsInterface:Lcom/powervision/aircraft/smart/SmartClipsManager$SmartClipsInterface;

    invoke-interface {p1}, Lcom/powervision/aircraft/smart/SmartClipsManager$SmartClipsInterface;->getSubModeFailed()V

    goto :goto_0

    :cond_1
    const-string p2, "Cancel"

    .line 136
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 137
    iget-object p1, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->smartClipsInterface:Lcom/powervision/aircraft/smart/SmartClipsManager$SmartClipsInterface;

    invoke-interface {p1}, Lcom/powervision/aircraft/smart/SmartClipsManager$SmartClipsInterface;->cancelSubMode()V

    goto :goto_0

    :cond_2
    const-string p2, "Outlimit_cancel"

    .line 138
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 139
    iget-object p1, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->smartClipsInterface:Lcom/powervision/aircraft/smart/SmartClipsManager$SmartClipsInterface;

    invoke-interface {p1}, Lcom/powervision/aircraft/smart/SmartClipsManager$SmartClipsInterface;->outLimitCancelSubMode()V

    :cond_3
    :goto_0
    return-void
.end method

.method public getTiltDistance()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v1, "TILT_DIST"

    invoke-virtual {v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->downloadParameter(Ljava/lang/String;)I

    return-void
.end method

.method public initDate()V
    .locals 1

    .line 63
    invoke-static {}, Lcom/powervision/natives/PVSDK_AP03_API;->getInstance()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    .line 64
    invoke-static {}, Lcom/powervision/sdk/Ap03Manager;->getInstance()Lcom/powervision/sdk/Ap03Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    .line 65
    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addSubModeExecuteStatusListener(Lcom/powervision/sdk/callback/Ap03OnSubModeExecuteStatusListener;)V

    .line 66
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setUpAndDownFloatParamListener(Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;)V

    .line 67
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setUpAndDownIntParamListener(Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;)V

    .line 68
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->setCurrentModeListener(Lcom/powervision/sdk/callback/Ap03CurrentModeListener;)V

    .line 69
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->addLocalPositionNedListener(Lcom/powervision/sdk/callback/Ap03LocalPositionNedListener;)V

    return-void
.end method

.method public isClipsMode()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->isClipsMode:Z

    return v0
.end method

.method public onSetGetFloatParamDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==type==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "====result==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "====valuef=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dasfasdafafffa"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->smartClipsInterface:Lcom/powervision/aircraft/smart/SmartClipsManager$SmartClipsInterface;

    if-eqz v0, :cond_1

    const-string v0, "TILT_DIST"

    .line 153
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "SUCCESS"

    .line 154
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 155
    iget-object p2, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->smartClipsInterface:Lcom/powervision/aircraft/smart/SmartClipsManager$SmartClipsInterface;

    invoke-interface {p2, p1, p4}, Lcom/powervision/aircraft/smart/SmartClipsManager$SmartClipsInterface;->setTiltDistance(Ljava/lang/String;F)V

    goto :goto_0

    .line 157
    :cond_0
    iget-object p2, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->smartClipsInterface:Lcom/powervision/aircraft/smart/SmartClipsManager$SmartClipsInterface;

    invoke-interface {p2, p1}, Lcom/powervision/aircraft/smart/SmartClipsManager$SmartClipsInterface;->setTiltDistanceFailed(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSetGetIntParamDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==type==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "====result==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=====name===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "====valuei=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dasfasdafafffa"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->smartClipsInterface:Lcom/powervision/aircraft/smart/SmartClipsManager$SmartClipsInterface;

    if-eqz v0, :cond_1

    const-string v0, "MPC_CIRCLE_ORI"

    .line 167
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "SUCCESS"

    .line 168
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 169
    iget-object p2, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->smartClipsInterface:Lcom/powervision/aircraft/smart/SmartClipsManager$SmartClipsInterface;

    invoke-interface {p2, p1, p4}, Lcom/powervision/aircraft/smart/SmartClipsManager$SmartClipsInterface;->getORIParamer(Ljava/lang/String;I)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object p2, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->smartClipsInterface:Lcom/powervision/aircraft/smart/SmartClipsManager$SmartClipsInterface;

    invoke-interface {p2, p1}, Lcom/powervision/aircraft/smart/SmartClipsManager$SmartClipsInterface;->setORIParamerFailed(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSetGetLongParamDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public removeListener()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeCurrentModeListener(Lcom/powervision/sdk/callback/Ap03CurrentModeListener;)V

    .line 239
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeSubModeExecuteStatusListener(Lcom/powervision/sdk/callback/Ap03OnSubModeExecuteStatusListener;)V

    .line 240
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeUpAndDownFloatParamListener(Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;)V

    .line 241
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeUpAndDownIntParamListener(Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;)V

    .line 242
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0, p0}, Lcom/powervision/sdk/Ap03Manager;->removeLocalPositionNedListener(Lcom/powervision/sdk/callback/Ap03LocalPositionNedListener;)V

    return-void
.end method

.method public setChildMode(I)V
    .locals 2

    const/16 v0, 0x12

    if-nez p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setFlightingMode(II)I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 76
    iget-object p1, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setFlightingMode(II)I

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 78
    iget-object p1, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setFlightingMode(II)I

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 80
    iget-object p1, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setFlightingMode(II)I

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    .line 82
    iget-object p1, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/powervision/natives/PVSDK_AP03_API;->setFlightingMode(II)I

    :cond_4
    :goto_0
    return-void
.end method

.method public setClipsMode()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/natives/PVSDK_AP03_API;->setFlightingMode(II)I

    return-void
.end method

.method public setClipsMode(Z)V
    .locals 0

    .line 234
    iput-boolean p1, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->isClipsMode:Z

    return-void
.end method

.method public setCurrentMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->smartClipsInterface:Lcom/powervision/aircraft/smart/SmartClipsManager$SmartClipsInterface;

    invoke-interface {v0, p1, p2}, Lcom/powervision/aircraft/smart/SmartClipsManager$SmartClipsInterface;->getCurrentMode(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "INTEL_TILT"

    .line 186
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "INTEL_CIRCLE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "INTEL_SCREW"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "INTEL_CLIMB"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "INTEL_ELLPTIC"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 189
    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/smart/SmartClipsManager;->setClipsMode(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 187
    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/smart/SmartClipsManager;->setClipsMode(Z)V

    :goto_1
    return-void
.end method

.method public setPosctlMode()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powervision/natives/PVSDK_AP03_API;->setFlightingMode(II)I

    return-void
.end method

.method public setROIParamer(I)V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    const-string v1, "MPC_CIRCLE_ORI"

    invoke-virtual {v0, v1, p1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadIntParameter(Ljava/lang/String;I)I

    return-void
.end method

.method public setSmartClipsInterface(Lcom/powervision/aircraft/smart/SmartClipsManager$SmartClipsInterface;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->smartClipsInterface:Lcom/powervision/aircraft/smart/SmartClipsManager$SmartClipsInterface;

    return-void
.end method

.method public setSubModeOneKeyVideoROI(FFI)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

    invoke-virtual {v0}, Lcom/powervision/sdk/Ap03Manager;->getPowerSDK()Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/powervision/natives/PVSDK_AP03_API;->setSubModeOneKeyVideoROI(FFI)I

    return-void
.end method

.method public setTiltDistance(I)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->powerApiSDK:Lcom/powervision/natives/PVSDK_AP03_API;

    int-to-float p1, p1

    const-string v1, "TILT_DIST"

    invoke-virtual {v0, v1, p1}, Lcom/powervision/natives/PVSDK_AP03_API;->uploadFloatParameter(Ljava/lang/String;F)I

    return-void
.end method

.method public setVisionTrack(FFFF)V
    .locals 10

    .line 117
    iget-object v0, p0, Lcom/powervision/aircraft/smart/SmartClipsManager;->ap03Manager:Lcom/powervision/sdk/Ap03Manager;

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
