.class public final enum Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;
.super Ljava/lang/Enum;
.source "ShipRockerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/ship/ShipRockerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DirectionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

.field public static final enum DIRECTION_2_HORIZONTAL:Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

.field public static final enum DIRECTION_2_VERTICAL:Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

.field public static final enum DIRECTION_4_ROTATE_0:Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

.field public static final enum DIRECTION_4_ROTATE_45:Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

.field public static final enum DIRECTION_8:Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 958
    new-instance v0, Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    const-string v1, "DIRECTION_2_HORIZONTAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;->DIRECTION_2_HORIZONTAL:Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    .line 959
    new-instance v0, Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    const-string v1, "DIRECTION_2_VERTICAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;->DIRECTION_2_VERTICAL:Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    .line 960
    new-instance v0, Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    const-string v1, "DIRECTION_4_ROTATE_0"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;->DIRECTION_4_ROTATE_0:Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    .line 961
    new-instance v0, Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    const-string v1, "DIRECTION_4_ROTATE_45"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;->DIRECTION_4_ROTATE_45:Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    .line 962
    new-instance v0, Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    const-string v1, "DIRECTION_8"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;->DIRECTION_8:Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    .line 957
    sget-object v7, Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;->DIRECTION_2_HORIZONTAL:Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    aput-object v7, v1, v2

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;->DIRECTION_2_VERTICAL:Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;->DIRECTION_4_ROTATE_0:Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    aput-object v2, v1, v4

    sget-object v2, Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;->DIRECTION_4_ROTATE_45:Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;->$VALUES:[Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 957
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;
    .locals 1

    .line 957
    const-class v0, Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    return-object p0
.end method

.method public static values()[Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;
    .locals 1

    .line 957
    sget-object v0, Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;->$VALUES:[Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    invoke-virtual {v0}, [Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/powervision/gcs/view/ship/ShipRockerView$DirectionMode;

    return-object v0
.end method
