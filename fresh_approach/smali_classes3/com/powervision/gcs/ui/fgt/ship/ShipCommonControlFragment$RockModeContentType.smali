.class final enum Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;
.super Ljava/lang/Enum;
.source "ShipCommonControlFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RockModeContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;

.field public static final enum CUSTOM:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;

.field public static final enum HIDE:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;

.field public static final enum NORMAL:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 695
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;->NORMAL:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;

    .line 696
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;

    const-string v1, "CUSTOM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;->CUSTOM:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;

    .line 697
    new-instance v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;

    const-string v1, "HIDE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;->HIDE:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;

    .line 694
    sget-object v5, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;->NORMAL:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;->CUSTOM:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;->$VALUES:[Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 694
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;
    .locals 1

    .line 694
    const-class v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;

    return-object p0
.end method

.method public static values()[Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;
    .locals 1

    .line 694
    sget-object v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;->$VALUES:[Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;

    invoke-virtual {v0}, [Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeContentType;

    return-object v0
.end method
