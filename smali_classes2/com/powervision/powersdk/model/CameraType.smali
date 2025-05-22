.class public final enum Lcom/powervision/powersdk/model/CameraType;
.super Ljava/lang/Enum;
.source "CameraType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/powervision/powersdk/model/CameraType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraCameraCmdChangeCapture:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraCameraCmdChangeFlir:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraCameraFeedBackTimeout:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraCameraFlirFailed:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraCameraFlirSuccess:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraCameraRecSDEmpty:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraCameraRecSDErr:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraCameraRecSDFull:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraCameraSDEmpty:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraCameraSDErr:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraCameraSDFull:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraCaptureSettingFailed:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraCaptureSettingSuccess:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraExists:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraFormatSDFailed:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraFormatSDSuccess:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraParamGetSuccess:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraParamGetTimeout:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraParamSetSuccess:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraParamSetTimeout:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraPictureSettingFailed:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraPictureSettingSuccess:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraRecMode:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraRecModeError:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraRecRecing:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraRecSettingFailed:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraRecSettingSuccess:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraRecStartError:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraRecStopEnd:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraRecStopError:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraResetToCameraFactoryFailed:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraResetToCameraFactorySuccess:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraStillCaptureEnd:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraStillCaptureError:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraStillCaptureMode:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraStillCaptureModeError:Lcom/powervision/powersdk/model/CameraType;

.field public static final enum onCameraStillCaptureing:Lcom/powervision/powersdk/model/CameraType;


