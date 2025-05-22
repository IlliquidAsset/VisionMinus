.class public final enum Lcom/mob/tools/RxMob$Thread;
.super Ljava/lang/Enum;
.source "RxMob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/RxMob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Thread"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mob/tools/RxMob$Thread;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mob/tools/RxMob$Thread;

.field public static final enum IMMEDIATE:Lcom/mob/tools/RxMob$Thread;

.field public static final enum NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

.field public static final enum UI_THREAD:Lcom/mob/tools/RxMob$Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 151
    new-instance v0, Lcom/mob/tools/RxMob$Thread;

    const-string v1, "IMMEDIATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/RxMob$Thread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mob/tools/RxMob$Thread;->IMMEDIATE:Lcom/mob/tools/RxMob$Thread;

    .line 152
    new-instance v0, Lcom/mob/tools/RxMob$Thread;

    const-string v1, "UI_THREAD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/RxMob$Thread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mob/tools/RxMob$Thread;->UI_THREAD:Lcom/mob/tools/RxMob$Thread;

    .line 153
    new-instance v0, Lcom/mob/tools/RxMob$Thread;

    const-string v1, "NEW_THREAD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mob/tools/RxMob$Thread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mob/tools/RxMob$Thread;->NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/mob/tools/RxMob$Thread;

    .line 150
    sget-object v5, Lcom/mob/tools/RxMob$Thread;->IMMEDIATE:Lcom/mob/tools/RxMob$Thread;

    aput-object v5, v1, v2

    sget-object v2, Lcom/mob/tools/RxMob$Thread;->UI_THREAD:Lcom/mob/tools/RxMob$Thread;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/mob/tools/RxMob$Thread;->$VALUES:[Lcom/mob/tools/RxMob$Thread;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 150
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mob/tools/RxMob$Thread;
    .locals 1

    .line 150
    const-class v0, Lcom/mob/tools/RxMob$Thread;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mob/tools/RxMob$Thread;

    return-object p0
.end method

.method public static values()[Lcom/mob/tools/RxMob$Thread;
    .locals 1

    .line 150
    sget-object v0, Lcom/mob/tools/RxMob$Thread;->$VALUES:[Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {v0}, [Lcom/mob/tools/RxMob$Thread;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mob/tools/RxMob$Thread;

    return-object v0
.end method
