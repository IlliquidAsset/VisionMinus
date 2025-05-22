.class final enum Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;
.super Ljava/lang/Enum;
.source "FirmwareUpdateRemindDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ViewState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;

.field public static final enum CONNECT_FAILED:Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;

.field public static final enum DEFAUL:Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;

.field public static final enum FORCED_TO_UPGRADE:Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;

.field public static final enum LOW_POWER:Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 44
    new-instance v0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;

    const-string v1, "DEFAUL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;->DEFAUL:Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;

    .line 46
    new-instance v0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;

    const-string v1, "FORCED_TO_UPGRADE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;->FORCED_TO_UPGRADE:Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;

    .line 48
    new-instance v0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;

    const-string v1, "CONNECT_FAILED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;->CONNECT_FAILED:Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;

    .line 50
    new-instance v0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;

    const-string v1, "LOW_POWER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;->LOW_POWER:Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;

    .line 42
    sget-object v6, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;->DEFAUL:Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;

    aput-object v6, v1, v2

    sget-object v2, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;->FORCED_TO_UPGRADE:Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;->CONNECT_FAILED:Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;->$VALUES:[Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;
    .locals 1

    .line 42
    const-class v0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;

    return-object p0
.end method

.method public static values()[Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;
    .locals 1

    .line 42
    sget-object v0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;->$VALUES:[Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;

    invoke-virtual {v0}, [Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog$ViewState;

    return-object v0
.end method
