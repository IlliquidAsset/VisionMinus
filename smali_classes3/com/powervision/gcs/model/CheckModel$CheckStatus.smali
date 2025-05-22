.class public final enum Lcom/powervision/gcs/model/CheckModel$CheckStatus;
.super Ljava/lang/Enum;
.source "CheckModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/model/CheckModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CheckStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/powervision/gcs/model/CheckModel$CheckStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/powervision/gcs/model/CheckModel$CheckStatus;

.field public static final enum CHECK:Lcom/powervision/gcs/model/CheckModel$CheckStatus;

.field public static final enum FIAl:Lcom/powervision/gcs/model/CheckModel$CheckStatus;

.field public static final enum SUCCEED:Lcom/powervision/gcs/model/CheckModel$CheckStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 39
    new-instance v0, Lcom/powervision/gcs/model/CheckModel$CheckStatus;

    const-string v1, "SUCCEED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/powervision/gcs/model/CheckModel$CheckStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/model/CheckModel$CheckStatus;->SUCCEED:Lcom/powervision/gcs/model/CheckModel$CheckStatus;

    new-instance v0, Lcom/powervision/gcs/model/CheckModel$CheckStatus;

    const-string v1, "FIAl"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/powervision/gcs/model/CheckModel$CheckStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/model/CheckModel$CheckStatus;->FIAl:Lcom/powervision/gcs/model/CheckModel$CheckStatus;

    new-instance v0, Lcom/powervision/gcs/model/CheckModel$CheckStatus;

    const-string v1, "CHECK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/powervision/gcs/model/CheckModel$CheckStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/model/CheckModel$CheckStatus;->CHECK:Lcom/powervision/gcs/model/CheckModel$CheckStatus;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/powervision/gcs/model/CheckModel$CheckStatus;

    .line 38
    sget-object v5, Lcom/powervision/gcs/model/CheckModel$CheckStatus;->SUCCEED:Lcom/powervision/gcs/model/CheckModel$CheckStatus;

    aput-object v5, v1, v2

    sget-object v2, Lcom/powervision/gcs/model/CheckModel$CheckStatus;->FIAl:Lcom/powervision/gcs/model/CheckModel$CheckStatus;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/powervision/gcs/model/CheckModel$CheckStatus;->$VALUES:[Lcom/powervision/gcs/model/CheckModel$CheckStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/powervision/gcs/model/CheckModel$CheckStatus;
    .locals 1

    .line 38
    const-class v0, Lcom/powervision/gcs/model/CheckModel$CheckStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/powervision/gcs/model/CheckModel$CheckStatus;

    return-object p0
.end method

.method public static values()[Lcom/powervision/gcs/model/CheckModel$CheckStatus;
    .locals 1

    .line 38
    sget-object v0, Lcom/powervision/gcs/model/CheckModel$CheckStatus;->$VALUES:[Lcom/powervision/gcs/model/CheckModel$CheckStatus;

    invoke-virtual {v0}, [Lcom/powervision/gcs/model/CheckModel$CheckStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/powervision/gcs/model/CheckModel$CheckStatus;

    return-object v0
.end method
