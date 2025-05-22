.class public Lcom/powervision/gcs/config/SonarDataHeadDefault;
.super Ljava/lang/Object;
.source "SonarDataHeadDefault.java"


# static fields
.field public static final back_TypeOfBatteryEnergy:C = '\u00b3'

.field public static final back_TypeOfConfirm:C = '\u00ff'

.field public static final back_TypeOfDeviceHardwareInfo:C = '\u00c1'

.field public static final back_TypeOfERR:C = '\u00ee'

.field public static final back_TypeOfImage:C = '\u00b4'

.field public static final back_TypeOfLight:C = '\u00fd'

.field public static final back_TypeOfMCURequestUPPack:C = '2'

.field public static final back_TypeOfMCURequestUPPackVerify:C = '4'

.field public static final back_TypeOfMCUUPPackSuccess:C = '6'

.field public static final back_TypeOfMCUUpNoticeCom:C = '1'

.field public static final back_TypeOfSoftVersion:C = '\u00c3'

.field public static final back_TypeOfTem:C = '\u00b1'

.field public static final back_TypeOfWifiRequestUPPack:C = '\"'

.field public static final back_TypeOfWifiRequestUPPackVerify:C = '$'

.field public static final back_TypeOfWifiUPPackSuccess:C = '&'

.field public static final back_TypeOfWifiUpNoticeCom:C = '!'

.field public static final back_TypeOfWifiVersion:C = '\u00c5'

.field public static final getSonar_mcu_state:C = '\u00b6'

.field private static final packHead:[B

.field public static final packHeadLenght:I = 0xb

.field public static final send_TypeOfCloaseDataStream:C = '\u0011'

.field public static final send_TypeOfDeviceHardwareInfo:C = '\u00c0'

.field public static final send_TypeOfGetMCUSoft:C = '\u00c2'

.field public static final send_TypeOfGetSonarPowerQuantity:C = '\u00b2'

.field public static final send_TypeOfGetSonarTem:C = '\u00b0'

.field public static final send_TypeOfGetWIFISoft:C = '\u00c4'

.field public static final send_TypeOfHeardPack:C = '\u0004'

.field public static final send_TypeOfMCURequestUPPackVerify:C = '5'

.field public static final send_TypeOfMCUUPPack:C = '3'

.field public static final send_TypeOfMCUUpNotice:C = '0'

.field public static final send_TypeOfOpenDataStream:C = '\u0010'

.field public static final send_TypeOfWifiRequestUPPackVerify:C = '%'

.field public static final send_TypeOfWifiUPPack:C = '#'

.field public static final send_TypeOfWifiUpNotice:C = ' '

.field public static final send_TypeofCloseLight:C = '\u00a8'

.field public static final send_TypeofOpenLight:C = '\u0008'

.field public static final sonar_mcu_state:C = '\u00b5'

.field public static final wholePackHead:I = 0x1ff


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [B

    .line 10
    fill-array-data v0, :array_0

    sput-object v0, Lcom/powervision/gcs/config/SonarDataHeadDefault;->packHead:[B

    return-void

    :array_0
    .array-data 1
        -0x56t
        0x55t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSendToSonarCMDPackHead(B)[B
    .locals 2

    .line 62
    sget-object v0, Lcom/powervision/gcs/config/SonarDataHeadDefault;->packHead:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/16 v1, 0x8

    .line 63
    aput-byte p0, v0, v1

    return-object v0
.end method
