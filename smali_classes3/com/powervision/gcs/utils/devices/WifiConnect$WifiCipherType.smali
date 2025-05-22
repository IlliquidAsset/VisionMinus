.class public final enum Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;
.super Ljava/lang/Enum;
.source "WifiConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/utils/devices/WifiConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WifiCipherType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;

.field public static final enum WIFICIPHER_INVALID:Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;

.field public static final enum WIFICIPHER_NOPASS:Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;

.field public static final enum WIFICIPHER_WEP:Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;

.field public static final enum WIFICIPHER_WPA:Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 19
    new-instance v0, Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;

    const-string v1, "WIFICIPHER_WEP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;->WIFICIPHER_WEP:Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;

    new-instance v0, Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;

    const-string v1, "WIFICIPHER_WPA"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;->WIFICIPHER_WPA:Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;

    new-instance v0, Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;

    const-string v1, "WIFICIPHER_NOPASS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;->WIFICIPHER_NOPASS:Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;

    new-instance v0, Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;

    const-string v1, "WIFICIPHER_INVALID"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;->WIFICIPHER_INVALID:Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;

    .line 18
    sget-object v6, Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;->WIFICIPHER_WEP:Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;

    aput-object v6, v1, v2

    sget-object v2, Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;->WIFICIPHER_WPA:Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;->WIFICIPHER_NOPASS:Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;->$VALUES:[Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;
    .locals 1

    .line 18
    const-class v0, Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;

    return-object p0
.end method

.method public static values()[Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;
    .locals 1

    .line 18
    sget-object v0, Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;->$VALUES:[Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;

    invoke-virtual {v0}, [Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/powervision/gcs/utils/devices/WifiConnect$WifiCipherType;

    return-object v0
.end method
