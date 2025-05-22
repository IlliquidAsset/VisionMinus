.class public final enum Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;
.super Ljava/lang/Enum;
.source "RockerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/handheld/ui/views/RockerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallBackMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;

.field public static final enum CALL_BACK_MODE_MOVE:Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;

.field public static final enum CALL_BACK_MODE_STATE_CHANGE:Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;

.field public static final enum CALL_BACK_MODE_STATE_DISTANCE_CHANGE:Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 509
    new-instance v0, Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;

    const-string v1, "CALL_BACK_MODE_MOVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;->CALL_BACK_MODE_MOVE:Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;

    .line 511
    new-instance v0, Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;

    const-string v1, "CALL_BACK_MODE_STATE_CHANGE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;->CALL_BACK_MODE_STATE_CHANGE:Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;

    .line 513
    new-instance v0, Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;

    const-string v1, "CALL_BACK_MODE_STATE_DISTANCE_CHANGE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;->CALL_BACK_MODE_STATE_DISTANCE_CHANGE:Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;

    .line 507
    sget-object v5, Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;->CALL_BACK_MODE_MOVE:Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;

    aput-object v5, v1, v2

    sget-object v2, Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;->CALL_BACK_MODE_STATE_CHANGE:Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;->$VALUES:[Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 507
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;
    .locals 1

    .line 507
    const-class v0, Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;

    return-object p0
.end method

.method public static values()[Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;
    .locals 1

    .line 507
    sget-object v0, Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;->$VALUES:[Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;

    invoke-virtual {v0}, [Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/powervision/handheld/ui/views/RockerView$CallBackMode;

    return-object v0
.end method