# instance fields
.field private cmdType:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 8
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraExists"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraExists:Lcom/powervision/powersdk/model/CameraType;

    .line 9
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraRecStopEnd"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraRecStopEnd:Lcom/powervision/powersdk/model/CameraType;

    .line 10
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraRecRecing"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v4}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraRecRecing:Lcom/powervision/powersdk/model/CameraType;

    .line 11
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraRecStartError"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraRecStartError:Lcom/powervision/powersdk/model/CameraType;

    .line 12
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraRecStopError"

    const/4 v6, 0x5

    invoke-direct {v0, v1, v5, v6}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraRecStopError:Lcom/powervision/powersdk/model/CameraType;

    .line 13
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraRecMode"

    const/4 v7, 0x6

    invoke-direct {v0, v1, v6, v7}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraRecMode:Lcom/powervision/powersdk/model/CameraType;

    .line 14
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraRecModeError"

    const/4 v8, 0x7

    invoke-direct {v0, v1, v7, v8}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraRecModeError:Lcom/powervision/powersdk/model/CameraType;

    .line 15
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraStillCaptureEnd"

    const/16 v9, 0x8

    invoke-direct {v0, v1, v8, v9}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraStillCaptureEnd:Lcom/powervision/powersdk/model/CameraType;

    .line 16
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraStillCaptureing"

    const/16 v10, 0x9

    invoke-direct {v0, v1, v9, v10}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraStillCaptureing:Lcom/powervision/powersdk/model/CameraType;

    .line 17
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraStillCaptureError"

    const/16 v11, 0xa

    invoke-direct {v0, v1, v10, v11}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraStillCaptureError:Lcom/powervision/powersdk/model/CameraType;

    .line 18
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraStillCaptureMode"

    const/16 v12, 0xb

    invoke-direct {v0, v1, v11, v12}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraStillCaptureMode:Lcom/powervision/powersdk/model/CameraType;

    .line 19
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraStillCaptureModeError"

    const/16 v13, 0xc

    invoke-direct {v0, v1, v12, v13}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraStillCaptureModeError:Lcom/powervision/powersdk/model/CameraType;

    .line 20
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraFormatSDSuccess"

    const/16 v14, 0xd

    invoke-direct {v0, v1, v13, v14}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraFormatSDSuccess:Lcom/powervision/powersdk/model/CameraType;

    .line 21
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraFormatSDFailed"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v14, v15}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraFormatSDFailed:Lcom/powervision/powersdk/model/CameraType;

    .line 22
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraResetToCameraFactorySuccess"

    const/16 v14, 0xf

    invoke-direct {v0, v1, v15, v14}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraResetToCameraFactorySuccess:Lcom/powervision/powersdk/model/CameraType;

    .line 23
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraResetToCameraFactoryFailed"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v14, v15}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraResetToCameraFactoryFailed:Lcom/powervision/powersdk/model/CameraType;

    .line 24
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraRecSettingSuccess"

    const/16 v14, 0x11

    invoke-direct {v0, v1, v15, v14}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraRecSettingSuccess:Lcom/powervision/powersdk/model/CameraType;

    .line 25
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraRecSettingFailed"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v14, v15}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraRecSettingFailed:Lcom/powervision/powersdk/model/CameraType;

    .line 26
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraCaptureSettingSuccess"

    const/16 v14, 0x13

    invoke-direct {v0, v1, v15, v14}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraCaptureSettingSuccess:Lcom/powervision/powersdk/model/CameraType;

    .line 27
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraCaptureSettingFailed"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v14, v15}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraCaptureSettingFailed:Lcom/powervision/powersdk/model/CameraType;

    .line 28
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraPictureSettingSuccess"

    const/16 v14, 0x15

    invoke-direct {v0, v1, v15, v14}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraPictureSettingSuccess:Lcom/powervision/powersdk/model/CameraType;

    .line 29
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraPictureSettingFailed"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v14, v15}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraPictureSettingFailed:Lcom/powervision/powersdk/model/CameraType;

    .line 30
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraCameraFeedBackTimeout"

    const/16 v14, 0x17

    invoke-direct {v0, v1, v15, v14}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraCameraFeedBackTimeout:Lcom/powervision/powersdk/model/CameraType;

    .line 31
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraCameraSDFull"

    const/16 v15, 0x18

    invoke-direct {v0, v1, v14, v15}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraCameraSDFull:Lcom/powervision/powersdk/model/CameraType;

    .line 32
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraCameraSDErr"

    const/16 v14, 0x18

    const/16 v15, 0x19

    invoke-direct {v0, v1, v14, v15}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraCameraSDErr:Lcom/powervision/powersdk/model/CameraType;

    .line 33
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraCameraSDEmpty"

    const/16 v14, 0x19

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v14, v15}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraCameraSDEmpty:Lcom/powervision/powersdk/model/CameraType;

    .line 34
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraCameraRecSDFull"

    const/16 v14, 0x1a

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v14, v15}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraCameraRecSDFull:Lcom/powervision/powersdk/model/CameraType;

    .line 35
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraCameraRecSDErr"

    const/16 v14, 0x1b

    const/16 v15, 0x1c

    invoke-direct {v0, v1, v14, v15}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraCameraRecSDErr:Lcom/powervision/powersdk/model/CameraType;

    .line 36
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraCameraRecSDEmpty"

    const/16 v14, 0x1c

    const/16 v15, 0x1d

    invoke-direct {v0, v1, v14, v15}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraCameraRecSDEmpty:Lcom/powervision/powersdk/model/CameraType;

    .line 37
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraCameraCmdChangeFlir"

    const/16 v14, 0x1d

    const/16 v15, 0x1e

    invoke-direct {v0, v1, v14, v15}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraCameraCmdChangeFlir:Lcom/powervision/powersdk/model/CameraType;

    .line 38
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraCameraCmdChangeCapture"

    const/16 v14, 0x1e

    const/16 v15, 0x1f

    invoke-direct {v0, v1, v14, v15}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraCameraCmdChangeCapture:Lcom/powervision/powersdk/model/CameraType;

    .line 39
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraCameraFlirSuccess"

    const/16 v14, 0x1f

    const/16 v15, 0x20

    invoke-direct {v0, v1, v14, v15}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraCameraFlirSuccess:Lcom/powervision/powersdk/model/CameraType;

    .line 40
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraCameraFlirFailed"

    const/16 v14, 0x20

    const/16 v15, 0x21

    invoke-direct {v0, v1, v14, v15}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraCameraFlirFailed:Lcom/powervision/powersdk/model/CameraType;

    .line 42
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraParamSetSuccess"

    const/16 v14, 0x21

    const/16 v15, 0x22

    invoke-direct {v0, v1, v14, v15}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraParamSetSuccess:Lcom/powervision/powersdk/model/CameraType;

    .line 43
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraParamSetTimeout"

    const/16 v14, 0x22

    const/16 v15, 0x23

    invoke-direct {v0, v1, v14, v15}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraParamSetTimeout:Lcom/powervision/powersdk/model/CameraType;

    .line 44
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraParamGetSuccess"

    const/16 v14, 0x23

    const/16 v15, 0x24

    invoke-direct {v0, v1, v14, v15}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraParamGetSuccess:Lcom/powervision/powersdk/model/CameraType;

    .line 45
    new-instance v0, Lcom/powervision/powersdk/model/CameraType;

    const-string v1, "onCameraParamGetTimeout"

    const/16 v14, 0x24

    const/16 v15, 0x25

    invoke-direct {v0, v1, v14, v15}, Lcom/powervision/powersdk/model/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/powervision/powersdk/model/CameraType;->onCameraParamGetTimeout:Lcom/powervision/powersdk/model/CameraType;

    const/16 v1, 0x25

    new-array v1, v1, [Lcom/powervision/powersdk/model/CameraType;

    .line 7
    sget-object v14, Lcom/powervision/powersdk/model/CameraType;->onCameraExists:Lcom/powervision/powersdk/model/CameraType;

    const/4 v15, 0x0

    aput-object v14, v1, v15

    sget-object v14, Lcom/powervision/powersdk/model/CameraType;->onCameraRecStopEnd:Lcom/powervision/powersdk/model/CameraType;

    aput-object v14, v1, v3

    sget-object v3, Lcom/powervision/powersdk/model/CameraType;->onCameraRecRecing:Lcom/powervision/powersdk/model/CameraType;

    aput-object v3, v1, v2

    sget-object v2, Lcom/powervision/powersdk/model/CameraType;->onCameraRecStartError:Lcom/powervision/powersdk/model/CameraType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/powervision/powersdk/model/CameraType;->onCameraRecStopError:Lcom/powervision/powersdk/model/CameraType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/powervision/powersdk/model/CameraType;->onCameraRecMode:Lcom/powervision/powersdk/model/CameraType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/powervision/powersdk/model/CameraType;->onCameraRecModeError:Lcom/powervision/powersdk/model/CameraType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/powervision/powersdk/model/CameraType;->onCameraStillCaptureEnd:Lcom/powervision/powersdk/model/CameraType;

    aput-object v2, v1, v8

    sget-object v2, Lcom/powervision/powersdk/model/CameraType;->onCameraStillCaptureing:Lcom/powervision/powersdk/model/CameraType;

    aput-object v2, v1, v9

    sget-object v2, Lcom/powervision/powersdk/model/CameraType;->onCameraStillCaptureError:Lcom/powervision/powersdk/model/CameraType;

    aput-object v2, v1, v10

    sget-object v2, Lcom/powervision/powersdk/model/CameraType;->onCameraStillCaptureMode:Lcom/powervision/powersdk/model/CameraType;

    aput-object v2, v1, v11

    sget-object v2, Lcom/powervision/powersdk/model/CameraType;->onCameraStillCaptureModeError:Lcom/powervision/powersdk/model/CameraType;

    aput-object v2, v1, v12

    sget-object v2, Lcom/powervision/powersdk/model/CameraType;->onCameraFormatSDSuccess:Lcom/powervision/powersdk/model/CameraType;

    aput-object v2, v1, v13

    sget-object v2, Lcom/powervision/powersdk/model/CameraType;->onCameraFormatSDFailed:Lcom/powervision/powersdk/model/CameraType;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/powervision/powersdk/model/CameraType;->onCameraResetToCameraFactorySuccess:Lcom/powervision/powersdk/model/CameraType;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/powervision/powersdk/model/CameraType;->onCameraResetToCameraFactoryFailed:Lcom/powervision/powersdk/model/CameraType;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/powervision/powersdk/model/CameraType;->onCameraRecSettingSuccess:Lcom/powervision/powersdk/model/CameraType;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/powervision/powersdk/model/CameraType;->onCameraRecSettingFailed:Lcom/powervision/powersdk/model/CameraType;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/powervision/powersdk/model/CameraType;->onCameraCaptureSettingSuccess:Lcom/powervision/powersdk/model/CameraType;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/powervision/powersdk/model/CameraType;->onCameraCaptureSettingFailed:Lcom/powervision/powersdk/model/CameraType;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/powervision/powersdk/model/CameraType;->onCameraPictureSettingSuccess:Lcom/powervision/powersdk/model/CameraType;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lcom/powervision/powersdk/model/CameraType;->onCameraPictureSettingFailed:Lcom/powervision/powersdk/model/CameraType;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lcom/powervision/powersdk/model/CameraType;->onCameraCameraFeedBackTimeout:Lcom/powervision/powersdk/model/CameraType;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lcom/powervision/powersdk/model/CameraType;->onCameraCameraSDFull:Lcom/powervision/powersdk/model/CameraType;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, Lcom/powervision/powersdk/model/CameraType;->onCameraCameraSDErr:Lcom/powervision/powersdk/model/CameraType;

    const/16 v3, 0x18

    aput-object v2, v1, v3

    sget-object v2, Lcom/powervision/powersdk/model/CameraType;->onCameraCameraSDEmpty:Lcom/powervision/powersdk/model/CameraType;

    const/16 v3, 0x19

    aput-object v2, v1, v3

    sget-object v2, Lcom/powervision/powersdk/model/CameraType;->onCameraCameraRecSDFull:Lcom/powervision/powersdk/model/CameraType;

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    sget-object v2, Lcom/powervision/powersdk/model/CameraType;->onCameraCameraRecSDErr:Lcom/powervision/powersdk/model/CameraType;

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    sget-object v2, Lcom/powervision/powersdk/model/CameraType;->onCameraCameraRecSDEmpty:Lcom/powervision/powersdk/model/CameraType;

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    sget-object v2, Lcom/powervision/powersdk/model/CameraType;->onCameraCameraCmdChangeFlir:Lcom/powervision/powersdk/model/CameraType;

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    sget-object v2, Lcom/powervision/powersdk/model/CameraType;->onCameraCameraCmdChangeCapture:Lcom/powervision/powersdk/model/CameraType;

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    sget-object v2, Lcom/powervision/powersdk/model/CameraType;->onCameraCameraFlirSuccess:Lcom/powervision/powersdk/model/CameraType;

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    sget-object v2, Lcom/powervision/powersdk/model/CameraType;->onCameraCameraFlirFailed:Lcom/powervision/powersdk/model/CameraType;

    const/16 v3, 0x20

    aput-object v2, v1, v3

    sget-object v2, Lcom/powervision/powersdk/model/CameraType;->onCameraParamSetSuccess:Lcom/powervision/powersdk/model/CameraType;

    const/16 v3, 0x21

    aput-object v2, v1, v3

    sget-object v2, Lcom/powervision/powersdk/model/CameraType;->onCameraParamSetTimeout:Lcom/powervision/powersdk/model/CameraType;

    const/16 v3, 0x22

    aput-object v2, v1, v3

    sget-object v2, Lcom/powervision/powersdk/model/CameraType;->onCameraParamGetSuccess:Lcom/powervision/powersdk/model/CameraType;

    const/16 v3, 0x23

    aput-object v2, v1, v3

    const/16 v2, 0x24

    aput-object v0, v1, v2

    sput-object v1, Lcom/powervision/powersdk/model/CameraType;->$VALUES:[Lcom/powervision/powersdk/model/CameraType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Lcom/powervision/powersdk/model/CameraType;->cmdType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/powervision/powersdk/model/CameraType;
    .locals 1

    .line 7
    const-class v0, Lcom/powervision/powersdk/model/CameraType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/powervision/powersdk/model/CameraType;

    return-object p0
.end method

.method public static values()[Lcom/powervision/powersdk/model/CameraType;
    .locals 1

    .line 7
    sget-object v0, Lcom/powervision/powersdk/model/CameraType;->$VALUES:[Lcom/powervision/powersdk/model/CameraType;

    invoke-virtual {v0}, [Lcom/powervision/powersdk/model/CameraType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/powervision/powersdk/model/CameraType;

    return-object v0
.end method
