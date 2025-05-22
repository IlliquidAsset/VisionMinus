.class public final enum Lcom/powervision/base/views/loopview/LoopView$ACTION;
.super Ljava/lang/Enum;
.source "LoopView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/views/loopview/LoopView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/powervision/base/views/loopview/LoopView$ACTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/powervision/base/views/loopview/LoopView$ACTION;

.field public static final enum CLICK:Lcom/powervision/base/views/loopview/LoopView$ACTION;

.field public static final enum DRAG:Lcom/powervision/base/views/loopview/LoopView$ACTION;

.field public static final enum FLING:Lcom/powervision/base/views/loopview/LoopView$ACTION;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 56
    new-instance v0, Lcom/powervision/base/views/loopview/LoopView$ACTION;

    const-string v1, "CLICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/powervision/base/views/loopview/LoopView$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/base/views/loopview/LoopView$ACTION;->CLICK:Lcom/powervision/base/views/loopview/LoopView$ACTION;

    new-instance v0, Lcom/powervision/base/views/loopview/LoopView$ACTION;

    const-string v1, "FLING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/powervision/base/views/loopview/LoopView$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/base/views/loopview/LoopView$ACTION;->FLING:Lcom/powervision/base/views/loopview/LoopView$ACTION;

    new-instance v0, Lcom/powervision/base/views/loopview/LoopView$ACTION;

    const-string v1, "DRAG"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/powervision/base/views/loopview/LoopView$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/base/views/loopview/LoopView$ACTION;->DRAG:Lcom/powervision/base/views/loopview/LoopView$ACTION;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/powervision/base/views/loopview/LoopView$ACTION;

    .line 55
    sget-object v5, Lcom/powervision/base/views/loopview/LoopView$ACTION;->CLICK:Lcom/powervision/base/views/loopview/LoopView$ACTION;

    aput-object v5, v1, v2

    sget-object v2, Lcom/powervision/base/views/loopview/LoopView$ACTION;->FLING:Lcom/powervision/base/views/loopview/LoopView$ACTION;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/powervision/base/views/loopview/LoopView$ACTION;->$VALUES:[Lcom/powervision/base/views/loopview/LoopView$ACTION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/powervision/base/views/loopview/LoopView$ACTION;
    .locals 1

    .line 55
    const-class v0, Lcom/powervision/base/views/loopview/LoopView$ACTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/powervision/base/views/loopview/LoopView$ACTION;

    return-object p0
.end method

.method public static values()[Lcom/powervision/base/views/loopview/LoopView$ACTION;
    .locals 1

    .line 55
    sget-object v0, Lcom/powervision/base/views/loopview/LoopView$ACTION;->$VALUES:[Lcom/powervision/base/views/loopview/LoopView$ACTION;

    invoke-virtual {v0}, [Lcom/powervision/base/views/loopview/LoopView$ACTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/powervision/base/views/loopview/LoopView$ACTION;

    return-object v0
.end method
