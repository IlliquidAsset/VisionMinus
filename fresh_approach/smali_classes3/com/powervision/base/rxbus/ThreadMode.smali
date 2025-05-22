.class public final enum Lcom/powervision/base/rxbus/ThreadMode;
.super Ljava/lang/Enum;
.source "ThreadMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/powervision/base/rxbus/ThreadMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/powervision/base/rxbus/ThreadMode;

.field public static final enum CURRENT_THREAD:Lcom/powervision/base/rxbus/ThreadMode;

.field public static final enum MAIN:Lcom/powervision/base/rxbus/ThreadMode;

.field public static final enum NEW_THREAD:Lcom/powervision/base/rxbus/ThreadMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 10
    new-instance v0, Lcom/powervision/base/rxbus/ThreadMode;

    const-string v1, "CURRENT_THREAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/powervision/base/rxbus/ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/base/rxbus/ThreadMode;->CURRENT_THREAD:Lcom/powervision/base/rxbus/ThreadMode;

    .line 15
    new-instance v0, Lcom/powervision/base/rxbus/ThreadMode;

    const-string v1, "MAIN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/powervision/base/rxbus/ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/base/rxbus/ThreadMode;->MAIN:Lcom/powervision/base/rxbus/ThreadMode;

    .line 21
    new-instance v0, Lcom/powervision/base/rxbus/ThreadMode;

    const-string v1, "NEW_THREAD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/powervision/base/rxbus/ThreadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/powervision/base/rxbus/ThreadMode;->NEW_THREAD:Lcom/powervision/base/rxbus/ThreadMode;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/powervision/base/rxbus/ThreadMode;

    .line 6
    sget-object v5, Lcom/powervision/base/rxbus/ThreadMode;->CURRENT_THREAD:Lcom/powervision/base/rxbus/ThreadMode;

    aput-object v5, v1, v2

    sget-object v2, Lcom/powervision/base/rxbus/ThreadMode;->MAIN:Lcom/powervision/base/rxbus/ThreadMode;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/powervision/base/rxbus/ThreadMode;->$VALUES:[Lcom/powervision/base/rxbus/ThreadMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/powervision/base/rxbus/ThreadMode;
    .locals 1

    .line 6
    const-class v0, Lcom/powervision/base/rxbus/ThreadMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/powervision/base/rxbus/ThreadMode;

    return-object p0
.end method

.method public static values()[Lcom/powervision/base/rxbus/ThreadMode;
    .locals 1

    .line 6
    sget-object v0, Lcom/powervision/base/rxbus/ThreadMode;->$VALUES:[Lcom/powervision/base/rxbus/ThreadMode;

    invoke-virtual {v0}, [Lcom/powervision/base/rxbus/ThreadMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/powervision/base/rxbus/ThreadMode;

    return-object v0
.end method
