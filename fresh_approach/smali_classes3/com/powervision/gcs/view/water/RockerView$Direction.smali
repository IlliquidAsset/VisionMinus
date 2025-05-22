.class public final enum Lcom/powervision/gcs/view/water/RockerView$Direction;
.super Ljava/lang/Enum;
.source "RockerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/water/RockerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/powervision/gcs/view/water/RockerView$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/powervision/gcs/view/water/RockerView$Direction;

.field public static final enum DIRECTION_CENTER:Lcom/powervision/gcs/view/water/RockerView$Direction;

.field public static final enum DIRECTION_DOWN:Lcom/powervision/gcs/view/water/RockerView$Direction;

.field public static final enum DIRECTION_DOWN_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

.field public static final enum DIRECTION_DOWN_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

.field public static final enum DIRECTION_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

.field public static final enum DIRECTION_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

.field public static final enum DIRECTION_UP:Lcom/powervision/gcs/view/water/RockerView$Direction;

.field public static final enum DIRECTION_UP_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

.field public static final enum DIRECTION_UP_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 699
    new-instance v0, Lcom/powervision/gcs/view/water/RockerView$Direction;

    const-string v1, "DIRECTION_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/powervision/gcs/view/water/RockerView$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    .line 700
    new-instance v0, Lcom/powervision/gcs/view/water/RockerView$Direction;

    const-string v1, "DIRECTION_RIGHT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/powervision/gcs/view/water/RockerView$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    .line 701
    new-instance v0, Lcom/powervision/gcs/view/water/RockerView$Direction;

    const-string v1, "DIRECTION_UP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/powervision/gcs/view/water/RockerView$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_UP:Lcom/powervision/gcs/view/water/RockerView$Direction;

    .line 702
    new-instance v0, Lcom/powervision/gcs/view/water/RockerView$Direction;

    const-string v1, "DIRECTION_DOWN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/powervision/gcs/view/water/RockerView$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_DOWN:Lcom/powervision/gcs/view/water/RockerView$Direction;

    .line 703
    new-instance v0, Lcom/powervision/gcs/view/water/RockerView$Direction;

    const-string v1, "DIRECTION_UP_LEFT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/powervision/gcs/view/water/RockerView$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_UP_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    .line 704
    new-instance v0, Lcom/powervision/gcs/view/water/RockerView$Direction;

    const-string v1, "DIRECTION_UP_RIGHT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/powervision/gcs/view/water/RockerView$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_UP_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    .line 705
    new-instance v0, Lcom/powervision/gcs/view/water/RockerView$Direction;

    const-string v1, "DIRECTION_DOWN_LEFT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/powervision/gcs/view/water/RockerView$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_DOWN_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    .line 706
    new-instance v0, Lcom/powervision/gcs/view/water/RockerView$Direction;

    const-string v1, "DIRECTION_DOWN_RIGHT"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/powervision/gcs/view/water/RockerView$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_DOWN_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    .line 707
    new-instance v0, Lcom/powervision/gcs/view/water/RockerView$Direction;

    const-string v1, "DIRECTION_CENTER"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/powervision/gcs/view/water/RockerView$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_CENTER:Lcom/powervision/gcs/view/water/RockerView$Direction;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/powervision/gcs/view/water/RockerView$Direction;

    .line 698
    sget-object v11, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    aput-object v11, v1, v2

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    aput-object v2, v1, v3

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_UP:Lcom/powervision/gcs/view/water/RockerView$Direction;

    aput-object v2, v1, v4

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_DOWN:Lcom/powervision/gcs/view/water/RockerView$Direction;

    aput-object v2, v1, v5

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_UP_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    aput-object v2, v1, v6

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_UP_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    aput-object v2, v1, v7

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_DOWN_LEFT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    aput-object v2, v1, v8

    sget-object v2, Lcom/powervision/gcs/view/water/RockerView$Direction;->DIRECTION_DOWN_RIGHT:Lcom/powervision/gcs/view/water/RockerView$Direction;

    aput-object v2, v1, v9

    aput-object v0, v1, v10

    sput-object v1, Lcom/powervision/gcs/view/water/RockerView$Direction;->$VALUES:[Lcom/powervision/gcs/view/water/RockerView$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 698
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/powervision/gcs/view/water/RockerView$Direction;
    .locals 1

    .line 698
    const-class v0, Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/powervision/gcs/view/water/RockerView$Direction;

    return-object p0
.end method

.method public static values()[Lcom/powervision/gcs/view/water/RockerView$Direction;
    .locals 1

    .line 698
    sget-object v0, Lcom/powervision/gcs/view/water/RockerView$Direction;->$VALUES:[Lcom/powervision/gcs/view/water/RockerView$Direction;

    invoke-virtual {v0}, [Lcom/powervision/gcs/view/water/RockerView$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/powervision/gcs/view/water/RockerView$Direction;

    return-object v0
.end method
