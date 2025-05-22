.class public final enum Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;
.super Ljava/lang/Enum;
.source "DeviceTypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

.field public static final enum ANDROIDID:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

.field public static final enum DEFAULT:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

.field public static final enum IDFA:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

.field public static final enum IMEI:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

.field public static final enum MAC:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

.field public static final enum OAID:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

.field public static final enum SERIALNO:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;


# instance fields
.field private description:Ljava/lang/String;

.field private deviceIdType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 8
    new-instance v0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    const-string v1, "IMEI"

    const/4 v2, 0x0

    const-string v3, "imei"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->IMEI:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 9
    new-instance v0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    const-string v1, "OAID"

    const/4 v3, 0x1

    const-string v4, "oaid"

    invoke-direct {v0, v1, v3, v4, v4}, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->OAID:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 10
    new-instance v0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    const-string v1, "ANDROIDID"

    const/4 v4, 0x2

    const-string v5, "android_id"

    invoke-direct {v0, v1, v4, v5, v5}, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->ANDROIDID:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 11
    new-instance v0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    const-string v1, "MAC"

    const/4 v5, 0x3

    const-string v6, "mac"

    invoke-direct {v0, v1, v5, v6, v6}, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->MAC:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 12
    new-instance v0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    const-string v1, "SERIALNO"

    const/4 v6, 0x4

    const-string v7, "serial_no"

    invoke-direct {v0, v1, v6, v7, v7}, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->SERIALNO:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 13
    new-instance v0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    const-string v1, "IDFA"

    const/4 v7, 0x5

    const-string v8, "idfa"

    invoke-direct {v0, v1, v7, v8, v8}, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->IDFA:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 14
    new-instance v0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    const-string v1, "DEFAULT"

    const/4 v8, 0x6

    const-string v9, "null"

    invoke-direct {v0, v1, v8, v9, v9}, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->DEFAULT:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 6
    sget-object v9, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->IMEI:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    aput-object v9, v1, v2

    sget-object v2, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->OAID:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    aput-object v2, v1, v3

    sget-object v2, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->ANDROIDID:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    aput-object v2, v1, v4

    sget-object v2, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->MAC:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    aput-object v2, v1, v5

    sget-object v2, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->SERIALNO:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    aput-object v2, v1, v6

    sget-object v2, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->IDFA:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->$VALUES:[Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->deviceIdType:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;
    .locals 1

    .line 6
    const-class v0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    return-object p0
.end method

.method public static values()[Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;
    .locals 1

    .line 6
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->$VALUES:[Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    invoke-virtual {v0}, [Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceIdType()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->deviceIdType:Ljava/lang/String;

    return-object v0
.end method
